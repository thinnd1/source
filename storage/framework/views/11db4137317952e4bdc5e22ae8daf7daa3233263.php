<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="<?php echo e(asset('shipper/css/bootstrap.css')); ?>" rel="stylesheet">
    <title>Login</title>
</head>
<body>
<div class="container">
    <h2>Login</h2>
    <form class="form-signin" action="<?php echo e(route('loginShipper')); ?>" method="post">
        <?php echo csrf_field(); ?>

        <?php if(session('error')): ?>
            <div class="alert alert-danger" role="alert">
                <?php echo e(session('error')); ?>

            </div>
        <?php endif; ?>

        <div class="form-group">
            <label for="inputUsername">Email</label>
            <input type="shipper_email" name="shipper_email" class="form-control username" value="<?php echo e(old("shipper_email")); ?>"
                   aria-describedby="emailHelp" placeholder="email">
        </div>

        <div class="form-group">
            <label for="inputPassword">Password</label>
            <input type="password" name="password" class="form-control password" placeholder="password">
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

        <a href="<?php echo e(route('formRegisterShipper')); ?>">Dang ky</a>
        <br>

        <button type="submit" class="btn btn-primary">Ok</button>
    </form>

</div>

</body>
</html>
<?php /**PATH /home/iceiceice/Documents/SOURCE/resources/views/shippers/login.blade.php ENDPATH**/ ?>