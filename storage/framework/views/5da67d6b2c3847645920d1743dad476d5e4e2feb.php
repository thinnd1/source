<?php $__env->startSection('admin_content'); ?>
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Sản phẩm</h1>
    <?php
    $message = Session::get('message');
    if($message){
        echo '<span style="color:red">' .$message. '</span>';
        Session::put('message',null);
    }
    ?>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Danh sách sản phẩm</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr class="text-center" style="background-color: #ffff00; color:black">
                        <th>Mã HD</th>
                        <th>Tên sản phẩm</th>
                        <th>Giá sản phẩm</th>
                        <th>lÝ DO</th>
                        <th> </th>
                    </tr>
                    </thead>
                    <tbody class="text-center">
                    <?php $__currentLoopData = $all_product; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $pro): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td><?php echo e($pro->id_order); ?></td>
                            <td><?php echo e($pro->product_name); ?></td>
                            <td><?php echo e($pro->order_total); ?></td>
                            <td><?php echo e($pro->ly_do); ?></td>
                            <td> Xac Nhan</td>
                        </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin_layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\source\resources\views/admin/return_goods.blade.php ENDPATH**/ ?>