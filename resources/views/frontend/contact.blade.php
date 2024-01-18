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
                                <li class="active" aria-current="page"> امر تم </li>
                            </ul>
                            <h2 class="page-title"> تواصل معنا</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--page-title-area end-->
        <!--contact-area start-->
        <section class="contact-area pt-105 pt-md-60 pb-md-30 pt-xs-60 pb-xs-30">
            <div class="container">
                <div class="contact-border pb-90 pb-md-30 pb-xs-30">
                    <div class="row align-items-center">

                        <div class="col-lg-3 col-md-12"></div>
                        <div class="col-lg-6 col-md-12">
                            <div class="contact-input-wrapper mb-30">
                                <div class="section-title mb-25">
                                    <h6 class="semi-title mb-10">أرسل لنا طلبك</h6>
                                    <h2 class="sect-title mb-35">تواصل معنا</h2>
                                </div>
                                <form class="row contact-form" action="{{ route('frontend.contact_us') }}" method="POST">
                                    @csrf
                                    <div class="col-lg-6 col-md-6">
                                        <div class="input-box mb-20">
                                            <input type="text" placeholder="الاسم بالكامل" name="name" required>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12">
                                        <div class="input-box mail-input mb-20">
                                            <input type="email" placeholder="البريد الإلكتروني" name="email" required>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="input-box mb-20">
                                            <input type="text" placeholder="رقم الهاتف" name="phone" required>
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md-12 mb-20">
                                        <div class="input-box sub-input">
                                            <select name="c_service_id" class="job-select">
                                                @foreach($cservices as $raw)
                                                    <option value="{{ $raw->id }}">{{ $raw->name }}</option> 
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input-box text-input mb-30">
                                            <textarea name="message" cols="30" rows="10" placeholder="الرسالة" name="message" required></textarea>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <button class="form-btn">إرسال</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </section>
        <!--contact-area end-->
        <!--map-area start-->
        <section class="contact-map-area">
            <div class="container-fluid px-0">
                <div class="row gx-0">
                    <div class="col-12">
                        <div class="map-area">
                            <iframe
                                src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14586.16663307975!2d90.3865062!3d23.941279099999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1641645837442!5m2!1sen!2sbd"
                                style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--map-area end-->


    </main>
@endsection
