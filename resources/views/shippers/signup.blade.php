<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{ asset('shipper/css/bootstrap.css') }}" rel="stylesheet">

    <title> Register </title>
</head>
<body>
<div class="container">
    <h2>Đăng ký thành viên Shipper</h2>
    <form class="form-signup" action="{{ route('registerShipper') }}" method="post">
        @csrf

        <div class="form-group">
            <label for="inputUsername">Họ tên*</label>
            <input type="text" name="shipper_name" class="form-control username" value="{{ old("shipper_name") }}" id="inputUsername"
                   placeholder="Điền tên">
            @error('shipper_name')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div>

        <div class="form-group">
            <label for="inputPassword">Mật Khẩu</label>
            <input type="password" name="password" class="form-control password" value="{{ old("password") }}" id="inputPassword"
                   placeholder="password">
            @error('password')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div>

        <div class="form-group">
            <label for="inputUsername">Số điện thoại</label>
            <input type="text" name="shipper_phone" class="form-control username" value="{{ old("shipper_phone") }}" id="inputnom"
                   placeholder="Số điện thoại">
            @error('shipper_phone')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div>

        <div class="form-group">
            <label for="inputUsername">Email</label>
            <input type="email" name="shipper_email" class="form-control username" value="{{ old("shipper_email") }}" id=""
                   placeholder="Email ">
            @error('shipper_email')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div>

        <p>Bạn có tài khoản, <a href="{{ route('formLoginShipper') }}"> Đăng Nhập </a></p>
        <button type="submit" class="btn btn-primary">Đăng ký</button>
    </form>
</div>

</body>
</html>
