<?php $__env->startSection('title', 'Lịch sử nhận hàng'); ?>
<link href="<?php echo e(asset('shipper/css/style.css')); ?>" rel="stylesheet">
<?php $__env->startSection('content'); ?>

    <div id="wrapper">
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li class="active"><i class="fa fa-dashboard"></i>Lịch sử nhận hàng</li>
                    </ol>
                </div>
            </div><!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-6 h2">
                            Lịch sử nhận hàng
                        </div>
                    </div>

                    <div class="table-responsive">

                        <h3>Tổng đơn hàng </h3>
                        <table class="table table-bordered table-hover tablesorter">
                            <thead>
                            <tr>
                                <th>STT</th>
                                <th>Mã Đơn hàng</th>
                                <th>Tên Khách Hàng</th>
                                <th>Tổng giá tiền</th>
                                <th>Địa chỉ</th>
                                <th>Lý do fail</th>
                                <th width="15%">Trạng thái</th>
                            </tr>
                            </thead>
                            <tobdy>
                                <?php $__currentLoopData = $lich_su_nhan; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td><?php echo e($index + 1); ?></td>
                                        <td><?php echo e($item->order_id); ?></td>
                                        <td><?php echo e($item->shipping_name); ?></td>
                                        <td><?php echo e($item->order_total); ?></td>
                                        <td><?php echo e($item->shipping_address); ?></td>
                                        <td><?php echo e($item->note); ?></td>
                                        <td>
                                            <?php if($item->order_status == "Xác nhận thanh toán"): ?>
                                                <button class="btn btn-success">Thành công</button>
                                            <?php elseif($item->order_status == "Giao Hàng Thất Bại"): ?>
                                                <button class="btn btn-warning">Thất Bại</button>
                                                <a href="<?php echo e(route('form_ly_do', ['id' => $item->id_shipper_order])); ?>">Lý do</a>
                                            <?php else: ?>
                                                <a href="<?php echo e(route('order_thanh_cong', ['id' => $item->order_id])); ?>" class="btn btn-success">Thành công</a>
                                                <a href="<?php echo e(route('order_that_bai', ['id' => $item->order_id])); ?>" class="btn btn-warning">Thất Bại</a>
                                            <?php endif; ?>

                                        </td>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tobdy>
                        </table>
                    </div>
                </div>
            </div><!-- /.row -->
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('shippers.index', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\source\resources\views/shippers/lich_su_nhan_hang.blade.php ENDPATH**/ ?>