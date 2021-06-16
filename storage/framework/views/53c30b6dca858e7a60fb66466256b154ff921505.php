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
                        <th>Tên sản phẩm</th>
                        <th>Giá sản phẩm</th>
                        <th>Hình sản phẩm</th>
                        <th>Danh mục</th>
                        <th>Thương hiệu</th>
                        <th>Số lượng</th>
                        <th>Hiển thị</th>
                        <th>Sửa -- Xóa</th>
                    </tr>
                </thead>
                <tbody class="text-center">
                        <?php $__currentLoopData = $all_product; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $pro): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                            <td style="color: red; font-weight: bold;"><?php echo e($pro -> product_name); ?></td>
                            <td><?php echo e(number_format($pro -> product_price, 2)); ?></td>
                            <td><img src="/uploads/product/<?php echo e($pro -> product_image); ?>" width="100" height="100"></td>
                            <td><?php echo e($pro -> category_name); ?></td>
                            <td><?php echo e($pro -> brand_name); ?></td>
                            <td></td>
                            <td>
                                <span class="text-ellipsis">
                                    <?php
                                        if($pro -> product_status == 0){
                                    ?>
                                             <a href="<?php echo e(URL::to('/unactive-product/'.$pro ->product_id)); ?>"><span style="color: brown; font-size: 20px" class="fa fa-angle-double-down"></span></a>
                                    <?php
                                    }else{
                                    ?>
                                        <a href="<?php echo e(URL::to('/active-product/'.$pro ->product_id)); ?>"><span style="color: blue; font-size: 20px"  class="fa fa-angle-double-up"></span></a>
                                    <?php
                                        }
                                    ?>
                                </span></td>
                            <td>
                                <a href="<?php echo e(URL::to('/edit-product/'.$pro->product_id)); ?>}" class="active" ui-toggle-class="">
                                    <i class="fa fa-edit text-success text-active"></i>
                                </a> --
                                <a onclick="return confirm('Bạn có chắn chắc muốn xóa không ?')" href="<?php echo e(URL::to('/delete-product/'.$pro->product_id)); ?>}" class="active" ui-toggle-class="">
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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin_layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/iceiceice/Documents/SOURCE/resources/views/admin/all_product.blade.php ENDPATH**/ ?>