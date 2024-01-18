@extends('layouts.frontend')
@section('content') 

    <main>
        <!--page-title-area start-->
        <section class="page-title-area"
        style="background-image: url('{{ asset('frontend/assets/img/page-title/page-title-bg1.jpg') }}');">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title-wrapper pt-30 pt-lg-40 pt-md-10 pt-xs-10">
                            <ul class="breadcrumb">
                                <li><a href="{{ route('frontend.home') }}">الرئيسية /</a></li>
                                <li class="active" aria-current="page">خدمتنا </li>
                            </ul>
                            <h2 class="page-title">خدمتنا</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--page-title-area end-->
        <!--services-area start-->
        <section class="services-details-area pt-120 pb-80 pt-md-60 pb-md-25 pt-xs-50 pb-xs-20">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="services-left mb-30">
                            <img class="img-fluid" src="{{ $service->photo ? $service->photo->getUrl() : '' }}" alt="Service Img">
                            <h3 class="s-sub-title mt-55 mb-20"> {{ $service->name }}</h3>

                            <?php echo nl2br($service->description); ?>

                        </div>
                    </div>
                    <div class="col-lg-4 pl-25 pl-lg-15 pl-md-15 pl-xs-15">
                        <div class="services-right-widget">
                            <div class="widget widget-categories mb-40">
                                <div class="widget-title-box pb-25 mb-30">
                                    <h4 class="widget-sub-title2">خدمات اخرى ذات صلة</h4>
                                </div>
                                <ul class="list-none">
                                    @foreach($other_services as $raw)
                                        <li>
                                            <a href="{{ route('frontend.service',$raw->id) }}">
                                                {{ $raw->name ?? '' }}<span class="f-left">
                                                    <i class="fal fa-long-arrow-left"></i>
                                                </span>
                                            </a>
                                        </li> 
                                    @endforeach
                                </ul>
                            </div>
                            <div class="widget widget-subscribe mb-40">

                                <form class="row contact-form" action="#">



                                    <div class="col-12 mb-15">
                                        <button class="form-btn">
                                            <a href="login.html">
                                                طلب الخدمة
                                            </a>
                                        </button>


                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--services-area end-->


    </main>
@endsection
