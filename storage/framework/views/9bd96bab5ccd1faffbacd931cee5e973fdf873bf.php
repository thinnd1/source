<div id="wrapper">
    <!-- Sidebar -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <li><a href="<?php echo e(route('list-order')); ?>"><i class="fa fa-dashboard"></i> Đơn hàng </a></li>
                <li><a href="<?php echo e(route('history_shipper')); ?>"><i class="fa fa-dashboard"></i> Lịch sử giao hàng </a></li>
                <li><a href="<?php echo e(route('logout')); ?>" onclick="return confirm('Bạn có muốn thoát ko ?')"><i class="fa fa-table"></i> Log Out </a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
</div>
<?php /**PATH /home/iceiceice/Documents/SOURCE/resources/views/shippers/navbar.blade.php ENDPATH**/ ?>