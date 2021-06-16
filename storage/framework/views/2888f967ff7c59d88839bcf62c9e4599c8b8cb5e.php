<?php $__env->startSection('admin_content'); ?>
<?php
                $message = Session::get('message');
                if($message){
                    echo '<span style="color:red">' .$message. '</span>';
                    Session::put('message',null);
                }
            ?>
<div class="row">
    <div class="col-12 col-sm-9 col-md-9">
        <div class="row">
            <div class="col-12 col-sm-6 col-md-6">
                <div class="card border border-primary mb-3">
                    <div class="card-header p-2 text-primary border-botton border-primary text-center">
                        Thông tin người mua
                    </div>
                    <div class="card-body">
                        <div class="card-form p-2">
                            <div class="row border-bottom">
                                <div class="col-12 col-sm-6 col-md-6 text-danger">
                                    Tên người mua:
                                </div>
                                <div class="col-12 col-sm-6 col-md-6 text-dark">
                                    <?php echo e($order_by_id->customer_name); ?>

                                </div>
                            </div>
                        </div>
                        <div class="card-form p-2">
                            <div class="row border-bottom">
                                <div class="col-12 col-sm-6 col-md-6 text-danger">
                                    Email:
                                </div>
                                <div class="col-12 col-sm-6 col-md-6 text-dark">
                                    <?php echo e($order_by_id->customer_email); ?>

                                </div>
                            </div>
                        </div>
                        <div class="card-form p-2">
                            <div class="row border-bottom">
                                <div class="col-12 col-sm-6 col-md-6 text-danger">
                                    Số điện thoại:
                                </div>
                                <div class="col-12 col-sm-6 col-md-6 text-dark">
                                    <?php echo e($order_by_id->customer_phone); ?>

                                </div>
                            </div>
                        </div>
                        <div class="card-form p-2">
                            <div class="row border-bottom">
                                <div class="col-12 col-sm-6 col-md-6 text-danger">
                                    Ngày đặt:
                                </div>
                                <div class="col-12 col-sm-6 col-md-6 text-dark">
                                    <?php echo e($order_by_id->created_at); ?>

                                </div>
                            </div>
                        </div>
                        <div class="card-form p-2">
                            <div class="row border-bottom">
                                <div class="col-12 col-sm-6 col-md-6 text-danger">
                                    Trạng thái đơn hàng
                                </div>
                                <div class="col-12 col-sm-6 col-md-6 text-dark current-order-status">
                                    <?php echo e($order_by_id->order_status); ?>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-6">
                <div class="card border border-primary mb-3">
                    <div class="card-header p-2 text-primary border-botton border-primary text-center">
                        Thông tin vận chuyển
                    </div>
                    <div class="card-body">
                        <div class="card-form p-2">
                            <div class="row border-bottom">
                                <div class="col-12 col-sm-6 col-md-6 text-danger">
                                    Tên người nhận:
                                </div>
                                <div class="col-12 col-sm-6 col-md-6 text-dark">
                                    <?php echo e($order_by_id->shipping_name); ?>

                                </div>
                            </div>
                        </div>
                        <div class="card-form p-2">
                            <div class="row border-bottom">
                                <div class="col-12 col-sm-6 col-md-6 text-danger">
                                    Địa chỉ giao hàng:
                                </div>
                                <div class="col-12 col-sm-6 col-md-6 text-dark">
                                    <?php echo e($order_by_id->shipping_address); ?>

                                </div>
                            </div>
                        </div>
                        <div class="card-form p-2">
                            <div class="row border-bottom">
                                <div class="col-12 col-sm-6 col-md-6 text-danger">
                                    Số điện thoại giao hàng:
                                </div>
                                <div class="col-12 col-sm-6 col-md-6 text-dark">
                                    <?php echo e($order_by_id->shipping_phone); ?>

                                </div>
                            </div>
                        </div>
                        <div class="card-form p-2">
                            <div class="row border-bottom">
                                <div class="col-12 col-sm-6 col-md-6 text-danger">
                                    Ghi chú đơn hàng:
                                </div>
                                <div class="col-12 col-sm-6 col-md-6 text-dark">
                                    <?php echo e($order_by_id->shipping_notes); ?>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card p-1 border border-primary">
                    <div class="card-header p-2 text-primary border-botton border-primary text-center">
                        Chi tiết đơn hàng
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr class="text-center">
                                        <th class="text-primary">Tên sản phẩm</th>
                                        <th class="text-primary">Ảnh</th>
                                        <th class="text-primary">Số lượng</th>
                                        <th class="text-primary">Size:</th>
                                        <th class="text-primary">Giá</th>
                                        <th class="text-primary">Tổng tiền</th>
                                    </tr>
                                </thead>
                                <tbody class="text-center content-center">
                                <?php
                                    $TongTien = 0;
                                    foreach ($order_detail as $key => $value) {
                                        $TongTien = $TongTien + $value->product_price*$value->product_sales_quantity;
                                    }
                                ?>
                                    <?php $__currentLoopData = $order_detail; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td><?php echo e($item->product_name); ?></td>
                                        <td><img src="../uploads/product/<?php echo e($item->product_image); ?>" width="75" height="75"></td>
                                        <td><?php echo e(number_format($item->product_sales_quantity, 0)); ?></td>
                                        <td><?php echo e($item->product_size); ?></td>
                                        <td><?php echo e(number_format($item->product_price, 0)); ?></td>
                                        <td><?php echo e(number_format($item->product_price*$item->product_sales_quantity, 0)); ?>

                                        </td>
                                    </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                                    <tr class="text-center">
                                        <th class="text-danger"></th>
                                        <th class="text-dark text-left">Tổng Tiền: </th>
                                        <th class="text-danger"></th>
                                        <th class="text-danger"></th>
                                        <th class="text-danger"></th>
                                        <th class="text-dark"><?php echo e(number_format($TongTien, 0)); ?><input class="TongGia" value="<?php echo e($TongTien); ?>" hidden></th>
                                        
                                    </tr>
                                    <tr class="text-center">
                                        <th class="text-danger"></th>
                                        <th class="text-dark text-left">Tổng số sản phẩm: </th>
                                        <th class="text-danger"></th>
                                        <th class="text-danger"></th>
                                        <th class="text-danger"></th>
                                        <th class="text-dark"><?php echo e(number_format($count_quantity, 0)); ?></th>
                                        
                                    </tr>
                                    <tr class="text-center">
                                        <th class="text-danger"></th>
                                        <th class="text-dark text-left">Phần trăm giảm giá: </th>
                                        <th class="text-danger"></th>
                                        <th class="text-danger"></th>
                                        <th class="text-danger"></th>
                                        <th class="text-dark show_discount"></th>
                                        
                                    </tr>
                                <tfoot>
                                    <tr class="text-center">
                                        <th class="text-danger"></th>
                                        <th class="text-danger text-left">Thành tiền thanh toán:</th>
                                        <th class="text-danger"></th>
                                        <th class="text-danger"></th>
                                        <th class="text-danger"></th>
                                        <th class="text-danger"><?php echo e(number_format($order_by_id->order_total, 0)); ?><input class="GiaThuc" value="<?php echo e($order_by_id->order_total); ?>" hidden></th>
                                        
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-12 col-sm-3 col-md-3">
        <div class="card p-1 border border-primary">
            <div class="card-header p-2 text-primary border-botton border-primary text-center">
                Hành động
            </div>
            <form role="form" action="<?php echo e(URL::to('/update-order/'.$order_by_id->order_id)); ?>" method="POST"
                enctype="multipart/form-data">
                <?php echo e(csrf_field()); ?>

                <div class="card-body">
                    <div class="col-12">
                        <select name="order_status" id="select-order-status" class="col-12 form-control input-sm m-bot15">
                            <option value="Đang chờ xử lý">Đang chờ xử lý</option>
                            <option value="Xác nhận đơn hàng">Xác nhận đơn hàng</option>
                            <option value="Đang giao hàng">Đang giao hàng</option>
                            <option value="Hủy đơn hàng">Hủy đơn hàng</option>
                            <option value="Xác nhận thanh toán">Xác nhận thanh toán</option>
                        </select>
                        <input type="submit" class="btn btn-primary col-12 mt-2" value="Xác Nhận"
                            onclick="return confirm('Xác nhận cập nhập ?')" />
                        <a href="<?php echo e(URL::to('/manage-order')); ?>"><input type="button" class="btn btn-danger col-12 mt-2"
                                value="Hủy" /></a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="<?php echo e(asset('/backend/vendor/jquery/jquery.min.js')); ?>"></script>
<script>
        var giaThuc = $('.GiaThuc').val();
        var tongGia = $('.TongGia').val();
        var discount = (100 -((parseInt(giaThuc)/parseInt(tongGia))*100));
        $('.show_discount').text(discount+'%');
        //choose order status
        $(document).ready(function () {
            var order_status = <?php echo json_encode($order_by_id, 15, 512) ?>;
            console.log(order_status);
            $("#select-order-status").val(order_status.order_status);
        })
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin_layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\KHOA LUAN WEBSITE BAN HANG\KHOA LUAN WEBSITE BAN HANG\SOURCE\resources\views/admin/view_order.blade.php ENDPATH**/ ?>