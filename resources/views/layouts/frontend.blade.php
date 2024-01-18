<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>أمر تم</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="manifest" href="#" />
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('frontend/assets/img/favicon.png') }}" />
    <!-- Place favicon.ico in the root directory -->
    <!-- CSS here -->
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/owl.carousel.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/animate.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/magnific-popup.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/all.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/gt-font.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/metisMenu.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/spacing.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/main.css') }}" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.5/css/select2.min.css" rel="stylesheet" />
    <link href="{{ asset('frontend/assets/fonts/stylesheet.css') }}" rel="stylesheet" />
    <link href="{{ asset('frontend/assets/css/model.css') }}" rel="stylesheet" />
    <style>
        .select2 {
            width: inherit !important;
        }

        .input-group-text {
            padding: 10px
        }
    </style>
    @yield('style')
</head>

<body>
    @php
        $aboutUs = \App\Models\AboutUs::first();
    @endphp
    <!-- Add your site or application content here -->
    <!-- preloader -->
    <div id="preloader">
        <div class="preloader">
            <span></span>
            <span></span>
        </div>
    </div>
    <!-- preloader end  -->
    <!-- header-area start -->
    <header class="@isset($main_header) transparent-header @else header-top heding-bg @endisset">
        <div class="header-top">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-6 col-6">
                        <div class="left-cta left-cta-2">
                            <span><i class="fal fa-envelope"></i> {{ $aboutUs->email }}</span>
                            <span><i class="fal fa-phone"></i> {{ $aboutUs->phone_number }} </span>
                        </div>
                    </div>

                    <div class="col-md-6 col-6 text-end">
                        <div class="right-language">
                            <div class="dropdown">
                                <a class="language-btn dropdown-toggle" href="#" role="button"
                                    id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                    تسجيل <i class="fa fa-sign-in" aria-hidden="true"></i>
                                </a>

                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <li>
                                        <a class="dropdown-item" href="{{ route('login') }}">تسجيل أفراد</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="{{ route('login') }}">تسجيل مؤسسات</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="{{ route('login') }}">تسجيل مستشار</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bottom-border-line"></div>
        </div>
        <div id="hideshow-sticky-menu">
            <div class="main-header-area menu-style-2">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-2 col-lg-2 col-6">
                            <div class="logo-area pt-20 mb-30">
                                <a class="sticky-logo" href="{{ route('frontend.home') }}"><img
                                        src="{{ $aboutUs->logo ? $aboutUs->logo->getUrl() : '' }}"
                                        alt="Header-logo" /></a>
                                <a class="main-logo" href="{{ route('frontend.home') }}"><img
                                        src="{{ $aboutUs->logo ? $aboutUs->logo->getUrl() : '' }}"
                                        alt="Header-logo" /></a>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-7 col-6 text-center d-none d-lg-block">
                            <nav id="topheader" class="navbar navbar-expand-lg justify-content-center py-0">
                                <div class="nav-container">
                                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                        <ul class="navbar-nav list-style-none">
                                            <li class="nav-item">
                                                <a class="nav-link" href="{{ route('frontend.home') }}">الرئيسية</a>
                                            </li>

                                            <li class="nav-item">
                                                <a class="nav-link" href="{{ route('frontend.about') }}">عن الشركة</a>
                                            </li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#"
                                                    id="navbarDropdow2" role="button" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                    خدماتنا <i class="fal fa-chevron-down"></i>
                                                </a>
                                                <ul class="dropdown-menu">
                                                    @foreach(\App\Models\CService::where('featured',1)->with('childs')->withCount('childs')->get() as $key => $raw)
                                                        @if($raw->childs_count > 0)
                                                            <li class="dropdown-submenu">
                                                                <a class="dropdown-item dropdown-toggle" href="{{ route('frontend.services',$raw->id) }}" id="navbarDropdown2a{{ $key }}" role="button"
                                                                    data-bs-toggle="dropdown" >
                                                                    {{ $raw->name }} <i class="fal fa-chevron-down"></i>
                                                                </a>
                                                                <ul class="dropdown-menu dropdown-menu2" aria-labelledby="navbarDropdown2a{{ $key }}">
                                                                    @foreach($raw->childs as $child)
                                                                        <li>
                                                                            <a class="dropdown-item"
                                                                                href="{{ route('frontend.services',$child->id) }}">  {{ $child->name }}</a>
                                                                        </li> 
                                                                    @endforeach
                                                                </ul>
                                                            </li>
                                                        @else
                                                            <li>
                                                                <a class="dropdown-item" href="{{ route('frontend.services',$raw->id) }}"> 
                                                                    {{ $raw->name }}
                                                                </a>
                                                            </li>
                                                        @endif
                                                    @endforeach 
                                                </ul>
                                            </li>

                                            <li class="nav-item">
                                                <a class="nav-link" href="{{ route('frontend.consultants') }}">
                                                    مستشارينا </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="{{ route('frontend.news') }}"> أخبارنا </a>
                                            </li>

                                            <li class="nav-item">
                                                <a class="nav-link" href="{{ route('frontend.contact') }}">تواصل
                                                    معنا</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                        </div>
                        <div class="col-xl-2 col-lg-3 col-6">
                            <ul class="right-nav list-none mb-0 d-flex align-items-center justify-content-end">
                                <li class="text-md-end d-none d-md-inline-block">
                                    <a class="theme_btn quote-btn" href="#" data-popup-open="popup-1">
                                        أحجز إستشارتك
                                    </a>
                                </li>
                                <li>
                                    <div class="ham-menu-2 hamburger-menu d-lg-none d-block">
                                        <a href="javascript:void(0);">
                                            <i class="far fa-bars"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.theme-main-menu -->
        </div>
    </header>
    <!-- header-area end -->

    <!-- slide-bar start -->
    <aside class="slide-bar">
        <div class="close-mobile-menu">
            <a href="javascript:void(0);"><i class="fas fa-times"></i></a>
        </div>
        <!-- offset-sidebar start -->
        <div class="offset-sidebar">
            <div class="offset-widget offset-logo mb-30">
                <a href="{{ route('frontend.home') }}">
                    <img src="{{ asset('frontend/assets/img/logo/logo.png') }}" alt="logo" />
                </a>
            </div>
            <div class="offset-widget mb-40">
                <div class="info-widget">
                    <h4 class="offset-title mb-20">About Us</h4>
                    <p class="mb-30">
                        {!! $aboutUs->manager_word !!}
                    </p>
                    <a class="theme_btn theme_btn_bg" href="{{ route('frontend.home') }}">Contact Us</a>
                </div>
            </div>
            <div class="offset-widget mb-30 pr-10">
                <div class="info-widget info-widget2">
                    <h4 class="offset-title mb-20">Contact Info</h4>
                    <p>
                        <i class="fal fa-address-book"></i> {{ $aboutUs->address }}
                    </p>
                    <p><i class="fal fa-phone"></i> {{ $aboutUs->phone_number }}</p>
                    <p><i class="fal fa-envelope-open"></i> {{ $aboutUs->email }}</p>
                </div>
            </div>
        </div>
        <!-- offset-sidebar end -->
        <!-- side-mobile-menu start -->
        <nav class="side-mobile-menu">
            <ul id="mobile-menu-active">
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('frontend.home') }}">الرئيسية</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="{{ route('frontend.home') }}">عن الشركة</a>
                </li> 
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#"
                        id="navbarDropdow2" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        خدماتنا <i class="fal fa-chevron-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        @foreach(\App\Models\CService::where('featured',1)->with('childs')->withCount('childs')->get() as $key => $raw)
                            @if($raw->childs_count > 0)
                                <li class="dropdown-submenu">
                                    <a class="dropdown-item dropdown-toggle" href="{{ route('frontend.services',$raw->id) }}" id="navbarDropdown2a{{ $key }}" role="button"
                                        data-bs-toggle="dropdown" >
                                        {{ $raw->name }} <i class="fal fa-chevron-down"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu2" aria-labelledby="navbarDropdown2a{{ $key }}">
                                        @foreach($raw->childs as $child)
                                            <li>
                                                <a class="dropdown-item"
                                                    href="{{ route('frontend.services',$child->id) }}">  {{ $child->name }}</a>
                                            </li> 
                                        @endforeach
                                    </ul>
                                </li>
                            @else
                                <li>
                                    <a class="dropdown-item" href="{{ route('frontend.services',$raw->id) }}"> 
                                        {{ $raw->name }}
                                    </a>
                                </li>
                            @endif
                        @endforeach 
                    </ul>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="{{ route('frontend.consultants') }}"> مستشارينا </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="{{ route('frontend.news') }}"> أخبارنا </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="{{ route('frontend.contact') }}">تواصل معنا</a>
                </li>
            </ul>
        </nav>
        <!-- side-mobile-menu end -->
    </aside>
    <div class="body-overlay"></div>
    <!-- slide-bar end -->

    @yield('content')

    <!--footer-area start-->
    <footer class="heding-bg footer-area pt-100">
        <div class="container">
            <div class="row mb-15">
                <div class="col-xl-4 col-lg-4 col-md-6 wow fadeInUp2 animated" data-wow-delay=".1s"
                    style="visibility: visible;animation-delay: 0.1s;animation-name: fadeInUp2;">
                    <div class="footer__widget mb-30">
                        <h6 class="widget-title text-white pb-20 mb-35">عن أمر تم</h6>
                        <p>
                            {!! $aboutUs->vision !!}
                        </p>
                        <div class="footer__social mt-30">
                            <a href="{{ $aboutUs->facebook }}" target="_blac"><i class="fab fa-facebook-f"></i></a>
                            <a href="{{ $aboutUs->twitter }}" target="_blac"><i class="fab fa-twitter"></i></a>
                            <a href="{{ $aboutUs->tiktok }}" target="_blac"><svg xmlns="http://www.w3.org/2000/svg"
                                    height="16" width="14"
                                    viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.-->
                                    <path fill="#ffffff"
                                        d="M448 209.9a210.1 210.1 0 0 1 -122.8-39.3V349.4A162.6 162.6 0 1 1 185 188.3V278.2a74.6 74.6 0 1 0 52.2 71.2V0l88 0a121.2 121.2 0 0 0 1.9 22.2h0A122.2 122.2 0 0 0 381 102.4a121.4 121.4 0 0 0 67 20.1z" />
                                </svg></a>
                            <a href="{{ $aboutUs->instagram }}" target="_blac"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-xl-2 col-lg-4 col-md-6 wow fadeInUp2 animated" data-wow-delay=".3s"
                    style="visibility: visible;animation-delay: 0.3s; animation-name: fadeInUp2;">
                    <div class="border-theme footer__widget mb-30 pl-135 pl-md-0 pl-xs-0">
                        <h6 class="widget-title text-white pb-20 mb-35">روابط سريعة</h6>
                        <ul class="fot-list">
                            <li><a href="{{ route('frontend.about')}}"> من نحن</a></li> 
                            <li><a href="{{ route('frontend.consultants')}}">  مستشارينا  </a></li> 
                            <li><a href="{{ route('frontend.news')}}">    اخبارنا </a></li> 
                            <li><a href="{{ route('frontend.contact')}}">   تواصل معنا</a></li> 
                            <li><a href="{{ route('frontend.team')}}">      فريق العمل</a></li> 
                        </ul>
                    </div>
                </div>

                <div class="col-xl-2 col-lg-4 col-md-6 wow fadeInUp2 animated" data-wow-delay=".3s"
                    style="visibility: visible;animation-delay: 0.3s;animation-name: fadeInUp2;">
                    <div class="border-theme footer__widget mb-30 pl-135 pl-md-0 pl-xs-0">
                        <h6 class="widget-title text-white pb-20 mb-35">خدماتنا</h6>
                        <ul class="fot-list">
                            
                            @foreach(\App\Models\CService::where('featured',1)->get() as $key => $raw) 
                                <li><a href="{{ route('frontend.services',$raw->id) }}"> {{ $raw->name }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp2 animated" data-wow-delay=".5s"
                    style="visibility: visible;animation-delay: 0.5s;animation-name: fadeInUp2;">
                    <div class="footer__widget mb-25 pl-25 pl-md-0 pl-xs-0">
                        <h6 class="widget-title text-white pb-20 mb-35">تواصل معنا</h6>
                        <ul class="fot-list fot-list-1">
                            <li><a href="#">{{ $aboutUs->phone_number }} </a></li>
                            <li><a href="#">{{ $aboutUs->email }}</a></li>
                            <li>
                                <a href="#">ساعات العمل: <span>8AM - 11PM</span></a>
                            </li>
                            <li>
                                <a href="#">{{ $aboutUs->address }}</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="copy-right-area border-bot pt-30">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-12">
                        <div class="copyright mb-30 text-center">
                            <h6>
                                جميع الحقوق محفوظة
                                <a href="{{ route('frontend.home') }}">@ امر تم</a> - 2024
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--footer-area end-->
    <!-- Fullscreen search -->
    <div class="search-wrap">
        <div class="search-inner">
            <i class="fas fa-times search-close" id="search-close"></i>
            <div class="search-cell">
                <form method="get">
                    <div class="search-field-holder">
                        <input type="search" class="main-search-input" placeholder="Search Your Keyword..." />
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- end fullscreen search -->

    <!-- JS here --> 

    @include('sweetalert::alert')


    <script src="{{ asset('frontend/assets/js/vendor/modernizr-3.5.0.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/vendor/jquery-2.2.4.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/popper.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/metisMenu.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/wow.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/jquery.counterup.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/waypoints.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/jquery.scrollUp.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/isotope.pkgd.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/imagesloaded.pkgd.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/jquery.magnific-popup.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/plugins.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/main.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.5/js/select2.full.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.select2').select2()
        })
        $(function() {
            //----- OPEN
            $('[data-popup-open]').on('click', function(e) {
                var targeted_popup_class = jQuery(this).attr('data-popup-open');
                $('[data-popup="' + targeted_popup_class + '"]').fadeIn(350);

                e.preventDefault();
            });

            //----- CLOSE
            $('[data-popup-close]').on('click', function(e) {
                var targeted_popup_class = jQuery(this).attr('data-popup-close');
                $('[data-popup="' + targeted_popup_class + '"]').fadeOut(350);

                e.preventDefault();
            });
        });
        $('#client_type').on('change', function() {
            if ($(this).val() == 'company') {
                $('.additional_info').css('display', 'block');
                $('.additional_info2').css('display', 'none');
                $('#name').prop('placeholder', 'اسم صاحب المنشئه');
                $('#commerical_record').prop('required', true);
                $('#company_name').prop('required', true);
            } else {
                $('.additional_info').css('display', 'none');
                $('.additional_info2').css('display', 'block');
                $('#name').prop('placeholder', 'الاسم');
                $('#commerical_record').prop('required', false);
                $('#company_name').prop('required', false);
            }
        })
    </script>
    @yield('scripts')
</body>

</html>
