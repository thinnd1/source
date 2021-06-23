<?php $__env->startSection('content_update'); ?>

    <meta name="_token" content="<?php echo e(csrf_token()); ?>"/>
    <section id="cart_items">
        <div class="" style="width: 100%">
            <div class="breadcrumbs">
                <ol class="breadcrumb">
                    <li><a href="<?php echo e(URL::to('/')); ?>">Home</a></li>
                    <li class="active">Giỏ hàng</li>
                </ol>
            </div>
            <div class="table-responsive cart_info" style="margin: -60px 0 20px 0">
                <?php
                $content = Cart::content();
                ?>
                <table class="table table-condensed">
                    <thead>
                    <tr class="cart_menu" style="text-align:center">
                        <td></td>
                        <td class="description">Sản phẩm</td>
                        
                        <td class="price">Giá</td>
                        <td class="size">Size</td>
                        <td class="quantity">Số lượng</td>
                        <td class="total">Tổng tiền</td>
                        <td></td>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $total_order = 0 ?>
                    <?php $__currentLoopData = $content; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $v_content): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr style="text-align:center">
                            <td><img src="/uploads/product/<?php echo e($v_content->options->image); ?>" width="75"
                                     height="75">
                            </td>
                            <td class="cart_description">
                                <a href="<?php echo e(URL::to('/chi-tiet-san-pham/'.$v_content->id)); ?>">
                                    <h5><?php echo e($v_content->name); ?></h5>
                                </a>
                            </td>

                            <td class="cart_price">
                                <?php echo e(number_format($v_content->price).' '.'VND'); ?>

                            </td>
                            <td class="cart_size">&nbsp;&nbsp;<?php echo e($v_content->options->size); ?>

                            </td>
                            <td class="cart_quantity">
                                <input class="cart_quantity_input text-center" style="width: 50px; margin-left: 20px"
                                       type="number" min="0" max="" name="cart_qty" value="<?php echo e($v_content->qty); ?>">
                                <input type="hidden" value="<?php echo e($v_content->rowId); ?>" name="rowId_cart" class="rowId_cart"
                                       id="">
                            </td>
                            <td class="cart_total">
                                <p class="cart_total_price">
                                    <?php
                                    $subtotal = $v_content->price * $v_content->qty;
                                    $total_order = $total_order + $subtotal;
                                    echo number_format($subtotal, 0) . ' ' . 'VND';
                                    ?>
                                </p>
                            </td>
                            <td class="cart_delete">
                                <a class="cart_quantity_delete"
                                   href="<?php echo e(URL::to('/delete-to-cart/'.$v_content->rowId)); ?>"><i
                                        class="fa fa-times"></i></a>
                            </td>
                        </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
    <section id="do_action">
        <div class="row">
            <div class="col-sm-6">
                <div class="total_area">
                    <ul>
                        <li>Phí vận chuyển <span>Free</span></li>
                        <li>Tổng Tiền ( Tạm tính ) <span><?php echo e(number_format($total_order, 0).' '.'VND'); ?></span></li>
                    </ul>
                    <?php
                    $customer_id = Session::get('customer_id');
                    if($customer_id != NULL){
                    ?>
                    <a class="btn btn-default check_out" href="<?php echo e(URL::to('/payment')); ?>">Đặt hàng</a>
                    <?php
                    }else{
                    ?>
                    <a class="btn btn-default check_out" href="<?php echo e(URL::to('/login-checkout')); ?>">Đặt hàng</a>
                    <?php
                    }
                    ?>
                </div>
            </div>
        </div>
    </section>
    <div class="recommended_items col-sm-12" style="margin: -120px 0 0 0">
        <!--recommended_items-->
        <h2 class="title text-center">Gợi ý sản phẩm</h2>

        <div id="recommended-item-carousel" class="carousel slide">
            
            <div class="carousel-inner">
                <div class="item active">
                    <?php $__currentLoopData = $related_product; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $relate): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <input name="product_id_hidden" id="product_id" type="hidden"
                                       value="<?php echo e($relate->product_id); ?>"/>
                                <input name="qty" type="hidden" min="0" value="1"/>
                                <a href="<?php echo e(URL::to('/chi-tiet-san-pham/'.$relate->product_id)); ?>">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img style="height:250px"
                                                 src="/uploads/product/<?php echo e($relate->product_image); ?>"
                                                 alt=""/>
                                            <h2><?php echo e(number_format($relate->product_price).' '.'VND'); ?></h2>
                                            <p><strong><?php echo e($relate->product_name); ?><strong></strong></p>
                                            <p><?php echo e($relate->brand_name); ?> </p>
                                            
                                            <button class="btn btn-default show-modal-product-detail"
                                                    data-toggle="modal"
                                                    data-target="#<?php echo e($relate->product_id); ?>-modal">
                                                <i class="fa fa-shopping-cart"></i>
                                                Thêm vào giỏ hàng
                                            </button>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-sm-12 text-center"> <?php echo e($related_product->links()); ?></div>
                </div>
            </div>
            
        </div>
        <!-- Central Modal Medium Info -->
        <div class="modal fade" id="modal-product-detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog modal-notify modal-info" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Header-->
                    <input class="modal-product-id" id="modal-product-id" type="text" readonly hidden/>
                    <div class="col-5 col-md-7 col-lg-7 col-xl-7">
                        <img id="modal-product-image"
                             style="height:200px; width: 200px; margin-top: 30px; margin-left: 40px" alt=""/>
                    </div>
                    <!--Body-->
                    <div class="col-5 col-md-5 col-lg-5 col-xl-5">
                        <p style="font-size: 20px; margin-top: 10px" id="modal-product-name"
                           class=""></p>
                        <div class="show-notification">
                            <p style="margin-top: 10px" id="modal-product-brand"></p>
                            <p id="modal-product-category"></p>
                            <label for="product-size">Size: </label>
                            <select class="form-control modal-product-size" style="width: 85px" id="product-size">
                            </select>
                            <label for="quantity">Số lượng:</label>
                            <input style="width: 85px" class="form-control modal-product-quantity" id="quantity"
                                   name="qty"
                                   type="number" min="0" max="" value="1"/>
                        </div>
                    </div>

                    <!--Footer-->
                    <div class="modal-footer" style="margin-top: 0; border-bottom-right-radius: 1px">
                        <a type="button" class="btn btn-primary btn-add-to-cart-modal">Thêm ngay <i
                                class="far fa-gem ml-1 text-white"></i></a>
                        <a type="button" class="btn btn-danger" data-dismiss="modal" style="margin-top: 15px">Hủy </a>
                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <script type="text/javascript" src="<?php echo e(asset('/backend/apriori-js/jquery/jquery-1.7.2.min.js')); ?>"></script>
        <script>
            $('.cart_quantity_input').on('change', function (e) {
                var quantity = $(this)[0].value;
                var rowId = $(this).parent()[0].children[1].value;
                e.preventDefault();
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                });
                $.ajax({
                    url: "<?php echo e(url('/update-cart-quanlity')); ?>",
                    method: 'post',
                    data: {
                        cart_qty: quantity,
                        rowId_cart: rowId
                    },
                    success: function (result) {
                        location.reload();
                    },
                    error: function (result) {
                        alert("Cập nhập thất bại!");
                    }
                });
            });

        </script>

        <script>
            $(document).ready(function () {
                //add-to-cart at product relate
                $('.btn-add-to-cart-relate').click(function (e) {
                    e.preventDefault();
                    $.ajaxSetup({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                        }
                    });
                    $.ajax({
                        url: "<?php echo e(url('/save-cart')); ?>",
                        method: 'post',
                        data: {
                            product_id_hidden: $(this).parent()[0].children[2].value,
                            qty: $(this).parent()[0].children[1].value
                        },
                        success: function (result) {
                            $(".count_cart").text(result.cart_count);
                            alert("Thêm sản phẩm vô giỏ hàng thành công!");
                        },
                        error: function (result) {
                            alert("Thêm sản phẩm vô giỏ hàng thất bại!");
                        }
                    });
                });

                // JS for reccomment product
                $('.show-modal-product-detail').click(function (e) {
                    $("#modal-product-detail").modal('show');

                    $.ajax({
                        url: "<?php echo e(url('/get-product')); ?>",
                        method: 'get',
                        data: {
                            product_id: $(this).parents()[4].children[0].value
                        },
                        success: function (data) {
                            $("#modal-product-name").text(data.product[0].product_name);
                            $("#modal-product-image").attr('src', '/uploads/product/' +
                                data.product[0].product_image);
                            $("#modal-product-brand").text(data.product[0].brand_name);
                            $("#modal-product-category").text(data.product[0].category_name);
                            $("#modal-product-id").val(data.product[0].product_id);
                        }
                    });
                });

                $('.show-modal-product-detail').click(function (e) {
                    var count_products_quantity = 0;
                    $.ajax({
                        url: "<?php echo e(url('/get-product-detail')); ?>",
                        method: 'get',
                        data: {
                            product_id: $(this).parents()[4].children[0].value
                        },
                        success: function (data) {
                            $(".option-size").remove();
                            $('.notify-message').remove();
                            var products_detail = data.product_detail;
                            products_detail.forEach(element => {
                                if (element.product_quantity > 0) {
                                    count_products_quantity = count_products_quantity + 1;
                                    var html = `<option class = "option-size" value_quantity="` + element.product_quantity + `" value="` + element.product_size + `">` + element.product_size + `</option>`;
                                    $(".modal-product-size").append(html);
                                }
                            });
                            if (count_products_quantity == 0) {
                                $('.modal-product-quantity').val("0");
                                $('.btn-add-to-cart-modal').hide();
                                var notify = `<p class="text-danger notify-message" style="font-size: 15px">Sản phẩm hết hàng!</p>`;
                                $('.show-notification').append(notify)
                            }
                            if (count_products_quantity > 0) {
                                $('.modal-product-quantity').val("1");
                                $('.btn-add-to-cart-modal').show();

                            }
                        }
                    });
                });

                $('.modal-product-quantity').keyup(function () {
                    var product_quantity = $('.option-size').attr("value_quantity");
                    var inputCustomer = $('.modal-product-quantity').val();
                    if (parseInt(inputCustomer) >= parseInt(product_quantity)) {
                        $('.modal-product-quantity').val(product_quantity);
                    }
                    if (parseInt(inputCustomer) <= 0) {
                        $('.modal-product-quantity').val("0");
                    }
                })

                $('.modal-product-quantity').change(function () {
                    var product_quantity = $('.option-size').attr("value_quantity");
                    var inputCustomer = $('.modal-product-quantity').val();
                    if (parseInt(inputCustomer) >= parseInt(product_quantity)) {
                        $('.modal-product-quantity').val(product_quantity);
                    }
                    if (parseInt(inputCustomer) <= 0) {
                        $('.modal-product-quantity').val("0");
                    }
                })

                //add-to-cart
                $('.btn-add-to-cart-modal').click(function (e) {
                    debugger;
                    e.preventDefault();
                    $.ajaxSetup({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                        }
                    });
                    $.ajax({
                        url: "<?php echo e(url('/save-cart-with-size')); ?>",
                        method: 'post',
                        data: {
                            product_id_hidden: $(this).parents().find("#modal-product-id").val(),
                            qty: $(this).parents().find(".modal-product-quantity").val(),
                            product_size: $(this).parents().find(".modal-product-size").val()
                        },
                        success: function (result) {
                            $("#modal-product-detail").modal('hide');
                            $(".count_cart").text(result.cart_count);
                            location.reload();
                        },
                        error: function (result) {
                            alert("Thêm sản phẩm vô giỏ hàng thất bại!");
                        }
                    });
                });
            });

        </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout_update', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\source\resources\views/pages/cart/show_cart.blade.php ENDPATH**/ ?>