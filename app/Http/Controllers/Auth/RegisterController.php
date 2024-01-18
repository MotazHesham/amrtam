<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\RequestService;
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name'     => ['required', 'string', 'max:255'],
            'email'    => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'service_id' => ['required'],
            'phone_number' => ['required'],
            'client_type' => ['required'],
            'national_num' => ['nullable'],
            'commerical_record' => ['nullable'],
            'company_name' => ['nullable'],
            'district' => ['nullable'],
            'address' => ['nullable'],
            'nationality' => ['nullable'],
            'gender' => ['nullable'],
            'working_field' => ['nullable'],
            'foreign_employees' => ['nullable'],
            'saudi_employees' => ['nullable'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    { 
        $user = User::create([
            'name'     => $data['name'] ?? null,
            'email'    => $data['email'] ?? null,
            'phone_number'    => $data['phone_number'] ?? null,
            'password' => Hash::make($data['password']), 
            'user_type' => 'client', 
            'client_type' => $data['client_type'] ?? null, 
            'national_num' => $data['national_num'] ?? null, 
            'company_name' => $data['company_name'] ?? null,
            'district' => $data['district'] ?? null,
            'city' => $data['city'] ?? null,
            'address' => $data['address'] ?? null,
            'nationality' => $data['nationality'] ?? null,
            'gender' => $data['gender'] ?? null,
            'working_field' => $data['working_field'] ?? null,
            'foreign_employees' => $data['foreign_employees'] ?? null,
            'saudi_employees' => $data['saudi_employees'] ?? null,
        ]);

        if (array_key_exists('commerical_record',$data)) {
            $user->addMedia($data['commerical_record'])->toMediaCollection('commerical_record');
        }
        $request_service = RequestService::create([ 
            'user_id' => $user->id,
            'service_id' => $data['service_id'], 
            'status' => 'pending',
        ]);
        return $user;
    }
}
