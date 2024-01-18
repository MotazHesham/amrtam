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
                                <li><a href="index.html">الرئيسية /</a></li>
                                <li class="active" aria-current="page">مستشارينا </li>
                            </ul>
                            <h2 class="page-title"> مستشارينا</h2>
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
                                <h2 class="sect-title mb-35">الانضمام كمستشار</h2>
                            </div>
                            <form action="{{ route('frontend.joining')}}" class="row contact-form" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mb-20">
                                        <input type="text" placeholder="الاسم بالكامل" name="name" required>
                                    </div>
                                </div>


                                <div class="col-lg-6 col-md-6 mb-20">
                                    <div class="input-box mb-20">
                                        <input type="text" placeholder=" التخصص " name="specialization" required>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mb-20">
                                        <input type="text" placeholder=" الرخصة " name="license" required>
                                    </div>
                                </div>


                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mail-input mb-20">
                                        <input type="email" placeholder="البريد الالكتروني" name="email" required>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mb-20">
                                        <input type="text" placeholder=" رقم الهوية" name="nationalid" required>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mail-input mb-20">
                                        <input type="text" placeholder="رقم الجوال " name="phone_number" required>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mb-20">
                                        <input type="text" placeholder=" تاريخ الميلاد " name="dob" required>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box sub-input">
                                        <select name="gender" class="job-select"  required>
                                            @foreach(\App\Models\Joining::GENDER_SELECT as $key => $label)
                                                <option value="{{ $key }}"> {{ $label }}</option> 
                                            @endforeach
                                        </select>
                                    </div> 
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mb-20">
                                        <input type="text" placeholder=" الدولة " name="country" required>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mb-20">
                                        <input type="text" placeholder=" المدينة " name="city" required>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <button class="form-btn form-btn2">إرسال البيانات</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>
@endsection 