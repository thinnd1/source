<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>" />

    <title><?php echo $__env->yieldContent('title'); ?></title>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo e(asset('shipper/css/bootstrap.css')); ?>" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="<?php echo e(asset('shipper/css/sb-admin.css')); ?>" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo e(asset('shipper/font-awesome/css/font-awesome.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('shipper/css/mystylesheet.css')); ?>"/>
    <link type="text/css" href="<?php echo e(asset('shipper/css/style.css')); ?>" rel="stylesheet">
    <!-- Page Specific CSS -->
</head>

<body>
<?php echo $__env->make('shippers.navbar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->yieldContent('content'); ?>

<!-- JavaScript -->
<script src="<?php echo e(asset('shipper/js/jquery-3.4.1.min.js')); ?>"></script>
<script src="<?php echo e(asset('shipper/js/jquery.validate.min.js')); ?>"></script>
<script src="<?php echo e(asset('shipper/js/bootstrap.js')); ?>"></script>
<script src="<?php echo e(asset('shipper/js/script.js')); ?>"></script>

<!-- Page Specific Plugins -->
<script src="<?php echo e(asset('http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js')); ?>"></script>
<script src="<?php echo e(asset('shipper/js/tablesorter/jquery.tablesorter.js')); ?>"></script>
<script src="<?php echo e(asset('shipper/js/tablesorter/tables.js')); ?>"></script>

<?php echo $__env->yieldContent('js'); ?>

</body>
</html>
<?php /**PATH /home/iceiceice/Documents/SOURCE/resources/views/shippers/index.blade.php ENDPATH**/ ?>