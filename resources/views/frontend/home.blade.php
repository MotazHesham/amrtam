@extends('layouts.frontend')
@section('content')
    <main>
        <!--slider-area start-->
        <div id="slider-one" class="main-slider-area">
            <div class="sliders-active2 owl-carousel owl-theme" style="direction: ltr">
                <div class="item">
                    <div class="slider-bg-2" style="background-image: url({{ asset('frontend/assets/img/main_bg.jpg') }})">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-xxl-12">
                                    <div class="slider__content mb-30">
                                        <h1 class="main-title-two">أمر تم لخدمات الأعمال</h1>
                                        <h2>Amr Tamm Business Development</h2> 
                                    </div>
                                </div>
                            </div>

                            <!------------hero_services----------------->
                            <div class="row align-items-center hero_serivces pt-90" style="direction: rtl">
                                @foreach($cservices as $raw)
                                    <div class="col-d col-md-3">
                                        <div class="h_serv">
                                            <a href="{{ route('frontend.services',$raw->id) }}">
                                                <i class="fa fa-arrow-circle-left" aria-hidden="true"></i>
                                                <h5>{{ $raw->name }} </h5>
                                            </a>
                                        </div>
                                    </div>
                                @endforeach

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--slider-area end-->

        <section class="blog-area pt-80 pb-90 pt-md-60 pb-md-30 pt-xs-60 pb-xs-30">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title text-center mb-55">
                            <h6 class="semi-title mb-10">أخبارنا</h6>
                            <h2 class="sect-title">أحدث الأخبار</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    @foreach($news as $raw)
                    @php
                        $image = $raw->photo ? $raw->photo->getUrl() : '';
                    @endphp
                        <div class="col-lg-4 col-md-6">
                            <div class="blogs mb-30">
                                <div class="blogs__thumb mb-35">
                                    <a href="{{ route('frontend.news_details',$raw->id) }}">
                                        <img src="{{ $image }}" alt="Blog Img" />
                                    </a>
                                </div>

                                <div class="blogs__meta mb-1">
                                    <span> {{ $raw->date }} </span>
                                </div>
                                <h5>
                                    <a class="blog-title" href="{{ route('frontend.news_details',$raw->id) }}">
                                        {{ $raw->name }}
                                    </a>
                                </h5>
                            </div>
                        </div> 
                    @endforeach
                </div>
            </div>
        </section>

        <!--about-us-area start-->
        <section class="about-us-area pt-90 pb-90 pb-md-25 pt-xs-50 pb-xs-30">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="about-content-wrapper pl-60">
                            <div class="section-title">
                                <h6 class="semi-title mb-10">مرحبا بكم</h6>
                                <h2 class="sect-title mb-30">
                                    آمر تم
                                    <span class="bottom-shape">لتطوير </span> الاعمال
                                </h2>
                                <p class="paragraph-title">
                                    {!! $aboutUs->manager_word !!}
                                </p> 
                            </div>
                        </div>
                        <div class="tab-wrapper mb-30">
                            <nav>
                                <div class="nav nav-tabs mb-25" id="nav-tab" role="tablist">
                                    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home"
                                        aria-selected="true">
                                        01. <span>الرؤية</span>
                                        <i class="fal fa-long-arrow-down"></i>
                                    </button>
                                    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-profile" type="button" role="tab"
                                        aria-controls="nav-profile" aria-selected="false">
                                        02. <span>الأهداف </span>
                                        <i class="fal fa-long-arrow-down"></i>
                                    </button>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                    <p> 
                                        <?php echo nl2br($aboutUs->vision); ?>
                                    </p>
                                </div>
                                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab targets_list">
                                    <p>
                                        <?php echo nl2br($aboutUs->message); ?>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="about-img-wrapper pos-rel mb-30">
                            <img class="shape-square" src="{{ asset('frontend/assets/img/shape/square-1.png') }}"
                                alt="Shape" />
                            <img class="img-fluid" src="{{ asset('frontend/assets/img/team/team-1.jpg') }}"
                                alt="About Img" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--about-us-area end-->
        <!--cta-area start-->
        <section class="cta-area">
            <div class="container">
                <div class="cta-bg2 heding-bg">
                    <div class="row align-items-center">
                        <div class="col-lg-8 col-md-12 mb-20">
                            <h4 class="text-white">
                                <span> من مكانك </span>ابدأ بمُمارسة أعمالك الاقتصادية
                                وإدارتها من خلال منصة آمر تم
                            </h4>
                        </div>
                        <div class="col-lg-4 col-md-12 mb-10 text-center text-lg-end">
                            <a href="#" data-popup-open="popup-1" class="theme_btn">سجل الان</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--cta-area end-->
        <!--portfolio-area start-->
        <section class="portfolio-area portfoilo-section pt-120 pb-90 pt-md-60 pb-md-30 pt-xs-60 pb-xs-30">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="section-title">
                            <h6 class="semi-title mb-10">خدماتنا</h6>
                            <h2 class="sect-title">نتشرف بتقديم الخدمات التالية</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="portfolio-container portfolio-nav" style="direction: ltr">
                <div class="portfolio-slide2 owl-carousel">
                    @foreach($services as $service)
                        <div class="item">
                            <div class="portfolio-wrapper2 mb-30">
                                <img class="img-fluid" src="{{ $service->photo ? $service->photo->getUrl('preview2') : '' }}"
                                    alt="Portfolio Img" />
                                <div class="single-portfolio">
                                    <p>{{ $service->category->name ?? '' }}</p>
                                    <h4 class="portfolio-title text-white">
                                        {{ $service->name ?? '' }}
                                    </h4>
                                </div>
                                <a class="pf-btn" href="{{ route('frontend.service',$service->id) }}"><i class="fal fa-long-arrow-right"></i></a>
                            </div>
                        </div> 
                    @endforeach
                </div>
            </div>
        </section>
        <!--portfolio-area end-->
        <!--brand-area start-->
        <section class="brand-area brand-bg pt-60 pb-60 pt-md-60 pb-md-60 pb-xs-50 pt-xs-60 pb-xs-60"
            style="direction: ltr">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="brand-active owl-carousel">
                            <div class="brand-item">
                                <a class="brand-front" href="#">
                                    <img src="{{ asset('frontend/assets/img/brand/brand-1.png') }}" alt="Brand Logo" />
                                </a>
                                <a class="brand-back" href="#">
                                    <img src="{{ asset('frontend/assets/img/brand/brand-1y.png') }}" alt="Brand Logo" />
                                </a>
                            </div>
                            <div class="brand-item">
                                <a class="brand-front" href="#">
                                    <img src="{{ asset('frontend/assets/img/brand/brand-2.png') }}" alt="Brand Logo" />
                                </a>
                                <a class="brand-back" href="#">
                                    <img src="{{ asset('frontend/assets/img/brand/brand-2.png') }}" alt="Brand Logo" />
                                </a>
                            </div>
                            <div class="brand-item">
                                <a class="brand-front" href="#">
                                    <img src="{{ asset('frontend/assets/img/brand/brand-3.png') }}" alt="Brand Logo" />
                                </a>
                                <a class="brand-back" href="#">
                                    <img src="{{ asset('frontend/assets/img/brand/brand-3y.png') }}" alt="Brand Logo" />
                                </a>
                            </div>
                            <div class="brand-item">
                                <a class="brand-front" href="#">
                                    <img src="{{ asset('frontend/assets/img/brand/brand-4.png') }}" alt="Brand Logo" />
                                </a>
                                <a class="brand-back" href="#">
                                    <img src="{{ asset('frontend/assets/img/brand/brand-4y.png') }}" alt="Brand Logo" />
                                </a>
                            </div>
                            <div class="brand-item">
                                <a class="brand-front" href="#">
                                    <img src="{{ asset('frontend/assets/img/brand/brand-5.png') }}" alt="Brand Logo" />
                                </a>
                                <a class="brand-back" href="#">
                                    <img src="{{ asset('frontend/assets/img/brand/brand-5y.png') }}" alt="Brand Logo" />
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--brand-area end-->
        <!--feature-area start-->
        <section class="feature-area features-bg pt-120 pb-145 pt-md-60 pb-md-30 pt-xs-60 pb-xs-30">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12">
                        <div class="feature-img-wrapper mb-30">
                            <img class="img-fluid one" src="{{ asset('frontend/assets/img//about_home_vision.jpg') }}"
                                alt="Feature Img" />

                            <img class="feature-one three" src="{{ asset('frontend/assets/img/feature_home.jpg') }}"
                                alt="Feature Img" />
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-12">
                        <div class="core-wrapper2 mb-30 pl-65">
                            <div class="section-title">
                                <h6>لماذا امر تم ؟</h6>
                                <h2 class="sect-title mb-20">فوائد التعامل معنا</h2>
                                <p class="paragraph-title mb-65">
                                    تعود منصة آمر بمجموعة من الفوائد على المستفيدين والجهات
                                    الحكومية، ومن أهم هذه الفوائد:
                                </p>
                            </div>
                            <ul class="feature-list list-none">
                                <li>
                                    <div class="single-feature2">
                                        <h2>توفير الوقت والجهد:</h2>
                                        <p>
                                            تسهل المنصة على المستفيدين الحصول على الخدمات الحكومية
                                            من أي مكان وفي أي وقت، مما يوفر عليهم الوقت والجهد.
                                        </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="single-feature2">
                                        <h2>تسهيل الوصول للخدمات الحكومية:</h2>
                                        <p>
                                            تساهم المنصة في تسهيل الوصول للخدمات الحكومية من وفيرها
                                            بطريقة سهلة وسلسة.
                                        </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="single-feature2">
                                        <h2>تعزيز الشفافية:</h2>
                                        <p>
                                            تساهم المنصة في تعزيز الشفافية مع المواطنين والوافدين
                                            ورجال الاعمال في تقديم الخدمات الحكومية من خلال توفيرها
                                            بطريقة احترافية دون ادنى جهد.
                                        </p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--feature-area end-->
    </main>
@endsection
