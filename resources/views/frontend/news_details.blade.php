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
                                <li class="active" aria-current="page">اخبار امر تم </li>
                            </ul>
                            <h2 class="page-title"> اخبارنا</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--page-title-area end-->
        <!--services-area start-->
        <section class="news-details-area pt-105 pb-90 pt-md-60 pb-md-25 pt-xs-50 pb-xs-20">
            <div class="container">
                <div class="row mb-15">
                    <div class="col-lg-8">
                        <div class="news-details-left mb-30">

                            @php
                                $image = $raw->photo ? $raw->photo->getUrl() : '';
                            @endphp 

                            <img class="img-fluid" src="{{ $image }}" alt="">
                            <br /><br />



                            <h3 class="mt-55 mb-25">
                                <a class="s-sub-title" href="#">
                                    {{ $raw->name }}  
                                </a>
                            </h3>

                            <div class="blogs__meta">


                                <span><i class="fal fa-calendar-alt"></i>  {{ $raw->date }}    </span>
                            </div>
                            <p> 
                                <?php echo nl2br($raw->description); ?>
                            </p> 

                            <div class="row share-social px-0 mt-55 pb-15">

                                <div class="col-lg-6 col-md-6 text-start text-md-end mb-30">
                                    <h5 class="fs-20 mb-20">مشاركة الخبر</h5>
                                    <div class="author__social">
                                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#"><i class="fab fa-twitter"></i></a>
                                        <a href="#"><i class="fab fa-behance"></i></a>
                                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                                        <a href="#"><i class="fab fa-google-plus-g"></i></a>
                                    </div>
                                </div>
                            </div>




                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!--services-area end-->


    </main>
@endsection
