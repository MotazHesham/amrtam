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
                                <li class="active" aria-current="page">عن امر تم </li>
                            </ul>
                            <h2 class="page-title"> عن امر تم</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--page-title-area end-->
        <!--about-us-area start-->
        <section class="about-us-area about-us-2 pt-120 pb-90 pt-md-60 pb-md-10 pb-xs-10 pt-xs-60">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="about-img-wrapper pos-rel mb-30">
                            <img class="shape-square" src="{{ asset('frontend/assets/img/shape/square-1.png') }}" alt="Shape">
                            <img class="img-fluid" src="{{ asset('frontend/assets/img/about/about-1.png') }}" alt="About Img">
                        </div>
                    </div>
                    <div class="col-lg-6 mb-30">
                        <div class="about-content-wrapper3 pt-20 pl-60">
                            <div class="section-title">
                                <h6 class="semi-title mb-10">عن امر تم</h6>
                                <h2 class="sect-title">
                                    منصة آمر تم هي منصة خدمية
                                </h2> 
                            </div>
                            <br>
                            <p>
                                {!! $aboutUs->manager_word !!}
                            </p>
                            <ul class="btn-list about-btn d-md-flex align-items-center">
                                <li><a href="{{ route('frontend.contact') }}" class="theme_btn2">تواصل معنا</a></li>
                                <li><a href="{{ route('frontend.home') }}" class="theme_btn2 ml-20">خدمتنا</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--about-us-area end-->
        <section class="counter-area count-section pb-30">
            <div class="container">

                <div class="grey-bg3 pr-40 pl-40">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="counter-box">
                                <h2 class="count-title"><span class="counters">2023</span></h2>
                                <p>
                                    +5800 إشهار مُسجل عبر نظام السجل الموحد للحقوق على الاموال المنقولة


                                </p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="counter-box count-box2">
                                <h2 class="count-title"><span class="counters">
                                        2022
                                    </span></h2>
                                <p>
                                    + 15000 عميل تتم خدمتهم سنوياً

                                </p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="counter-box count-box3">
                                <h2 class="count-title"><span class="counters">2021</span></h2>
                                <p>
                                    + 755 حساب مُسجل في السجل الموحد للحقوق على الاموال المنقولة
                                </p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="counter-box">
                                <h2 class="count-title"><span class="counters">2020</span></h2>
                                <p>
                                    9 جهات حكومية تم التنسيق معها و
                                    + 650 خدمة تُقدم في منصتنا

                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="services-area pt-115 pb-90 pt-md-55 pt-xs-90">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title2 text-center">
                            <h2 class="style-text2">امر تم</h2>
                            <h6 class="semi-title2"><img class="line-one" src="{{ asset('frontend/assets/img/shape/title-line1.png') }}"
                                    alt="line"> عن امر تم <img class="line-two" src="{{ asset('frontend/assets/img/shape/title-line2.png') }}"
                                    alt="line"></h6>
                            <h2 class="sect-title2">بماذا نتميز؟</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-services3 mb-30">
                            <h2 class="shadow-text">01</h2>
                            <img class="icon" src="{{ asset('frontend/assets/img/icon/s-icon7.png') }}" alt="Services Icon">
                            <h4> الرؤية</h4>
                            <p>
                                <?php echo nl2br($aboutUs->vision); ?>
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-services3 mb-30">
                            <h2 class="shadow-text">02</h2>
                            <img class="icon mb-35" src="{{ asset('frontend/assets/img/icon/s-icon8.png') }}" alt="Services Icon">
                            <h4>الاهداف</h4>
                            <p>
                                <?php echo nl2br($aboutUs->message); ?>
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-services3 mb-30">
                            <h2 class="shadow-text">03</h2>
                            <img class="icon mb-35" src="{{ asset('frontend/assets/img/icon/s-icon9.png') }}" alt="Services Icon">
                            <h4>
                                المستقبل
                            </h4>
                            <p>

                                <?php echo nl2br($aboutUs->morals); ?>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
@endsection
