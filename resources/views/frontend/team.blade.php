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
                                <li class="active" aria-current="page">فريق العمل</li>
                            </ul>
                            <h2 class="page-title">فريق العمل</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--page-title-area end-->
        <!--team-masonry-area start-->
        <section class="team-masonry-area pt-95 pb-90 pt-md-60 pb-md-30 pt-xs-60 pb-xs-30">
            <div class="container">

                <div class="grid row align-items-center">
                    <div class="col-lg-4 col-md-6 grid-item cat2 cat3">
                        <div class="team-wrapper mb-30">
                            <div class="team-thumb">
                                <img class="img-fluid" src="{{ asset('frontend/assets/img/team/team-1.jpg') }}" alt="Team Img">
                            </div>
                            <div class="team-content">
                                <h6>المدير العام</h6>
                                <h3>
                                    المستشار صالح بن ناصر الشمراني
                                </h3>

                            </div>
                        </div>
                    </div>


                    <div class="col-lg-4 col-md-6 grid-item cat2">
                        <div class="team-wrapper mb-30">
                            <div class="team-thumb">
                                <img class="img-fluid" src="{{ asset('frontend/assets/img/team/team-2.jpg') }}" alt="Team Img">
                            </div>
                            <div class="team-content">
                                <h6>
                                    المدير التنفيذي
                                </h6>
                                <h3>
                                    خالد الشمراني
                                </h3>

                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 grid-item cat2">
                        <div class="team-wrapper mb-30">
                            <div class="team-thumb">

                                <img class="img-fluid" src="{{ asset('frontend/assets/img/team/team-3.jpg') }}" alt="Team Img">

                            </div>
                            <div class="team-content">
                                <h6>
                                    قسم التسويق
                                </h6>
                                <h3>ميسم مجدي</h3>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--team-masonry-area end-->


    </main>
@endsection
