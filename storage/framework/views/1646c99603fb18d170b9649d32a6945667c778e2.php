<?php $__env->startSection('admin_content'); ?>
<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Quản lý hóa đơn</h1>
<?php
                $message = Session::get('message');
                if($message){
                    echo '<span style="color:red">' .$message. '</span>';
                    Session::put('message',null);
                }
            ?>
<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header">
        <form action="<?php echo e(URL::to('/manage-order')); ?>" , method="GET">
            <h6 class="m-0 font-weight-bold text-left text-primary">Danh sách hóa đơn</h6>
            <div class="row input-group input-group-sm mb-3 col-6">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="select-order-status">Lọc theo: </label>
                </div>
                <select class="custom-select" id="select-order-status" name="order_status">
                    <option selected value="Đang chờ xử lý">Đang chờ xử lý</option>
                    <option value="Xác nhận đơn hàng">Xác nhận đơn hàng</option>
                    <option value="Đang giao hàng">Đang giao hàng</option>
                    <option value="Hủy đơn hàng">Hủy đơn hàng</option>
                    <option value="Xác nhận thanh toán">Xác nhận thanh toán</option>
                    <option value="Giao Hàng Thất Bại">Giao Hàng Thất Bại</option>
                    <option value="Xem tất cả">Xem tất cả</option>
                </select>
            </div>
            <button class="btn btn-sm btn-primary submit-choose status" type="submit"> Submit</button>
        </form>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>Tên người đặt</th>
                        <th>Ngày đặt</th>
                        <th>Tổng giá tiền</th>
                        <th>Tình trạng</th>
                        <th class="text-center">Chú ý</th>
                        <th class="text-center">Xem -- Xóa</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $__currentLoopData = $all_order; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($order -> customer_name); ?></td>
                        <td><?php echo e($order -> created_at); ?></td>
                        <td><?php echo e(number_format($order -> order_total, 0)); ?> VND</td>
                        <td><?php echo e($order -> order_status); ?></td>
                        <td class="text-center"><?php echo e(isset($order->note) ? $order->note : ''); ?></td>
                        <td class="text-center">
                            <a href="<?php echo e(URL::to('/view-order/'.$order->order_id)); ?>}" class="active" ui-toggle-class="">
                                <i class="fa fa-edit text-success text-active"></i>
                            </a> --
                            <a onclick="return confirm('Bạn có chắn chắc muốn xóa không ?')"
                                href="<?php echo e(URL::to('/delete-order/'.$order->order_id)); ?>}" class="active"
                                ui-toggle-class="">
                                <i class="fa fa-times text-danger text"></i>
                            </a>
                        </td>
                    </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="<?php echo e(asset('/backend/vendor/jquery/jquery.min.js')); ?>"></script>
<script>
    var order_status = <?php echo json_encode($order_status, 15, 512) ?>;
    $("#select-order-status").val(order_status);
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin_layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\source\resources\views/admin/manage_order.blade.php ENDPATH**/ ?>