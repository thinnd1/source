<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SPORT-STORE Admin - Login</title>

  <!-- Custom fonts for this template-->
  <link href="{{asset('/backend/vendor/fontawesome-free/css/all.min.css')}}" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="{{asset('/backend/css/sb-admin-2.min.css')}}" rel="stylesheet" >

</head>

<body class="bg-gradient-primary" style = "background-color: grey; background-image:url('https://images.unsplash.com/photo-1614191663579-8780442c043b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80');">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
<!--style="backgroud:url(https://images.unsplash.com/photo-1617658946735-2611514fedc3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=358&q=80);-->
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Welcome Admin Management Sport Shop</h1>
                  </div>
                  <?php
                  $message = Session::get('message');
                  if($message){
                      echo $message;
                      Session::put('message',null);
                  }
              ?>
                   <form action="{{URL::to('/admin-dashboard')}}" method="post">
                    {{csrf_field()}}
                    <div class="form-group">
                      <input type="email" name="admin_email" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Địa chỉ email...">
                    </div>
                    <div class="form-group">
                      <input type="password" name="admin_password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Mật khẩu">
                    </div>
                    <div class="form-group">
                      {{-- <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div> --}}
                    </div>
                    <div class="form-group row d-flex justify-content-center">
                        <input type="submit" class="btn btn-primary btn-sm" value="Sign In" name="login">
                    </div>
                    {{-- <hr> --}}
                    {{-- <a href="index.html" class="btn btn-google btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Login with Google
                    </a>
                    <a href="index.html" class="btn btn-facebook btn-user btn-block">
                      <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                    </a> --}}
                  </form>
                  {{-- <hr> --}}
                  {{-- <div class="text-center">
                    <a class="small" href="forgot-password.html">Quên mật khẩu?</a>
                  </div> --}}
                  {{-- <div class="text-center">
                    <a class="small" href="register.html">Tạo tài khoản mới!</a>
                  </div> --}}
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="{{asset('/backend/vendor/jquery/jquery.min.js')}}"></script>
  <script src="{{asset('/backend/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

  <!-- Core plugin JavaScript-->
  <script src="{{asset('/backend/vendor/jquery-easing/jquery.easing.min.js')}}"></script>

  <!-- Custom scripts for all pages-->
  <script src="{{asset('/backend/js/sb-admin-2.min.js')}}"></script>

</body>

</html>
