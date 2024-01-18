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
                                <li class="active" aria-current="page">خدمتنا </li>
                            </ul>
                            <h2 class="page-title">
                                {{ $cservice->name ?? '' }}
                            </h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--page-title-area end-->
        <!--services-area start-->
        <section class="services-area pt-120 pb-80 mb-10 pt-md-60 pb-md-25 pt-xs-50 pb-xs-20">
            <div class="container">
                <div class="row">
                    @foreach($services as $service)
                        <div class="col-lg-4 col-md-6">
                            <div class="single-services mb-150">
                                <div class="services__thumb">
                                    <img class="img-fluid" src="{{ $service->photo ? $service->photo->getUrl() : '' }}" alt="Services Img">
                                </div>
                                <div class="services__content text-center">
                                    <h5 class="service-text">
                                        {{ $service->name }}
                                    </h5>
                                    <p> 
                                        {{ $service->short_description }}
                                    </p>
                                    <a class="service-btn" href="{{ route('frontend.service',$service->id) }}">
                                        المزيد
                                        <i class="fal fa-long-arrow-left"></i>
                                    </a>
                                </div>
                            </div>
                        </div> 
                    @endforeach
                </div>
                {{ $services->links() }}
            </div>
        </section>
        <!--services-area end-->

    </main>
@endsection
