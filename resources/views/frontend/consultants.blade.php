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
        <section class="services-area pt-120 pb-80 mb-10 pt-md-60 pb-md-25 pt-xs-50 pb-xs-20">
            <div class="container">
                <div class="row">
                    @foreach($consultants as $consultant)
                    @php
                        $image = $consultant->photo ? $consultant->photo->getUrl() : '';
                    @endphp
                        <div class="col-lg-3 col-md-3">
                            <div class="single-services mb-150">
                                <div class="services__thumb">
                                    <img class="img-fluid" src="{{ $image }}" alt="Services Img">
                                </div>
                                <div class="services__content text-center">
                                    <h5 class="service-text">
                                        {{ $consultant->user ? $consultant->user->name : '' }}
                                    </h5>
                                    <small>{{ $consultant->specialization ?? '' }}</small>
                                    <p>
                                        <?php echo nl2br($consultant->short_description ?? ''); ?>
                                    </p>
                                    <a class="service-btn" href="#">المزيد <i
                                            class="fal fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                        </div> 
                    @endforeach
                </div>
                {{ $consultants->links() }}
            </div>
        </section>


        <section class="cta-area cta-bg pt-70 pb-50 pt-md-60 pb-md-50 pt-xs-50 pb-xs-30">
            <div class="container">
                <div class="row align-items-center text-center">
                    <div class="col-lg-2 col-md-2"></div>
                    <div class="col-lg-8 col-md-8">
                        <h2 class="cta-title mb-30">
                            انضم إلينا كمستشار
                        </h2> 

                        <a href="{{ route('frontend.join_us') }}" class="theme_btn">اضغط هنا للانضمام إلينا</a> 
                    </div>

                </div>
            </div>
        </section>
        <!--team-masonry-area end-->


    </main>
@endsection
