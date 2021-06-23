<?php $__env->startSection('title', 'List Order'); ?>
<link href="<?php echo e(asset('shipper/css/style.css')); ?>" rel="stylesheet">
<?php $__env->startSection('content'); ?>

    <div id="wrapper">
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li class="active">
                            <i class="fa fa-dashboard"></i> Nhập lý do
                        </li>
                    </ol>
                </div>
            </div><!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group row">
                        <form action="<?php echo e(route('ly_do_fail', ['id' => $ly_do->id_shipper_order])); ?>" method="POST">
                            <?php echo csrf_field(); ?>

                            <label for="inputUser" class="col-sm-2 col-form-label">Nhập lý do:</label>
                            <div class="col-sm-10">
                                <input type="text" name="note_ly_do">
                            </div>

                            <button type="submit" class="btn btn-success">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('shippers.index', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\source\resources\views/shippers/ly_do_fail.blade.php ENDPATH**/ ?>