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
        <!--about-us-area start-->
        <section class="blog-area pt-80 pb-90 pt-md-60 pb-md-30 pt-xs-60 pb-xs-30">
            <div class="container">

                <div class="row">
                    @foreach($news as $raw)
                        @php
                            $image = $raw->photo ? $raw->photo->getUrl() : '';
                        @endphp 
                        <div class="col-lg-4 col-md-6">
                            <div class="blogs mb-30">
                                <div class="blogs__thumb mb-35">
                                    <a href="{{ route('frontend.news_details',$raw->id) }}">
                                        <img src="{{ $image }}" alt="Blog Img">
                                    </a>

                                </div>

                                <div class="blogs__meta mb-1">
                                    <span>  {{ $raw->date }}   </span>


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
                {{ $news->links() }}
            </div>
        </section>



    </main>
@endsection
