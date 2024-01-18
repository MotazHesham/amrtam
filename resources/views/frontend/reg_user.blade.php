@extends('layouts.frontend')
@section('content')
    <main>
        <!--page-title-area start-->
        <section class="page-title-area" style="background-image: url('{{asset('frontend/assets/img/page-title/page-title-bg1.jpg')}}');">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title-wrapper pt-30 pt-lg-40 pt-md-10 pt-xs-10">
                            <ul class="breadcrumb">
                                <li><a href="{{ route('frontend.home') }}">الرئيسية /</a></li>
                                <li class="active" aria-current="page">تسجيل فرد </li>
                            </ul>
                            <h2 class="page-title"> تسجيل فرد </h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--page-title-area end-->
        <!--team-masonry-area start-->


        <section class="contact-area contact-borders pt-120 pb-90 pt-md-60 pb-md-30 pt-xs-60 pb-xs-30">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="career-img-wrapper pr-60 mb-30">
                            <img class="w-100" src="{{ asset('frontend/assets/img/cta/advisor_pic.jpg') }}" alt="Img">

                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="contact-input-wrapper mb-30">
                            <div class="section-title mb-25">
                                <h6 class="semi-title mb-15">من فضلك املئ البيانات التالية</h6>
                                <h2 class="sect-title mb-35">الانضمام كفرد</h2>
                            </div>
                            @if ($errors->count() > 0)
                                <div class="alert alert-danger">
                                    <ul class="list-unstyled">
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                            <form class="row contact-form" method="POST" action="{{ route('register') }}" enctype="multipart/form-data">
                                @csrf 
                                <input type="hidden" name="client_type" value="individual">

                                <div class="col-lg-12 col-md-12">
                                    <div class="input-group mb-4"> 
                                        <div style="width: 100%">
                                            <select class="form-control select2 {{ $errors->has('service') ? 'is-invalid' : '' }}"
                                                name="service_id" id="service_id" required>
                                                @foreach (\App\Models\Service::pluck('name', 'id')->prepend('اختر الخدمة', '') as $id => $entry)
                                                    <option value="{{ $id }}"
                                                        {{ old('service_id') == $id ? 'selected' : '' }}>{{ $entry }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                        @if ($errors->has('service'))
                                            <div class="invalid-feedback">
                                                {{ $errors->first('service') }}
                                            </div>
                                        @endif
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mb-20">
                                        <input type="text" placeholder="الاسم بالكامل" name="name" value="{{ old('name', null) }}" required>
                                        @if ($errors->has('name'))
                                            <div class="invalid-feedback">
                                                {{ $errors->first('name') }}
                                            </div>
                                        @endif
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mb-20">
                                        <input type="text" placeholder=" الجوال " name="phone_number" value="{{ old('phone_number', null) }}" required>
                                        @if ($errors->has('phone_number'))
                                            <div class="invalid-feedback">
                                                {{ $errors->first('phone_number') }}
                                            </div>
                                        @endif
                                    </div>
                                </div>



                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mail-input mb-20">
                                        <input type="text" placeholder="البريد الالكتروني" name="email" value="{{ old('email', null) }}" required>
                                        @if ($errors->has('email'))
                                            <div class="invalid-feedback">
                                                {{ $errors->first('email') }}
                                            </div>
                                        @endif
                                    </div>
                                </div> 

                                <div class="col-lg-6 col-md-6 mb-20">
                                    <div class="input-box sub-input">  
                                        <select class="job-select {{ $errors->has('gender') ? 'is-invalid' : '' }}"
                                            name="gender" id="gender"  required> 
                                            @foreach (\App\Models\User::GENDER_SELECT as $key => $label)
                                                <option value="{{ $key }}"> {{ $label }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mb-20">
                                        <input type="password" placeholder=" كلمة المرور " name="password" required>
                                        @if ($errors->has('password'))
                                            <div class="invalid-feedback">
                                                {{ $errors->first('password') }}
                                            </div>
                                        @endif
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mb-20">
                                        <input type="password" placeholder=" تأكيد كلمة المرور " name="password_confirmation" required>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mb-20">
                                        <input type="text" placeholder=" الحي " name="district" value="{{ old('district', null) }}" required>
                                        @if ($errors->has('district'))
                                            <div class="invalid-feedback">
                                                {{ $errors->first('district') }}
                                            </div>
                                        @endif
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mb-20">
                                        <input type="text" placeholder=" المدينة " name="city" value="{{ old('city', null) }}" required>
                                        @if ($errors->has('city'))
                                            <div class="invalid-feedback">
                                                {{ $errors->first('city') }}
                                            </div>
                                        @endif
                                    </div>
                                </div>


                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mail-input mb-20">
                                        <input type="text" placeholder="  العنوان الوطني " name="address" required value="{{ old('address', null) }}">
                                        @if ($errors->has('address'))
                                            <div class="invalid-feedback">
                                                {{ $errors->first('address') }}
                                            </div>
                                        @endif
                                    </div>
                                </div> 

                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mail-input mb-20">
                                        <input type="text" placeholder=" الجنسية " name="nationality" required value="{{ old('nationality', null) }}">
                                        @if ($errors->has('nationality'))
                                            <div class="invalid-feedback">
                                                {{ $errors->first('nationality') }}
                                            </div>
                                        @endif
                                    </div>
                                </div>  
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mail-input mb-20">
                                        <input type="text" placeholder=" رقم الهوية " name="national_num" required value="{{ old('national_num', null) }}">
                                        @if ($errors->has('national_num'))
                                            <div class="invalid-feedback">
                                                {{ $errors->first('national_num') }}
                                            </div>
                                        @endif
                                    </div>
                                </div>  

                                <div class="col-12">
                                    <button class="form-btn form-btn2" >تسجيل </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>
@endsection
