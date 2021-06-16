<?php $__env->startSection('title', 'List Order'); ?>
<link href="<?php echo e(asset('shipper/css/style.css')); ?>" rel="stylesheet">
<?php $__env->startSection('content'); ?>

    <div id="wrapper">
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li class="active"><i class="fa fa-dashboard"></i>Danh sách đơn hàng</li>
                    </ol>
                </div>
            </div><!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="coL-lg-6 h2">
                            Danh sách đơn hàng
                        </div>
                    </div>

                    <div class="table-responsive">

                        <h3>Tổng đơn hàng : <?php echo e(count($all_order)); ?> </h3>
                        <table class="table table-bordered table-hover tablesorter">
                            <thead>
                            <tr>
                                <th>Số thứ tự</th>
                                <th>Tên người đặt</th>
                                <th>Ngày đặt</th>
                                <th>Tổng giá tiền</th>
                                <th>Tình trạng</th>
                                <th width="10%">Đặt hàng</th>
                            </tr>
                            </thead>
                            <tobdy>
                                <?php $__currentLoopData = $all_order; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td><?php echo e($index + 1); ?></td>
                                        <td><?php echo e($order->customer_name); ?></td>
                                        <td><?php echo e($order->created_at); ?></td>
                                        <td><?php echo e($order->order_total); ?></td>
                                        <td><?php echo e($order->order_status); ?></td>
                                        <td>
                                            <a href="<?php echo e(route('list-order-detail', ['id' => $order->shipping_id ])); ?>" class="btn btn-warning">Chi tiết</a>
                                        </td>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tobdy>
                        </table>
                    </div>
                    <?php echo e($all_order->links()); ?>

                </div>
            </div><!-- /.row -->
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('shippers.index', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\KHOA LUAN WEBSITE BAN HANG\KHOA LUAN WEBSITE BAN HANG\SOURCE\resources\views/shippers/home.blade.php ENDPATH**/ ?>