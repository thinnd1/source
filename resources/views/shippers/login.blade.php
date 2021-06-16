<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{ asset('shipper/css/bootstrap.css') }}" rel="stylesheet">
    <title>Login</title>
</head>
<body>
<div class="container">
    <h2>Login</h2>
    <form class="form-signin" action="{{ route('loginShipper') }}" method="post">
        @csrf

        @if (session('error'))
            <div class="alert alert-danger" role="alert">
                {{ session('error') }}
            </div>
        @endif

        <div class="form-group">
            <label for="inputUsername">Email</label>
            <input type="shipper_email" name="shipper_email" class="form-control username" value="{{ old("shipper_email") }}"
                   aria-describedby="emailHelp" placeholder="email">
        </div>

        <div class="form-group">
            <label for="inputPassword">Password</label>
            <input type="password" name="password" class="form-control password" placeholder="password">
            @error('password')
            <p class="text-danger">{{ $message }}</p>
            @enderror
        </div>

        <a href="{{ route('formRegisterShipper') }}">Dang ky</a>
        <br>

        <button type="submit" class="btn btn-primary">Ok</button>
    </form>

</div>

</body>
</html>
