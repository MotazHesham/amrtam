<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>أمر تم</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="manifest" href="#" />
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="{{ asset('frontend/assets/img/favicon.png') }}"
    />
    <!-- Place favicon.ico in the root directory -->
    <!-- CSS here -->
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/owl.carousel.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/animate.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/magnific-popup.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/all.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/gt-font.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/metisMenu.css') }}" />
    <!--<link rel="stylesheet" href="{{ asset('frontend/assets/css/nice-select.css') }}" />-->
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/spacing.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/main.css') }}" />
    <link href="{{ asset('frontend/assets/fonts/stylesheet.css') }}" rel="stylesheet" />
    <link href="{{ asset('frontend/assets/css/model.css') }}" rel="stylesheet" /> 
  </head>

  <body>
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
    <header class="transparent-header">
      <div class="header-top">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-6 col-6">
              <div class="left-cta left-cta-2">
                <span><i class="fal fa-envelope"></i> info@amrtm.com.sa</span>
                <span><i class="fal fa-phone"></i> +966920002164</span>
              </div>
            </div>

            <div class="col-md-6 col-6 text-end">
              <div class="right-language">
                <div class="dropdown">
                  <a
                    class="language-btn dropdown-toggle"
                    href="#"
                    role="button"
                    id="dropdownMenuLink"
                    data-bs-toggle="dropdown"
                    aria-expanded="false"
                  >
                    تسجيل <i class="fa fa-sign-in" aria-hidden="true"></i>
                  </a>

                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <li>
                      <a class="dropdown-item" href="{{ route('login') }}"
                        >تسجيل أفراد</a
                      >
                    </li>
                    <li>
                      <a class="dropdown-item" href="{{ route('login') }}"
                        >تسجيل مؤسسات</a
                      >
                    </li>
                    <li>
                      <a class="dropdown-item" href="{{ route('login') }}"
                        >تسجيل مستشار</a
                      >
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
                  <a class="sticky-logo" href="index.html"
                    ><img
                      src="{{ asset('frontend/assets/img/logo/footer-logo-1.png') }}"
                      alt="Header-logo"
                  /></a>
                  <a class="main-logo" href="index.html"
                    ><img src="{{ asset('frontend/assets/img/logo/logo.png') }}" alt="Header-logo"
                  /></a>
                </div>
              </div>
              <div
                class="col-xl-8 col-lg-7 col-6 text-center d-none d-lg-block"
              >
                <nav
                  id="topheader"
                  class="navbar navbar-expand-lg justify-content-center py-0"
                >
                  <div class="nav-container">
                    <div
                      class="collapse navbar-collapse"
                      id="navbarSupportedContent"
                    >
                      <ul class="navbar-nav list-style-none">
                        <li class="nav-item">
                          <a class="nav-link" href="index.html">الرئيسية</a>
                        </li>

                        <li class="nav-item">
                          <a class="nav-link" href="about.html">عن الشركة</a>
                        </li>
                        <!--------
	<li class="nav-item dropdown active">
		<a class="nav-link dropdown-toggle" href="index.html"
		   id="navbarDropdown1" role="button" data-bs-toggle="dropdown"
		   aria-expanded="false">
			خدماتنا
			<i class="fal fa-chevron-down"></i>
		</a>
		<ul class="dropdown-menu" aria-labelledby="navbarDropdown1">
			<li class="dropdown-submenu">
				<a class="dropdown-item dropdown-toggle" href="services.html"
				   id="navbarDropdow2a" role="button" data-bs-toggle="dropdown"
				   aria-expanded="false">
					خدماتنا <i class="fal fa-chevron-down"></i>
				</a>
				<ul class="dropdown-menu dropdown-menu2"
					aria-labelledby="navbarDropdown2a">
					<li>
						<a class="dropdown-item" href="service_single.html">قطاع الاعمال والافراد</a>
					</li>
					<li>
						<a class="dropdown-item" href="service_single.html">الإستثمار الأجنبي</a>
					</li>
					<li>
						<a class="dropdown-item" href="service_single.html">مستشاري</a>
					</li>

				</ul>
			</li>

		</ul>
	</li>
		-->
                        <li class="nav-item dropdown">
                          <a
                            class="nav-link dropdown-toggle"
                            href="services.html"
                            id="navbarDropdow2"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                          >
                            خدماتنا <i class="fal fa-chevron-down"></i>
                          </a>
                          <ul class="dropdown-menu">
                            <li>
                              <a
                                class="dropdown-item"
                                href="single_services.html"
                                >قطاع الاعمال والافراد</a
                              >
                            </li>
                            <li>
                              <a
                                class="dropdown-item"
                                href="services-details.html"
                              >
                                الإستثمار الاجنبي
                              </a>
                            </li>
                            <li>
                              <a
                                class="dropdown-item"
                                href="services-details.html"
                              >
                                مستشاري
                              </a>
                            </li>
                            <li>
                              <a
                                class="dropdown-item"
                                href="services-details.html"
                              >
                                وكالاتي
                              </a>
                            </li>
                            <li>
                              <a
                                class="dropdown-item"
                                href="services-details.html"
                              >
                                خدمات السياحة
                              </a>
                            </li>
                            <li>
                              <a
                                class="dropdown-item"
                                href="services-details.html"
                              >
                                خدمات الطلاب والطالبات
                              </a>
                            </li>
                            <li>
                              <a
                                class="dropdown-item"
                                href="services-details.html"
                              >
                                وهج وطن العقارية
                              </a>
                            </li>
                          </ul>
                        </li>

                        <li class="nav-item">
                          <a class="nav-link" href="news.html"> أخبارنا </a>
                        </li>

                        <li class="nav-item">
                          <a class="nav-link" href="contact.html">تواصل معنا</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </nav>
              </div>
              <div class="col-xl-2 col-lg-3 col-6">
                <ul
                  class="right-nav list-none mb-0 d-flex align-items-center justify-content-end"
                >
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
          <a href="index.html">
            <img src="{{ asset('frontend/assets/img/logo/logo-1.png') }}" alt="logo" />
          </a>
        </div>
        <div class="offset-widget mb-40">
          <div class="info-widget">
            <h4 class="offset-title mb-20">About Us</h4>
            <p class="mb-30">
              But I must explain to you how all this mistaken idea of denouncing
              pleasure and praising pain was born and will give you a complete
              account of the system and expound the actual teachings of the
              great explore
            </p>
            <a class="theme_btn theme_btn_bg" href="contact.html">Contact Us</a>
          </div>
        </div>
        <div class="offset-widget mb-30 pr-10">
          <div class="info-widget info-widget2">
            <h4 class="offset-title mb-20">Contact Info</h4>
            <p>
              <i class="fal fa-address-book"></i> 23/A, Miranda City Likaoli
              Prikano, Dope
            </p>
            <p><i class="fal fa-phone"></i> +0989 7876 9865 9</p>
            <p><i class="fal fa-envelope-open"></i> info@example.com</p>
          </div>
        </div>
      </div>
      <!-- offset-sidebar end -->
      <!-- side-mobile-menu start -->
      <nav class="side-mobile-menu">
        <ul id="mobile-menu-active">
          <li class="nav-item">
            <a class="nav-link" href="index.html">الرئيسية</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="about.html">عن الشركة</a>
          </li>
          <!--------
	<li class="nav-item dropdown active">
		<a class="nav-link dropdown-toggle" href="index.html"
		   id="navbarDropdown1" role="button" data-bs-toggle="dropdown"
		   aria-expanded="false">
			خدماتنا
			<i class="fal fa-chevron-down"></i>
		</a>
		<ul class="dropdown-menu" aria-labelledby="navbarDropdown1">
			<li class="dropdown-submenu">
				<a class="dropdown-item dropdown-toggle" href="services.html"
				   id="navbarDropdow2a" role="button" data-bs-toggle="dropdown"
				   aria-expanded="false">
					خدماتنا <i class="fal fa-chevron-down"></i>
				</a>
				<ul class="dropdown-menu dropdown-menu2"
					aria-labelledby="navbarDropdown2a">
					<li>
						<a class="dropdown-item" href="service_single.html">قطاع الاعمال والافراد</a>
					</li>
					<li>
						<a class="dropdown-item" href="service_single.html">الإستثمار الأجنبي</a>
					</li>
					<li>
						<a class="dropdown-item" href="service_single.html">مستشاري</a>
					</li>

				</ul>
			</li>

		</ul>
	</li>
		-->
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="services.html"
              id="navbarDropdow2"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              خدماتنا
            </a>
            <ul class="dropdown-menu">
              <li>
                <a class="dropdown-item" href="single_services.html"
                  >قطاع الاعمال والافراد</a
                >
              </li>
              <li>
                <a class="dropdown-item" href="services-details.html">
                  الإستثمار الاجنبي
                </a>
              </li>
              <li>
                <a class="dropdown-item" href="services-details.html">
                  مستشاري
                </a>
              </li>
              <li>
                <a class="dropdown-item" href="services-details.html">
                  وكالاتي
                </a>
              </li>
              <li>
                <a class="dropdown-item" href="services-details.html">
                  خدمات السياحة
                </a>
              </li>
              <li>
                <a class="dropdown-item" href="services-details.html">
                  خدمات الطلاب والطالبات
                </a>
              </li>
              <li>
                <a class="dropdown-item" href="services-details.html">
                  وهج وطن العقارية
                </a>
              </li>
              
            </ul>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="news.html"> أخبارنا </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="contact.html">تواصل معنا</a>
          </li>
        </ul>
      </nav>
      <!-- side-mobile-menu end -->
    </aside>
    <div class="body-overlay"></div>
    <!-- slide-bar end -->

    <main>
      <!--slider-area start-->
      <div id="slider-one" class="main-slider-area">
        <div
          class="sliders-active2 owl-carousel owl-theme"
          style="direction: ltr"
        >
          <div class="item">
            <div
              class="slider-bg-2"
              style="background-image: url({{ asset('frontend/assets/img/main_bg.jpg') }})"
            >
              <div class="container">
                <div class="row align-items-center">
                  <div class="col-xxl-12">
                    <div class="slider__content mb-30">
                      <h1 class="main-title-two">أمر تم لخدمات الأعمال</h1>
                      <h2>Amr Tamm Business Development</h2>
                      <p>وجهتك لبدء وممارسة وإنهاء عملك الإقتصادي</p>
                    </div>
                  </div>
                </div>

                <!------------hero_services----------------->
                <div
                  class="row align-items-center hero_serivces pt-90"
                  style="direction: rtl"
                >
                  <div class="col-d col-md-3">
                    <div class="h_serv">
                      <a href="single_services.html">
                        <i
                          class="fa fa-arrow-circle-left"
                          aria-hidden="true"
                        ></i>
                        <h5>خدمات الأعمال والافراد</h5>
                      </a>
                    </div>
                  </div>

                  <div class="col-d col-md-3">
                    <div class="h_serv">
                      <a href="single_services.html">
                        <i
                          class="fa fa-arrow-circle-left"
                          aria-hidden="true"
                        ></i>
                        <h5>الإستثمار الأجنبي</h5>
                      </a>
                    </div>
                  </div>

                  <div class="col-d col-md-3">
                    <div class="h_serv">
                      <a href="single_services.html">
                        <i
                          class="fa fa-arrow-circle-left"
                          aria-hidden="true"
                        ></i>
                        <h5>مستشاري</h5>
                      </a>
                    </div>
                  </div>

                  <div class="col-d col-md-3">
                    <div class="h_serv">
                      <a href="single_services.html">
                        <i
                          class="fa fa-arrow-circle-left"
                          aria-hidden="true"
                        ></i>
                        <h5>وكالاتي</h5>
                      </a>
                    </div>
                  </div>

                  <div class="col-d col-md-3">
                    <div class="h_serv">
                      <a href="single_services.html">
                        <i
                          class="fa fa-arrow-circle-left"
                          aria-hidden="true"
                        ></i>
                        <h5>خدمات السياحة</h5>
                      </a>
                    </div>
                  </div>

                  <div class="col-d col-md-3">
                    <div class="h_serv">
                      <a href="single_services.html">
                        <i
                          class="fa fa-arrow-circle-left"
                          aria-hidden="true"
                        ></i>
                        <h5>خدمات الطلاب والطالبات</h5>
                      </a>
                    </div>
                  </div>

                 <!-- <div class="col-d col-md-3">
                    <div class="h_serv">
                      <a href="single_services.html">
                        <i
                          class="fa fa-arrow-circle-left"
                          aria-hidden="true"
                        >
                            
                        </i>
                        <h5>وهج وطن العقارية</h5>
                      </a>
                    </div>
                  </div>
                  -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--slider-area end-->

      <section
        class="blog-area pt-80 pb-90 pt-md-60 pb-md-30 pt-xs-60 pb-xs-30"
      >
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
            <div class="col-lg-4 col-md-6">
              <div class="blogs mb-30">
                <div class="blogs__thumb mb-35">
                  <a href="news-details.html">
                    <img src="{{ asset('frontend/assets/img/blog/blog-1.jpg') }}" alt="Blog Img" />
                  </a>
                </div>

                <div class="blogs__meta mb-1">
                  <span>يناير / 2024 </span>
                </div>
                <h5>
                  <a class="blog-title" href="news-details.html">
                    تطوير الأعمال في المملكة العربية السعودية. تضم المنصة أكثر
                    من 200 خدمة
                  </a>
                </h5>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="blogs mb-30">
                <div class="blogs__thumb mb-35">
                  <a href="news-details.html">
                    <img src="{{ asset('frontend/assets/img/blog/blog-2.jpg') }}" alt="Blog Img" />
                  </a>
                </div>

                <div class="blogs__meta mb-1">
                  <span>يناير / 2024 </span>
                </div>
                <h5>
                  <a class="blog-title" href="news-details.html">
                    تطوير الأعمال في المملكة العربية السعودية. تضم المنصة أكثر
                    من 200 خدمة
                  </a>
                </h5>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="blogs mb-30">
                <div class="blogs__thumb mb-35">
                  <a href="news-details.html">
                    <img src="{{ asset('frontend/assets/img/blog/blog-3.jpg') }}" alt="Blog Img" />
                  </a>
                </div>

                <div class="blogs__meta mb-1">
                  <span>يناير / 2024 </span>
                </div>
                <h5>
                  <a class="blog-title" href="news-details.html">
                    تطوير الأعمال في المملكة العربية السعودية. تضم المنصة أكثر
                    من 200 خدمة
                  </a>
                </h5>
              </div>
            </div>
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
                    منصة آمر تم هي منصة خدمية، تم إطلاقها في عام 2020، بهدف
                    تقديم الخدمات الإلكترونية الحكومية بطريقة سهلة وسلسة، وتطوير
                    الأعمال في المملكة العربية السعودية. تضم المنصة أكثر من 200
                    خدمة حكومية إلكترونية، تغطي جميع القطاعات الحكومية،بمافي ذلك
                    الخدمات الحكومية الأساسية، مثل الخدمات المتعلقة بالإقامة
                    والجوازات، والخدمات المتعلقة بالأعمال التجارية، مثل الخدمات
                    المتعلقة بالسجل التجاري والضرائب.
                  </p>
                </div>
              </div>
              <div class="tab-wrapper mb-30">
                <nav>
                  <div class="nav nav-tabs mb-25" id="nav-tab" role="tablist">
                    <button
                      class="nav-link active"
                      id="nav-home-tab"
                      data-bs-toggle="tab"
                      data-bs-target="#nav-home"
                      type="button"
                      role="tab"
                      aria-controls="nav-home"
                      aria-selected="true"
                    >
                      01. <span>الرؤية</span>
                      <i class="fal fa-long-arrow-down"></i>
                    </button>
                    <button
                      class="nav-link"
                      id="nav-profile-tab"
                      data-bs-toggle="tab"
                      data-bs-target="#nav-profile"
                      type="button"
                      role="tab"
                      aria-controls="nav-profile"
                      aria-selected="false"
                    >
                      02. <span>الأهداف </span>
                      <i class="fal fa-long-arrow-down"></i>
                    </button>
                  </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                  <div
                    class="tab-pane fade show active"
                    id="nav-home"
                    role="tabpanel"
                    aria-labelledby="nav-home-tab"
                  >
                    <p>
                      أن نكون المنصة الأولى الوحيدة التي تعني بتيسير إجراءات بدء
                      الأعمال الاقتصادية ومزاولتها وإنهائها وتقديم جميع الخدمات
                      والأعمال ذات الصلة بها وفقاً لأفضل الممارسات الدولية.
                    </p>
                  </div>
                  <div
                    class="tab-pane fade"
                    id="nav-profile"
                    role="tabpanel"
                    aria-labelledby="nav-profile-tab targets_list"
                  >
                    <ol>
                      <li>1. تقديم خدمات إلكترونية عالية الجودة .</li>
                      <li>2. ربط الخدمات مع الجهات الحكومية.</li>
                      <li>3.تطوير الأعمال في المملكة العربية السعودية.</li>
                      <li>4. المساهمة في رفع مستوى القطاع الخاص .</li>
                    </ol>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-6">
              <div class="about-img-wrapper pos-rel mb-30">
                <img
                  class="shape-square"
                  src="{{ asset('frontend/assets/img/shape/square-1.png') }}"
                  alt="Shape"
                />
                <img
                  class="img-fluid"
                  src="{{ asset('frontend/assets/img/about_home.png') }}"
                  alt="About Img"
                />
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
                <a href="contact.html" class="theme_btn">سجل الان</a>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!--cta-area end-->
      <!--portfolio-area start-->
      <section
        class="portfolio-area portfoilo-section pt-120 pb-90 pt-md-60 pb-md-30 pt-xs-60 pb-xs-30"
      >
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
            <div class="item">
              <div class="portfolio-wrapper2 mb-30">
                <img
                  class="img-fluid"
                  src="{{ asset('frontend/assets/img/portfolio/portfolio-5.jpg') }}"
                  alt="Portfolio Img"
                />
                <div class="single-portfolio">
                  <p>قطاع الاعمال والافراد</p>
                  <h4 class="portfolio-title text-white">
                    توثيق التجارة الإلكترونية
                  </h4>
                </div>
                <a class="pf-btn" href="single_services.html"
                  ><i class="fal fa-long-arrow-right"></i
                ></a>
              </div>
            </div>
            <div class="item">
              <div class="portfolio-wrapper2 mb-30">
                <img
                  class="img-fluid"
                  src="{{ asset('frontend/assets/img/portfolio/portfolio-6.jpg') }}"
                  alt="Portfolio Img"
                />
                <div class="single-portfolio">
                  <p>قطاع الاعمال والافراد</p>
                  <h4 class="portfolio-title text-white">
                    خدمة الاستعلام عن متجر موثوق
                  </h4>
                </div>
                <a class="pf-btn" href="single_services.html"
                  ><i class="fal fa-long-arrow-right"></i
                ></a>
              </div>
            </div>
            <div class="item">
              <div class="portfolio-wrapper2 mb-30">
                <img
                  class="img-fluid"
                  src="{{ asset('frontend/assets/img/portfolio/portfolio-7.jpg') }}"
                  alt="Portfolio Img"
                />
                <div class="single-portfolio">
                  <p>قطاع الاعمال والافراد</p>
                  <h4 class="portfolio-title text-white">تأسيس شركة تضامنية</h4>
                </div>
                <a class="pf-btn" href="single_services.html"
                  ><i class="fal fa-long-arrow-right"></i
                ></a>
              </div>
            </div>
            <div class="item">
              <div class="portfolio-wrapper2 mb-30">
                <img
                  class="img-fluid"
                  src="{{ asset('frontend/assets/img/portfolio/portfolio-8.jpg') }}"
                  alt="Portfolio Img"
                />
                <div class="single-portfolio">
                  <p>قطاع الاعمال والافراد</p>
                  <h4 class="portfolio-title text-white">
                    البحث الاسترشادي للدليل الوطني للأنشطة الاقتصادية
                  </h4>
                </div>
                <a class="pf-btn" href="single_services.html"
                  ><i class="fal fa-long-arrow-right"></i
                ></a>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!--portfolio-area end-->
      <!--brand-area start-->
      <section
        class="brand-area brand-bg pt-60 pb-60 pt-md-60 pb-md-60 pb-xs-50 pt-xs-60 pb-xs-60"
        style="direction: ltr"
      >
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
      <section
        class="feature-area features-bg pt-120 pb-145 pt-md-60 pb-md-30 pt-xs-60 pb-xs-30"
      >
        <div class="container">
          <div class="row">
            <div class="col-lg-4 col-md-12">
              <div class="feature-img-wrapper mb-30">
                <img
                  class="img-fluid one"
                  src="{{ asset('frontend/assets/img//about_home_vision.jpg') }}"
                  alt="Feature Img"
                />

                <img
                  class="feature-one three"
                  src="{{ asset('frontend/assets/img/feature_home.jpg') }}"
                  alt="Feature Img"
                />
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
    <!--footer-area start-->
    <footer class="heding-bg footer-area pt-100">
      <div class="container">
        <div class="row mb-15">
          <div
            class="col-xl-4 col-lg-4 col-md-6 wow fadeInUp2 animated"
            data-wow-delay=".1s"
            style="
              visibility: visible;
              animation-delay: 0.1s;
              animation-name: fadeInUp2;
            "
          >
            <div class="footer__widget mb-30">
              <h6 class="widget-title text-white pb-20 mb-35">عن أمر تم</h6>
              <p>
                أن نكون المنصة الأولى الوحيدة التي تعني بتيسير إجراءات بدء
                الأعمال الاقتصادية ومزاولتها وإنهائها وتقديم جميع الخدمات
                والأعمال ذات الصلة بها وفقاً لأفضل الممارسات الدولية
              </p>
              <div class="footer__social mt-30">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
                <a href="#"><i class="fab fa-google-plus-g"></i></a>
              </div>
            </div>
          </div>

          <div
            class="col-xl-2 col-lg-4 col-md-6 wow fadeInUp2 animated"
            data-wow-delay=".3s"
            style="
              visibility: visible;
              animation-delay: 0.3s;
              animation-name: fadeInUp2;
            "
          >
            <div
              class="border-theme footer__widget mb-30 pl-135 pl-md-0 pl-xs-0"
            >
              <h6 class="widget-title text-white pb-20 mb-35">روابط سريعة</h6>
              <ul class="fot-list">
                <li><a href="#"> من نحن</a></li>
                <li><a href="#"> مجلس الادارة</a></li>
                <li><a href="#">إضافة تفويض</a></li>
                <li><a href="#"> إيداع القوائم المالية </a></li>
                <li><a href="#"> إشهار حقوق الضمان </a></li>
                <li><a href="#">توثيق التجارة الإلكترونية </a></li>
              </ul>
            </div>
          </div>

          <div
            class="col-xl-2 col-lg-4 col-md-6 wow fadeInUp2 animated"
            data-wow-delay=".3s"
            style="
              visibility: visible;
              animation-delay: 0.3s;
              animation-name: fadeInUp2;
            "
          >
            <div
              class="border-theme footer__widget mb-30 pl-135 pl-md-0 pl-xs-0"
            >
              <h6 class="widget-title text-white pb-20 mb-35">خدماتنا</h6>
              <ul class="fot-list">
                <li><a href="#"> خدمات الأعمال والافراد</a></li>
                <li><a href="#"> خدمات السياحة</a></li>
                <li><a href="#">الإستثمار الأجنبي</a></li>
                <li><a href="#"> مستشاري</a></li>
                <li><a href="#"> وكالاتي</a></li>
              </ul>
            </div>
          </div>

          <div
            class="col-xl-3 col-lg-4 col-md-6 wow fadeInUp2 animated"
            data-wow-delay=".5s"
            style="
              visibility: visible;
              animation-delay: 0.5s;
              animation-name: fadeInUp2;
            "
          >
            <div class="footer__widget mb-25 pl-25 pl-md-0 pl-xs-0">
              <h6 class="widget-title text-white pb-20 mb-35">تواصل معنا</h6>
              <ul class="fot-list fot-list-1">
                <li><a href="#">(+055) 841 96 66</a></li>
                <li><a href="#">support@example.com</a></li>
                <li>
                  <a href="#">ساعات العمل: <span>8AM - 11PM</span></a>
                </li>
                <li>
                  <a href="#">المملكة العربية السعودية - جدة</a>
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
                  جميع الحقوق محفوظة امر تم &amp; تصميم وبرمجة
                  <a href="index.html">@ تكامل الرؤى </a> - 2024
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
              <input
                type="search"
                class="main-search-input"
                placeholder="Search Your Keyword..."
              />
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- end fullscreen search -->

    <!-- JS here -->
	
    <div class="popup" data-popup="popup-1" style="z-index:2">
        <div class="popup-inner sponsors_inner">
            <form method="POST" action="{{ route('register') }}" enctype="multipart/form-data">
                    {{ csrf_field() }}

                    <h1>{{ trans('panel.site_title') }}</h1>
                    <p class="text-muted">{{ trans('global.register') }}</p>

                    <div class="row">
                        
                        <div class="col-md-12">
                            <div class="input-group mb-4"> 
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fas fa-server fa-fw"></i>
                                    </span>
                                </div>             
                                <div style="width: 90%">           
                                    <select class="form-control select2 {{ $errors->has('service') ? 'is-invalid' : '' }}" name="client_type" id="client_type" required>
                                        @foreach(\App\Models\User::CLIENT_TYPE_SELECT as $key => $label)
                                            <option value="{{ $key }}" {{ old('client_type') == $key ? 'selected' : '' }}>{{ $label }}</option>
                                        @endforeach
                                    </select>
                                </div>                        
                                @if($errors->has('service'))
                                    <div class="invalid-feedback">
                                        {{ $errors->first('service') }}
                                    </div>
                                @endif 
                            </div>
                        </div>
                        <div class="col-md-12"> 
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-envelope fa-fw"></i>
                                    </span>
                                </div>
                                <input type="email" name="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" required placeholder="{{ trans('global.login_email') }}" value="{{ old('email', null) }}">
                                @if($errors->has('email'))
                                    <div class="invalid-feedback">
                                        {{ $errors->first('email') }}
                                    </div>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
        
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-user fa-fw"></i>
                                    </span>
                                </div>
                                <input type="text" name="name" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" required autofocus placeholder="{{ trans('global.user_name') }}" value="{{ old('name', null) }}">
                                @if($errors->has('name'))
                                    <div class="invalid-feedback">
                                        {{ $errors->first('name') }}
                                    </div>
                                @endif
                            </div>
        
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-lock fa-fw"></i>
                                    </span>
                                </div>
                                <input type="password" name="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" required placeholder="{{ trans('global.login_password') }}">
                                @if($errors->has('password'))
                                    <div class="invalid-feedback">
                                        {{ $errors->first('password') }}
                                    </div>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-phone fa-fw"></i>
                                    </span>
                                </div>
                                <input type="text" name="phone_number" class="form-control{{ $errors->has('phone_number') ? ' is-invalid' : '' }}" required autofocus placeholder="{{ trans('cruds.user.fields.phone_number') }}" value="{{ old('phone_number', null) }}">
                                @if($errors->has('phone_number'))
                                    <div class="invalid-feedback">
                                        {{ $errors->first('phone_number') }}
                                    </div>
                                @endif
                            </div>
        
                            <div class="input-group mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-lock fa-fw"></i>
                                    </span>
                                </div>
                                <input type="password" name="password_confirmation" class="form-control" required placeholder="{{ trans('global.login_password_confirmation') }}">
                            </div>
        
                        </div>
                        <div class="col-md-12">
                            
                            <div class="input-group mb-4"> 
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fas fa-server fa-fw"></i>
                                    </span>
                                </div>             
                                <div style="width: 90%">           
                                    <select class="form-control select2 {{ $errors->has('service') ? 'is-invalid' : '' }}" name="service_id" id="service_id" required>
                                        @foreach(\App\Models\Service::pluck('name', 'id')->prepend('اختر الخدمة', '') as $id => $entry)
                                            <option value="{{ $id }}" {{ old('service_id') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                                        @endforeach
                                    </select>
                                </div>                        
                                @if($errors->has('service'))
                                    <div class="invalid-feedback">
                                        {{ $errors->first('service') }}
                                    </div>
                                @endif 
                            </div>
                        </div>
                        <div class="col-md-12" style="display: none" id="additional_info">
                            <div class="input-group  mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-users fa-fw"></i>
                                    </span>
                                </div>
                                <input type="text" name="national_num" id="national_num" class="form-control{{ $errors->has('national_num') ? ' is-invalid' : '' }}" placeholder="رقم الهوية" value="{{ old('national_num', null) }}">
                                @if($errors->has('national_num'))
                                    <div class="invalid-feedback">
                                        {{ $errors->first('national_num') }}
                                    </div>
                                @endif
                            </div> 
                            
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        السجل التجاري
                                    </span>
                                </div>
                                <input type="file" name="commerical_record" id="commerical_record" class="form-control {{ $errors->has('commerical_record') ? ' is-invalid' : '' }}"  placeholder="{{ trans('global.commerical_record') }}" value="{{ old('commerical_record', null) }}">
                                @if($errors->has('commerical_record'))
                                    <div class="invalid-feedback">
                                        {{ $errors->first('commerical_record') }}
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div> 
                    <button class="btn btn-block btn-primary" type="submit" >
                        {{ trans('global.register') }}
                    </button>
                </form>

            <a class="popup-close " data-popup-close="popup-1" href="#">x</a>
        </div>


    </div>

    <script src="{{ asset('frontend/assets/js/vendor/modernizr-3.5.0.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/vendor/jquery-2.2.4.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/popper.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/metisMenu.min.js') }}"></script>
    <!--<script src="{{ asset('frontend/assets/js/jquery.nice-select.js') }}"></script>-->
    <script src="{{ asset('frontend/assets/js/wow.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/jquery.counterup.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/waypoints.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/jquery.scrollUp.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/isotope.pkgd.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/imagesloaded.pkgd.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/jquery.magnific-popup.min.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/plugins.js') }}"></script>
    <script src="{{ asset('frontend/assets/js/main.js') }}"></script>
	<script>
		
        $(function () {
            //----- OPEN
            $('[data-popup-open]').on('click', function (e) {
                var targeted_popup_class = jQuery(this).attr('data-popup-open');
                $('[data-popup="' + targeted_popup_class + '"]').fadeIn(350);

                e.preventDefault();
            });

            //----- CLOSE
            $('[data-popup-close]').on('click', function (e) {
                var targeted_popup_class = jQuery(this).attr('data-popup-close');
                $('[data-popup="' + targeted_popup_class + '"]').fadeOut(350);

                e.preventDefault();
            });
        });
        $('#client_type').on('change',function(){
            if($(this).val() == 'company'){
                $('#additional_info').css('display','block');
                $('#national_num').prop('required', true);
                $('#commerical_record').prop('required', true);
            }else{
                $('#additional_info').css('display','none');
                $('#national_num').prop('required', false);
                $('#commerical_record').prop('required', false);
            }
        })
	</script>
  </body>
</html>
