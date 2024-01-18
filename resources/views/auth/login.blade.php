@extends('layouts.frontend')
@section('style')

<style>

    .login-container {
        display: block;
        position: relative;
        z-index: 0;
        margin: 4rem auto ;
        padding: 5rem 4rem 0 4rem;
        width: 100%;
        max-width: 525px;
        min-height: 680px;
        background-image: url(assets/img/login_bg.jpg);
        box-shadow: 0 50px 70px -20px rgba(0, 0, 0, 0.85);

    }

        .login-container:after {
            content: '';
            display: inline-block;
            position: absolute;
            z-index: 0;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background-image: radial-gradient(ellipse at left bottom, rgba(1, 24, 50, 1) 0%,rgba(38, 20, 72, .9) 59%, rgba(39, 104, 159, .9) 100%);
            box-shadow: 0 -20px 150px -20px rgba(0, 0, 0, 0.5);
        }

    .form-login {
        position: relative;
        z-index: 1;
        padding-bottom: 4.5rem;
        border-bottom: 1px solid rgba(255, 255, 255, 0.25);
    }

    .login-nav {
        position: relative;
        padding: 0;
        margin: 0 0 6em 1rem;
    }

    .login-nav__item {
        list-style: none;
        display: inline-block;
    }

        .login-nav__item + .login-nav__item {
            margin-right: 2.25rem;
        }

        .login-nav__item a {
            position: relative;
            color: rgba(255, 255, 255, 0.5);
            text-decoration: none;
            text-transform: uppercase;
            font-weight: 500;
            font-size: 1.25rem;
            padding-bottom: .5rem;
            transition: .20s all ease;
        }

            .login-nav__item.active a,
            .login-nav__item a:hover {
                color: #ffffff;
                transition: .15s all ease;
            }

            .login-nav__item a:after {
                content: '';
                display: inline-block;
                height: 10px;
                background-color: rgb(255, 255, 255);
                position: absolute;
                right: 100%;
                bottom: -1px;
                left: 0;
                border-radius: 50%;
                transition: .15s all ease;
            }

            .login-nav__item a:hover:after,
            .login-nav__item.active a:after {
                background-color: rgb(17, 97, 237);
                height: 2px;
                right: 0;
                bottom: 2px;
                border-radius: 0;
                transition: .20s all ease;
            }

    .login__label {
        display: block;
        padding-right: 1rem;
    }

    .login__label,
    .login__label--checkbox {
        color: rgba(255, 255, 255, 0.5);
        text-transform: uppercase;
        font-size: .75rem;
        margin-bottom: 1rem;
    }

    .login__label--checkbox {
        display: inline-block;
        position: relative;
        padding-right: 1.5rem;
        margin-top: 2rem;
        margin-right: 1rem;
        color: #ffffff;
        font-size: .75rem;
        text-transform: inherit;
    }

    .login__input {
        color: white;
        font-size: 1.15rem;
        width: 100%;
        padding: .5rem 1rem;
        border: 2px solid transparent;
        outline: none;
        border-radius: 1.5rem;
        background-color: rgba(255, 255, 255, 0.25);
        letter-spacing: 1px;
    }

        .login__input:hover,
        .login__input:focus {
            color: white;
            border: 2px solid rgba(255, 255, 255, 0.5);
            background-color: transparent;
        }

        .login__input + .login__label {
            margin-top: 1.5rem;
        }

    .login__input--checkbox {
        position: absolute;
        top: .1rem;
        right: 0;
        margin: 0;
    
    }

    .login__submit {
        color: #ffffff;
        font-size: 1rem;
        
        text-transform: uppercase;
        letter-spacing: 1px;
        margin-top: 1rem;
        padding: .75rem;
        border-radius: 2rem;
        display: block;
        width: 100%;
        background-color: #083d59;
        border: none;
        cursor: pointer;
    }


    .clear {
        clear: both;
    }
   .register__submit {
       display:grid;
        color: #ffffff;
        font-size: 1rem;
        text-transform: uppercase;
        letter-spacing: 1px;
        margin-top: 1rem;
        padding: .75rem;
        border-radius: 2rem;
        display: block;
      float:right;
        background-color:transparent;
        border:solid thin #fff;
       
        cursor: pointer;
    }

    .register__submit:hover {
        background-color: #256b1a;
    }

        .login__submit:hover {
        background-color: rgba(17, 97, 237, 1);
    }

    .login__forgot {
        display: block;
        margin-top: 3rem;
        text-align: center;
        color: rgba(255, 255, 255, 0.75);
        font-size: .75rem;
        text-decoration: none;
        position: relative;
        z-index: 1;
    }

        .login__forgot:hover {
            color: rgb(17, 97, 237);
        }
</style>
@endsection
@section('content')
    <main>
        <!--page-title-area start-->
        <!--page-title-area end-->
        <!--login-->
        <div class="login-container" style="background-image:url('{{ asset('frontend/assets/img/login_bg.jpg') }}');">
            @if (session('message'))
                <div class="alert alert-info" role="alert" style="color: crimson;">
                    {{ session('message') }}
                </div>
            @endif
            <form method="POST" class="form-login" action="{{ route('login') }}">
                @csrf
                <ul class="login-nav">
                    <li class="login-nav__item active">
                        <a href="#">تسجيل المستخدمين</a>
                    </li>

                </ul>
                <label for="login-input-user" class="login__label">
                    البريد الالكتروني
                </label>
                <input id="login-input-user" class="login__input" type="email" name="email" placeholder="Enter your email" autocomplete="email" required  autofocus value="{{ old('email') }}"/>
                @if ($errors->has('email'))
                    <div style="color:red">
                        {{ $errors->first('email') }}
                    </div>
                @endif

                <label for="login-input-password" class="login__label">
                    كلمة المرور
                </label>
                <input id="login-input-password" class="login__input" type="password" name="password" placeholder="Enter your password" required  />
                @if ($errors->has('password'))
                    <div style="color:red">
                        {{ $errors->first('password') }}
                    </div>
                @endif
                
                <label for="login-sign-up" class="login__label--checkbox">
                    <input id="login-sign-up" type="checkbox" name="remember" class="login__input--checkbox" />
                    الاحتفاظ ببيانات التسجيل لاحقا
                </label>
                <a href="#" class="login__forgot">نسيت كلمة المرور؟</a>

                <button class="login__submit" type="submit">دخول</button>

                <button class="register__submit">
                    <a href="{{ route('frontend.reg_company') }}">
                        تسجيل مؤسسة
                    </a>
                </button>



                <button class="register__submit">
                    <a href="{{ route('frontend.reg_user') }}">
                        تسجيل فرد
                    </a>
                </button>


                <button class="register__submit">
                    <a href="{{ route('frontend.join_us') }}">
                        تسجيل مستشار
                    </a>
                </button>
                <div class="clear"></div>

            </form>
        </div>


        <!--login-->


    </main>
@endsection
