
<?php $__env->startSection('admin_content'); ?>
<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Danh mục</h1>
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
        <h6 class="m-0 font-weight-bold text-primary">Danh sách danh mục</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr class="text-center" style="background:#ffff00">
                        <th>Tên danh mục</th>
                        <th>Hiển thị</th>
                        <th>Sửa -- Xóa</th>
                    </tr>
                </thead>
                <tbody class="text-center content-center">
                    <?php $__currentLoopData = $all_category_product; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $cate_pro): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td style="color:red; font-weight: bold;"><?php echo e($cate_pro -> category_name); ?></td>
                        <td>
                            <span class="text-ellipsis">
                                <?php
                                            if($cate_pro -> category_status == 0){
                                        ?>
                                <a href="<?php echo e(URL::to('/unactive-category-product/'.$cate_pro ->category_id)); ?>"><span
                                        style="color: brown; font-size: 20px"
                                        class="fa fa-angle-double-down"></span></a>
                                <?php
                                        }else{
                                        ?>
                                <a href="<?php echo e(URL::to('/active-category-product/'.$cate_pro ->category_id)); ?>"><span
                                        style="color: blue; font-size: 20px" class="fa fa-angle-double-up"></span></a>
                                <?php
                                            }
                                        ?>
                            </span></td>
                        <td align="center">
                            <a href="<?php echo e(URL::to('/edit-category-product/'.$cate_pro->category_id)); ?>}" class="active"
                                ui-toggle-class="">
                                <i class="fa fa-edit text-success text-active"></i>
                            </a> -- 
                            <a onclick="return confirm('Bạn có chắn chắc muốn xóa không ?')"
                                href="<?php echo e(URL::to('/delete-category-product/'.$cate_pro->category_id)); ?>}" class="active"
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
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin_layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/iceiceice/Documents/SOURCE/resources/views/admin/all_category_product.blade.php ENDPATH**/ ?>