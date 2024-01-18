<?php

namespace App\Http\Requests;

use App\Models\CService;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class UpdateCServiceRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('c_service_edit');
    }

    public function rules()
    {
        return [
            'name' => [
                'string',
                'required',
            ],
        ];
    }
}
