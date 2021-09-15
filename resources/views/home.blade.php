<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="_token" content="{{csrf_token()}}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> VR Lab Mongolia</title>
    <!-- favicon -->
    <link rel="shortcut icon" href="storage/static/logo/fav.png" type="image/x-icon">
    <!-- bootstrap -->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- fontawesome icon  -->
    <link href="{{ asset('css/fontawesome.min.css') }}" rel="stylesheet">
    <!-- flaticon css -->
    <link href="{{ asset('fonts/flaticon.css') }}" rel="stylesheet">
    <!-- animate.css -->
    <link href="{{ asset('css/animate.css') }}" rel="stylesheet">
    <!-- Owl Carousel -->
    <link href="{{ asset('css/owl.carousel.min.css') }}" rel="stylesheet">
    <!-- magnific popup -->
    <link href="{{ asset('css/magnific-popup.css') }}" rel="stylesheet">
    <!-- vector map css -->
    <link href="{{ asset('css/jquery-jvectormap-2.0.3.css') }}" rel="stylesheet">
    <!-- Styles -->
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    <!-- responsive -->
    <link href="{{ asset('css/responsive.css') }}" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
</head>

<body>

    <!-- back to top button begin -->
    <div class="back-to-top-button">
        <button>
            <i class="fas fa-level-up-alt"></i>
        </button>
    </div>
    <!-- back to top button end -->

    <!-- preloader begin -->
    <!-- <div class="preloader">
            <img src="assets/img/760.gif" alt="">
        </div> -->
    <!-- preloader end -->
    @include('sweet::alert')
    <div class="modal modal-registration fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <ul class="nav nav-tabs" id="myTab-modal" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="signIn-Tab" data-toggle="tab" href="#signIn" role="tab" aria-controls="signIn" aria-selected="true">@lang('home.tab_1')</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="signUp-Tab" data-toggle="tab" href="#signUp" role="tab" aria-controls="signUp" aria-selected="false">@lang('home.tab_2')</a>
                    </li>
                </ul>
                <div class="tab-content" id="myTab-modalContent">
                    <div class="tab-pane fade show active" id="signIn" role="tabpanel" aria-labelledby="signIn-Tab">
                        <h3 class="title">@lang('home.modal_header')</h3>
                        <div class="alert alert-danger alert-danger-1" style="display:none"></div>
                        <form>
                            <input type="text" placeholder="@lang('home.placeholder_name')" name="name" id="name">
                            <input type="email" placeholder="@lang('home.placeholder_email')" name="email" id="email">
                            <input type="phone" placeholder="@lang('home.placeholder_phone')" name="phone" id="phone">
                            <select name="lesson" id="lesson" style="
                                width: 100%;
                                height: 44px;
                                border: 1px solid #f0f0f0;
                                font-size: 15px;
                                padding: 0 20px;
                                background: #f5f5f5;
                                margin-bottom: 20px;
                                color: rgba(18, 31, 89, 0.8);
                            ">
                                <option value="">@lang('home.placeholder_lesson')</option>
                                @foreach ($servers as $server)
                                @if ($server->type_id == 3)
                                <option value="{{ $server->id }}">
                                    @if (app()->getLocale() == 'mn')
                                    {{ $server->name }}
                                    @else
                                    {{ $server->name_en }}
                                    @endif
                                </option>
                                @endif
                                @endforeach
                            </select>
                            <a href="https://vrlab.splashthat.com/" target="_blank" id="ajaxSubmit" class="create-account-btn">@lang('home.register')</a>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="signUp" role="tabpanel" aria-labelledby="signUp-Tab">
                        <h3 class="title">@lang('home.modal_header')</h3>
                        <div class="alert alert-danger alert-danger-2" style="display:none"></div>
                        <form>
                            <input type="text" placeholder="@lang('home.placeholder_organization')" name="organization_name" id="organization_name">
                            <input type="text" placeholder="@lang('home.placeholder_org_position')" name="organization_position" id="organization_position">
                            <input type="text" placeholder="@lang('home.placeholder_name')" name="name" id="nameCorp">
                            <input type="email" placeholder="@lang('home.placeholder_email')" name="email" id="emailCorp">
                            <input type="phone" placeholder="@lang('home.placeholder_phone')" name="phone" id="phoneCorp">
                            <select name="lesson" id="lessonCorp" style="
                                width: 100%;
                                height: 44px;
                                border: 1px solid #f0f0f0;
                                font-size: 15px;
                                padding: 0 20px;
                                background: #f5f5f5;
                                margin-bottom: 20px;
                                color: rgba(18, 31, 89, 0.8);
                            ">
                                <option value="">@lang('home.placeholder_lesson')</option>
                                @foreach ($servers as $server)
                                @if ($server->type_id == 2)
                                <option value="{{ $server->id }}">
                                    @if (app()->getLocale() == 'mn')
                                    {{ $server->name }}
                                    @else
                                    {{ $server->name_en }}
                                    @endif
                                </option>
                                @endif
                                @endforeach
                            </select>
                            <a href="https://vrlab.splashthat.com/" target="_blank" id="ajaxSubmit2" class="create-account-btn">@lang('home.register')</a>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- header begin -->
    <div class="header">
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 d-xl-flex d-lg-flex d-block align-items-center">
                        <div class="part-left">
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="part-right">
                            <ul>
                                <li>
                                    <span class="part-icon">
                                        <i class="fas fa-globe"></i>
                                    </span>
                                    <select onchange="javascript:location.href = this.value;">
                                        @if (app()->getLocale() == 'mn')
                                        <option selected value={{ url('/locale-lang/mn') }}>{{ __('mn') }}</option>
                                        <option value={{ url('/locale-lang/en') }}>{{ __('en') }}</option>
                                        @else
                                        <option value={{ url('/locale-lang/mn') }}>{{ __('mn') }}</option>
                                        <option selected value={{ url('/locale-lang/en') }}>{{ __('en') }}</option>
                                        @endif
                                    </select>
                                    <span class="part-icon">
                                        <i class="fas fa-angle-down"></i>
                                    </span>
                                </li>
                                <li>
                                    <a href="support.html">
                                        <span class="part-icon">
                                            <i class="fa fa-phone"></i>
                                        </span>
                                        <span class="text">
                                            +976 80005854
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="header-bottom">
                <div class="row">
                    <div class="col-xl-3 col-lg-2 d-xl-flex d-lg-flex align-items-center">
                        <div class="row">
                            <div class="col-xl-12 col-lg-12 col-6 d-xl-block d-lg-block d-flex align-items-center">
                                <div class="logo">
                                    <a href="/">
                                        <img src="storage/static/logo/logo.png" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="col-6 d-xl-none d-lg-none d-block">
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <i class="fas fa-bars"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-9 col-lg-10">
                        <div class="main-menu">
                            <nav class="navbar navbar-expand-lg">

                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <ul class="navbar-nav ml-auto">
                                        <li class="nav-item">
                                            <a class="nav-link" href="#home">@lang('home.home')</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#about">@lang('home.about')</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#classes">@lang('home.classes')</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#contact">@lang('home.contact')</a>
                                        </li>
                                        <li class="nav-item buy-nows">
                                            <a href="https://vrlab.splashthat.com/" target="_blank" class="nav-link buy-now c-acc" >@lang('home.register')</a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header end -->

    <div id="home">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="testimonial first">
                        <img src="storage/static/background/testimonial-bg.png" alt="" class="shape">
                        <div class="banner banner-2">
                            <div class="container">
                                <div class="row justify-content-xl-start justify-content-lg-center justify-content-start">
                                    <div class="col-xl-8 col-lg-9 col-md-10">
                                        <div class="banner-content">
                                            <h1>@lang('home.slide_1')</h1>
                                            <div class="banner-buttons">
                                                <a href="https://vrlab.splashthat.com/" target="_blank" class="banner-button">@lang('home.register')</a>
                                                <a class="mfp-iframe" href="https://www.youtube.com/embed/-bQUBzPZHHQ">
                                                    <span class="icon play-button">
                                                        <i class="fas fa-play"></i>
                                                    </span>
                                                    <span class="text">@lang('home.video')</span>
                                                </a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-6 d-xl-flex d-lg-flex d-block align-items-end">
                                        <div class="banner-img1">
                                            <img src="storage/static/slide/first_slide.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="testimonial slide-2">
                        <img src="storage/static/background/testimonial-bg.png" alt="" class="shape">
                        <div class="banner banner-2">
                            <div class="container">
                                <div class="row justify-content-xl-start justify-content-lg-center justify-content-start">
                                    <div class="col-xl-8 col-lg-9 col-md-10">
                                        <div class="banner-content">
                                            <h1>@lang('home.slide_2')</h1>
                                            <div class="banner-buttons">
                                                <a href="https://vrlab.splashthat.com/" target="_blank" class="banner-button c-acc">@lang('home.register')</a>
                                                <a class="mfp-iframe" href="https://www.youtube.com/embed/-bQUBzPZHHQ">
                                                    <span class="icon play-button">
                                                        <i class="fas fa-play"></i>
                                                    </span>
                                                    <span class="text">@lang('home.video')</span>
                                                </a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 d-xl-flex d-lg-flex d-block align-items-end">
                                        <div class="banner-img2">
                                            <img src="storage/static/slide/slide_2.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="testimonial slide-3">
                        <img src="storage/static/background/testimonial-bg.png" alt="" class="shape">
                        <div class="banner banner-2">
                            <div class="container">
                                <div class="row justify-content-xl-start justify-content-lg-center justify-content-start">
                                    <div class="col-xl-8 col-lg-9 col-md-10">
                                        <div class="banner-content">
                                            <h1>@lang('home.slide_3')</h1>
                                            <div class="banner-buttons">
                                                <a href="https://vrlab.splashthat.com/" target="_blank" class="banner-button c-acc">@lang('home.register')</a>
                                                <a class="mfp-iframe" href="https://www.youtube.com/embed/-bQUBzPZHHQ">
                                                    <span class="icon play-button">
                                                        <i class="fas fa-play"></i>
                                                    </span>
                                                    <span class="text">@lang('home.video')</span>
                                                </a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 d-xl-flex d-lg-flex d-block align-items-end">
                                        <div class="banner-img3">
                                            <img src="storage/static/slide/slide-3.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="testimonial slide-4">
                        <img src="storage/static/background/testimonial-bg.png" alt="" class="shape">
                        <div class="banner banner-2">
                            <div class="container">
                                <div class="row justify-content-xl-start justify-content-lg-center justify-content-start">
                                    <div class="col-xl-8 col-lg-9 col-md-10">
                                        <div class="banner-content">
                                            <h1>@lang('home.slide_4')</h1>
                                            <div class="banner-buttons">
                                                <a href="https://vrlab.splashthat.com/" target="_blank" class="banner-button c-acc">@lang('home.register')</a>
                                                <a class="mfp-iframe" href="https://www.youtube.com/embed/-bQUBzPZHHQ">
                                                    <span class="icon play-button">
                                                        <i class="fas fa-play"></i>
                                                    </span>
                                                    <span class="text">@lang('home.video')</span>
                                                </a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 d-xl-flex d-lg-flex d-block align-items-end">
                                        <div class="banner-img4">
                                            <img src="storage/static/slide/slide-4.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="testimonial first">
                        <img src="storage/static/background/testimonial-bg.png" alt="" class="shape">
                        <div class="banner banner-2">
                            <div class="container">
                                <div class="row justify-content-xl-start justify-content-lg-center justify-content-start">
                                    <div class="col-xl-8 col-lg-9 col-md-10">
                                        <div class="banner-content">
                                            <h1>@lang('home.slide_5')</h1>
                                            <div class="banner-buttons">
                                                <a href="https://vrlab.splashthat.com/" target="_blank" class="banner-button c-acc">@lang('home.register')</a>
                                                <a class="mfp-iframe" href="https://www.youtube.com/embed/-bQUBzPZHHQ">
                                                    <span class="icon play-button">
                                                        <i class="fas fa-play"></i>
                                                    </span>
                                                    <span class="text">@lang('home.video')</span>
                                                </a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 d-xl-flex d-lg-flex d-block align-items-end">
                                        <div class="banner-img5">
                                            <img src="storage/static/slide/slide-5.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="testimonial slide-3">
                        <img src="storage/static/background/testimonial-bg.png" alt="" class="shape">
                        <div class="banner banner-2">
                            <div class="container">
                                <div class="row justify-content-xl-start justify-content-lg-center justify-content-start">
                                    <div class="col-xl-8 col-lg-9 col-md-10">
                                        <div class="banner-content">
                                            <h1>@lang('home.slide_6')</h1>
                                            <div class="banner-buttons">
                                                <a href="https://vrlab.splashthat.com/" target="_blank" class="banner-button c-acc">@lang('home.register')</a>
                                                <a class="mfp-iframe" href="https://www.youtube.com/embed/-bQUBzPZHHQ">
                                                    <span class="icon play-button">
                                                        <i class="fas fa-play"></i>
                                                    </span>
                                                    <span class="text">@lang('home.video')</span>
                                                </a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 d-xl-flex d-lg-flex d-block align-items-end">
                                        <div class="banner-img6">
                                            <img src="storage/static/slide/slide-6.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="testimonial slide-7">
                        <img src="storage/static/background/testimonial-bg.png" alt="" class="shape">
                        <div class="banner banner-2">
                            <div class="container">
                                <div class="row justify-content-xl-start justify-content-lg-center justify-content-start">
                                    <div class="col-xl-8 col-lg-9 col-md-10">
                                        <div class="banner-content">
                                            <h1>@lang('home.slide_7')</h1>
                                            <div class="banner-buttons">
                                                <a href="https://vrlab.splashthat.com/" target="_blank" class="banner-button c-acc">@lang('home.register')</a>
                                                <a class="mfp-iframe" href="https://www.youtube.com/embed/-bQUBzPZHHQ">
                                                    <span class="icon play-button">
                                                        <i class="fas fa-play"></i>
                                                    </span>
                                                    <span class="text">@lang('home.video')</span>
                                                </a>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 d-xl-flex d-lg-flex d-block align-items-center">
                                        <div class="banner-img7">
                                            <img src="storage/static/slide/slide-7.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>

    <!-- about begin -->
    <div class="about">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6 col-lg-6 col-md-9">
                    <div class="part-txt">
                        <p>@lang('home.mission')</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-between">
                <div class="marked-text">
                    <img src="storage/static/background/left-quote.svg" alt="" class="title_img">
                    <p class="main">@lang('home.zuckerberg_word')</p>
                    <p class="zuckerberg float-right">@lang('home.zuckerberg')</p>
                </div>
            </div>
        </div>
    </div>
    <!-- about end -->

    <!-- easy to use begin -->
    <div id="about">
        <div class="affiliate">
            <div class="container">
                @foreach($contents as $content)
                @if($content->id % 2 != 0)
                <div class="row justify-content-between virtual_reality">
                    <div class="col-xl-6 col-lg-6 col-sm-6">
                        {{-- <div class="part-img"> --}}
                            <img src="/storage/{{ $content->image }}" alt="affiliate" class="vr">
                        {{-- </div> --}}
                    </div>
                    <div class="col-xl-6 col-lg-6 col-sm-6 d-xl-flex d-lg-flex d-block align-items-center">
                        <div class="part-txt">
                            <div class="title">
                                @if (app()->getLocale() == 'mn')
                                <h2>{{ $content->title }}</h2>
                                @else
                                <h2>{{ $content->title_en }}</h2>
                                @endif

                            </div>
                            <div class="descr">
                                @if (app()->getLocale() == 'mn')
                                {!! $content->body !!}
                                @else
                                {!! $content->body_en !!}
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                @else
                <div class="row justify-content-between vr-mongolia">
                    <div class="col-xl-6 col-lg-6 col-sm-6 d-xl-flex d-lg-flex d-block align-items-center">
                        <div class="part-txt">
                            <div class="title">
                                @if (app()->getLocale() == 'mn')
                                <h2>{{ $content->title }}</h2>
                                @else
                                <h2>{{ $content->title_en }}</h2>
                                @endif

                            </div>
                            <div class="descr">
                                @if (app()->getLocale() == 'mn')
                                {!! $content->body !!}
                                @else
                                {!! $content->body_en !!}
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-sm-6 d-xl-flex d-lg-flex d-block align-items-center">
                        {{-- <div class="part-img"> --}}
                            <img src="/storage/{{ $content->image }}" alt="image" class="vr-lab">
                        {{-- </div> --}}
                    </div>
                </div>
                @endif
                @endforeach
            </div>
        </div>
        <!-- easy to use end -->

        <!-- why us begin -->
        <div id="critical">
            <div class="core-value">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-7 col-lg-7 col-md-9">
                            <div class="section-title">
                                <h2>@lang('home.critical_title')</h2>
                                <p>@lang('home.critical_text')</p>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        @foreach($skills as $skill)
                        <div class="col-xl-4 col-lg-4 col-sm-6">
                            <div class="single-box">
                                <div class="part-img">
                                    <img src="/storage/{{ $skill->icon }}" alt="image">
                                </div>
                                <div class="part-txt">
                                    @if( app()->getLocale() == 'mn' )
                                    <h3>{{ $skill->title }}</h3>
                                    <p>{!! $skill->body !!}</p>
                                    @else
                                    <h3>{{ $skill->title_en }}</h3>
                                    <p>{!! $skill->body_en !!}</p>
                                    @endif
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        <!-- why us end -->


            <!-- team begin -->
            <div class="team">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-8 col-lg-9 col-md-9">
                            <div class="section-title">
                                <h2>@lang('home.our_partners')</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        @foreach($members as $member)
                        <div class="col-xl-3 col-lg-3 col-sm-6">
                            <div class="single-team">
                                <div class="part-img">
                                    <img src="/storage/{{ $member->image }}" alt="image">
                                </div>
                                <div class="part-txt">
                                    @if( app()->getLocale() == 'mn' )
                                    <h3>{{ $member->name }}</h3>
                                    <p>{{ $member->title}}</p>
                                    @else
                                    <h3>{{ $member->name_en }}</h3>
                                    <p>{{ $member->title_en }}</p>
                                    @endif
                                    <div class="social">
                                        <a href="{{ $member->facebook }}"><i class="fab fa-facebook-f"></i></a>
                                        <a href="about.html#"><i class="fab fa-twitter"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <!-- team end -->

            <!-- contact begin -->
            <div id="contact">
                <div class="contact">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-5 col-lg-5">
                                <div class="part-txt">
                                    <div class="title">
                                        <h2>@lang('home.contact_us')</h2>
                                        <p>@lang('home.contact_us_text')</p>
                                    </div>
                                    <div class="single-box">
                                        <div class="part-icon">
                                            <i class="fas fa-map-marker-alt"></i>
                                        </div>
                                        <div class="txt">
                                            <p>@lang('home.address1')</p>
                                            <p>@lang('home.address2')</p>
                                        </div>
                                    </div>
                                    <div class="single-box">
                                        <div class="part-icon">
                                            <i class="fas fa-phone"></i>
                                        </div>
                                        <div class="txt">
                                            <p>+976 80005854</p>
                                        </div>
                                    </div>
                                    <div class="single-box">
                                        <div class="part-icon">
                                            <i class="fas fa-globe"></i>
                                        </div>
                                        <div class="txt">
                                            <p>info@vrlab.mn</p>
                                            <p>www.vrlab.mn</p>
                                        </div>
                                    </div>
                                    <div class="social">
                                        <h3>@lang('home.social_title')</h3>
                                        <a href="https://www.facebook.com/vrlabmongolia" target="_blank"><i class="fab fa-facebook-f"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-1 col-lg-1"></div>
                            <div class="col-xl-5 col-lg-5">
                                <div class="contact-form">
                                    <h3>@lang('home.contact_us_text1')</h3>
                                    <div class="alert alert-danger alert-danger-3" style="display:none"></div>
                                    <form>
                                        <input name="name" id="feedbackName" type="text" placeholder="@lang('home.placeholder_name')">
                                        <input name="email" id="feedbackEmail" type="email" placeholder="@lang('home.placeholder_email')">
                                        <textarea name="feedback" id="feedback" placeholder="@lang('home.placeholder_message')"></textarea>
                                        <button type="button" id="ajaxSubmit3">@lang('home.send_button_text')</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- contact end -->

            <!-- map begin -->
            <div class="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1337.424832265446!2d106.90924465831424!3d47.9005949948013!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNDfCsDU0JzAyLjEiTiAxMDbCsDU0JzM3LjIiRQ!5e0!3m2!1sen!2smn!4v1630463993669!5m2!1sen!2smn" style="border:0;" allowfullscreen=""></iframe>
            </div>
            <!-- map end -->

            <!-- footer begin -->
            <div class="footer">
                <div class="container">
                    <div class="link-area">
                        <div class="row">
                            <div class="col-xl-4 col-lg-12 col-sm-12">
                                <div class="single-usefull-link">
                                    <span class="title">@lang('home.about')</span>
                                    <ul>
                                        <li>
                                            <a href="#about">@lang('home.about')</a>
                                        </li>
                                        <li>
                                            <a href='#about'>@lang('home.virtual_reality_text')</a>
                                        </li>
                                        <li>
                                            <a href='#critical'>@lang('home.vr_mongolia_text')</a>
                                        </li>
                                        <li>
                                            <a href='#critical'>@lang('home.critical_skill')</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-12 col-sm-12">
                                <div class="single-usefull-link">
                                    <span class="title">@lang('home.classes')</span>
                                    <ul>
                                        @foreach ($servers as $server)
                                        @if( app()->getLocale() == 'mn' )
                                        <li>
                                            <a href="#">{{$server->name}}</a>
                                        </li>
                                        @else
                                        <li>
                                            <a href="#">{{$server->name_en}}</a>
                                        </li>
                                        @endif
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-12 col-sm-12">
                                <div class="single-box">
                                    <div class="part-icon">
                                        <i class="fas fa-map-marker-alt"></i>
                                    </div>
                                    <div class="txt">
                                        <p>@lang('home.address1')</p>
                                        <p>@lang('home.address2')</p>
                                    </div>
                                </div>
                                <div class="single-box">
                                    <div class="part-icon">
                                        <i class="fas fa-phone"></i>
                                    </div>
                                    <div class="txt">
                                        <p>+976 80005854</p>
                                    </div>
                                </div>
                                <div class="social">
                                    <a href="https://www.facebook.com/vrlabmongolia" target="_blank"><i class="fab fa-facebook-f"></i></a>
                                    <a href="contact.html#"><i class="fab fa-google-plus-g"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- footer end -->

            <!-- jquery -->
            <script src="{{ asset('js/jquery.js') }}"></script>
            <!-- bootstrap -->
            <script src="{{ asset('js/bootstrap.min.js') }}"></script>
            <!-- owl carousel -->
            <script src="{{ asset('js/owl.carousel.js') }}"></script>
            <!-- magnific popup -->
            <script src="{{ asset('js/jquery.magnific-popup.js') }}"></script>
            <!-- filterizr js -->
            <script src="{{ asset('js/jquery.filterizr.min.js') }}"></script>
            <!-- way poin js-->
            <script src="{{ asset('js/waypoints.min.js') }}"></script>
            <!-- counter up js -->
            <script src="{{ asset('js/jquery.counterup.min.js') }}"></script>
            <!-- vector map js -->
            <script src="{{ asset('js/jquery-jvectormap-2.0.3.min.js') }}"></script>
            <script src="{{ asset('js/jquery-jvectormap-world-mill.js') }}"></script>
            <script src="{{ asset('js/gdp-data.js') }}"></script>
            <script src="{{ asset('js/vector-map-activated.js') }}"></script>
            <!-- wow js-->
            <script src="{{ asset('js/wow.min.js') }}"></script>
            <!-- animation when scrolling -->
            <!-- <script src="assets/js/scroll-animation-amazing-feature.js"></script> -->
            <!-- main -->
            <script src="{{ asset('js/main.js') }}"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
            <script>
                jQuery(document).ready(function() {
                    jQuery('#ajaxSubmit').click(function(e) {
                        e.preventDefault();
                        $.ajaxSetup({
                            headers: {
                                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                            }
                        });
                        jQuery.ajax({
                            url: "{{ route('register') }}",
                            method: 'post',
                            data: {
                                name: jQuery('#name').val(),
                                phone: jQuery('#phone').val(),
                                email: jQuery('#email').val(),
                                lesson: jQuery('#lesson').val()
                            },
                            success: function(result) {
                                if (result.errors) {
                                    jQuery('.alert-danger-1').html('');

                                    if (Array.isArray(result.errors)) {
                                        jQuery.each(result.errors, function(key, value) {
                                            jQuery('.alert-danger-1').show();
                                            jQuery('.alert-danger-1').append('<li>' + value + '</li>');
                                        });
                                    } else {
                                        jQuery('.alert-danger-1').show();
                                        jQuery('.alert-danger-1').append('<li>' + result.errors + '</li>');
                                    }

                                } else {
                                    swal("Амжилттай бүртгэлээ", "", "success");
                                    jQuery('.alert-danger-1').hide();
                                    $('#open').hide();
                                    $('#exampleModal').modal('hide');
                                }
                            }
                        });
                    });
                    jQuery('#ajaxSubmit2').click(function(e) {
                        e.preventDefault();
                        $.ajaxSetup({
                            headers: {
                                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                            }
                        });
                        jQuery.ajax({
                            url: "{{ route('registerCorp') }}",
                            method: 'post',
                            data: {
                                name: jQuery('#nameCorp').val(),
                                phone: jQuery('#phoneCorp').val(),
                                email: jQuery('#emailCorp').val(),
                                lesson: jQuery('#lessonCorp').val(),
                                organization_name: jQuery('#organization_name').val(),
                                organization_position: jQuery('#organization_position').val()
                            },
                            success: function(result) {
                                if (result.errors) {
                                    jQuery('.alert-danger-2').html('');

                                    if (Array.isArray(result.errors)) {
                                        jQuery.each(result.errors, function(key, value) {
                                            jQuery('.alert-danger-2').show();
                                            jQuery('.alert-danger-2').append('<li>' + value + '</li>');
                                        });
                                    } else {
                                        jQuery('.alert-danger-2').show();
                                        jQuery('.alert-danger-2').append('<li>' + result.errors + '</li>');
                                    }

                                } else {
                                    swal("Амжилттай бүртгэлээ", "", "success");
                                    jQuery('.alert-danger-2').hide();
                                    $('#open').hide();
                                    $('#exampleModal').modal('hide');
                                }
                            }
                        });
                    });
                    jQuery('#ajaxSubmit3').click(function(e) {
                        e.preventDefault();
                        $.ajaxSetup({
                            headers: {
                                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                            }
                        });
                        jQuery.ajax({
                            url: "{{ route('feedback') }}",
                            method: 'post',
                            data: {
                                name: jQuery('#feedbackName').val(),
                                email: jQuery('#feedbackEmail').val(),
                                feedback: jQuery('#feedback').val()
                            },
                            success: function(result) {
                                if (result.errors) {
                                    jQuery('.alert-danger-3').html('');

                                    jQuery.each(result.errors, function(key, value) {
                                        jQuery('.alert-danger-3').show();
                                        jQuery('.alert-danger-3').append('<li>' + value + '</li>');
                                    });

                                } else {
                                    swal("Таны хүсэлтийг хүлээн авлаа.", "", "success");
                                    jQuery('.alert-danger-3').hide();
                                }
                            }
                        });
                    });
                });
            </script>
</body>

</html>