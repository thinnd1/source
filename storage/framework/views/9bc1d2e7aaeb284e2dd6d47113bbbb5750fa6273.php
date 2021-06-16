<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="<?php echo e(asset('shipper/css/bootstrap.css')); ?>" rel="stylesheet">

    <title> Register </title>
</head>
<body>
<div class="container">
    <h2>Đăng ký thành viên Shipper</h2>
    <form class="form-signup" action="<?php echo e(route('registerShipper')); ?>" method="post">
        <?php echo csrf_field(); ?>

        <div class="form-group">
            <label for="inputUsername">Họ tên*</label>
            <input type="text" name="shipper_name" class="form-control username" value="<?php echo e(old("shipper_name")); ?>" id="inputUsername"
                   placeholder="Điền tên">
            <?php $__errorArgs = ['shipper_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
            <p class="text-danger"><?php echo e($message); ?></p>
            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
        </div>

        <div class="form-group">
            <label for="inputPassword">Mật Khẩu</label>
            <input type="password" name="password" class="form-control password" value="<?php echo e(old("password")); ?>" id="inputPassword"
                   placeholder="password">
            <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
            <p class="text-danger"><?php echo e($message); ?></p>
            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
        </div>

        <div class="form-group">
            <label for="inputUsername">Số điện thoại</label>
            <input type="text" name="shipper_phone" class="form-control username" value="<?php echo e(old("shipper_phone")); ?>" id="inputnom"
                   placeholder="Số điện thoại">
            <?php $__errorArgs = ['shipper_phone'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
            <p class="text-danger"><?php echo e($message); ?></p>
            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
        </div>

        <div class="form-group">
            <label for="inputUsername">Email</label>
            <input type="email" name="shipper_email" class="form-control username" value="<?php echo e(old("shipper_email")); ?>" id=""
                   placeholder="Email ">
            <?php $__errorArgs = ['shipper_email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
            <p class="text-danger"><?php echo e($message); ?></p>
            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
        </div>

        <p>Ban co tai khoan, <a href="<?php echo e(route('formLoginShipper')); ?>"> Dang nhap </a></p>
        <button type="submit" class="btn btn-primary">Đăng ký</button>
    </form>
</div>

</body>
</html>
<?php /**PATH /home/iceiceice/Documents/SOURCE/resources/views/shippers/signup.blade.php ENDPATH**/ ?>