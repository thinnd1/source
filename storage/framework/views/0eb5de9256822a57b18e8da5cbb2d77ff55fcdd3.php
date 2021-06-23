<?php $__env->startSection('content_update'); ?>


    <?php $__currentLoopData = $details_product; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>


        <div class="product-details">
            <meta name="_token" content="<?php echo e(csrf_token()); ?>"/>
            <div class="col-sm-5">
                <div class="view-product">
                    <img src="<?php echo e(URL::to('/uploads/product/'.$value ->product_image)); ?>" alt=""/>

                </div>
                <div id="similar-product" class="carousel slide" data-ride="carousel">

                    <!-- Wrapper for slides -->
                

                <!-- Controls -->
                    <a class="left item-control" href="#similar-product" data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a class="right item-control" href="#similar-product" data-slide="next">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>

            </div>
            <div class="col-sm-7">
                <div class="card">
                    <!--/product-information-->
                    <form>
                        <div class="card-header">
                            <input id="product_id_hidden" name="product_id_hidden" type="hidden"
                                   value="<?php echo e($value->product_id); ?>"/>
                            <h2 style="font-size: 40px; color: #FE980F"><?php echo e($value->product_name); ?></h2>
                        </div>
                        <div class="card-body">
                            <div class="card-title" style="margin-top: 20px">
                                <span style="font-size: 25px"><?php echo e(number_format($value->product_price).' '.'VND'); ?></span>
                            </div>
                            <div class="card-text">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="product-size">Size: </label>
                                            <select class="form-control product-size" style="width: 100px"
                                                    id="product-size">
                                                <?php $__currentLoopData = $all_product_detail; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <option
                                                        value="<?php echo e($item->product_size); ?>"><?php echo e($item->product_size); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </select>
                                        </div>
                                        <label for="quantity">Số lượng:</label>
                                        <input style="width: 100px" class="form-control quantity-input" id="quantity"
                                               name="qty"
                                               type="number"
                                               min="0" max="<?php echo e($item->product_quantity); ?>" value="1"/>
                                    </div>
                                </div>
                                <div class="row" style="margin-top: 20px">
                                    <button id="btn-buy-now" class="btn btn-fefault btn-success cart btn-buy-now">
                                        <i class="fa fa-shopping-cart"></i>
                                        Mua ngay
                                    </button>
                                    <button style="color:white" id="btn-add-to-cart"
                                            class="btn btn-info cart btn-add-to-cart">
                                        <i class="fa fa-shopping-cart"></i>
                                        Thêm vào giỏ hàng
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                    
                    <p><b>Trạng thái: <span class="show-quantity"></span><span class="sold-out text-danger"></span></b>
                    </p>
                    <p><b>Thương hiệu:</b> <?php echo e($value->brand_name); ?> </p>
                    <p><b>Danh mục:</b> <?php echo e($value->category_name); ?> </p>
                </div>
                <!--/product-information-->
            </div>
        </div>



        <div class="category-tab shop-details-tab " style="margin: -40px 0 0 0">
            <!--category-tab-->
            <div class="col-sm-12">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#details" data-toggle="tab">Chi tiết</a></li>
                    
                </ul>
            </div>
            <div class="tab-content ">
                <div class="tab-pane fade active in" id="details">
                    <p><?php echo $value->product_content; ?></p>
                </div>
                <div class="tab-pane fade " id="reviews">
                    <div class="col-sm-12">
                        <ul>
                            <li><a href=""><i class="fa fa-user"></i>EUGEN</a></li>
                            <li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
                            <li><a href=""><i class="fa fa-calendar-o"></i>31 DEC 2014</a></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore
                            et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                            nisi ut
                            aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit
                            esse
                            cillum dolore eu fugiat nulla pariatur.</p>
                        <p><b>Write Your Review</b></p>

                        <form action="#">
                    <span>
                        <input type="text" placeholder="Your Name"/>
                        <input type="email" placeholder="Email Address"/>
                    </span>
                            <textarea name=""></textarea>
                            <b>Rating: </b> <img src="images/product-details/rating.png" alt=""/>
                            <button type="button" class="btn btn-default pull-right">
                                Submit
                            </button>
                        </form>
                    </div>
                </div>

            </div>
        </div>

    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

    <div class="recommended_items">
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
                                                 src="../uploads/product/<?php echo e($relate->product_image); ?>"
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
        <!-- Central Modal Medium Info -->
    </div>
    <script src="<?php echo e(asset('/frontend/js/jquery.js')); ?>"></script>
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

            //check quantity input
            $('.quantity-input').keyup(function () {
                var product_quantity = $('.quantity-input').attr("max");
                var inputCustomer = $('.quantity-input').val();
                console.log(product_quantity);
                console.log(inputCustomer);
                if (parseInt(inputCustomer) >= parseInt(product_quantity)) {
                    $('.quantity-input').val(product_quantity);
                }
                if (parseInt(inputCustomer) <= 0) {
                    $('.quantity-input').val("0");
                }
            })

            $('.quantity-input').change(function () {
                var product_quantity = $('.quantity-input').attr("max");
                var inputCustomer = $('.quantity-input').val();
                if (parseInt(inputCustomer) >= parseInt(product_quantity)) {
                    $('.quantity-input').val(product_quantity);
                }
                if (parseInt(inputCustomer) <= 0) {
                    $('.quantity-input').val("0");
                }
            })

            //add-to-cart
            $('.btn-buy-now').click(function (e) {
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
                        product_id_hidden: $("#product_id_hidden").val(),
                        qty: $("#quantity").val(),
                        product_size: $('#product-size :selected').val()
                    },
                    success: function (result) {
                        $(".count_cart").text(result.cart_count);
                        window.open("<?php echo e(URL::to('/show-cart')); ?>", "_self");
                    },
                    error: function (result) {
                        alert("Thêm sản phẩm vô giỏ hàng thất bại!");
                    }
                });
            });

            //add-to-cart at product detail
            $('.btn-add-to-cart').click(function (e) {
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
                        product_id_hidden: $("#product_id_hidden").val(),
                        qty: $("#quantity").val(),
                        product_size: $('#product-size :selected').val()
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

            //get quantity
            $('.product-size').click(function () {
                var product_id = $("#product_id_hidden").val();
                var product_size = $('#product-size :selected').val();
                $.ajax({
                    url: "<?php echo e(url('/get-quantity')); ?>",
                    method: 'get',
                    data: {
                        product_id: product_id,
                        product_size: product_size
                    },
                    success: function (data) {
                        if (data.product_quantity <= 0) {
                            $(".sold-out").text("Hết Hàng");
                            $(".show-quantity").text("");
                            $("#btn-add-to-cart").hide();
                            $("#btn-buy-now").hide();
                        } else {
                            $(".show-quantity").text("Còn Hàng");
                            $(".sold-out").text("");
                            $("#btn-add-to-cart").show();
                            $("#btn-buy-now").show();
                        }
                        $("#quantity").attr('max', data.product_quantity);
                    }
                });
            });

            //get quantity auto show without click
            $.ajax({
                url: "<?php echo e(url('/get-quantity')); ?>",
                method: 'get',
                data: {
                    product_id: $("#product_id_hidden").val(),
                    product_size: $('#product-size :selected').val()
                },
                success: function (data) {
                    if (data.product_quantity <= 0) {
                        $(".sold-out").text("Hết Hàng");
                        $(".show-quantity").text("");
                        $("#btn-add-to-cart").hide();
                        $("#btn-buy-now").hide();
                    } else {
                        $(".show-quantity").text("Còn Hàng");
                        $(".sold-out").text("");
                        $("#btn-add-to-cart").show();
                        $("#btn-buy-now").show();
                    }
                    $("#quantity").attr('max', data.product_quantity);
                }
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
                        $("#modal-product-image").attr('src', '../uploads/product/' +
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
                    },
                    error: function (result) {
                        alert("Thêm sản phẩm vô giỏ hàng thất bại!");
                    }
                });
            });
        });

    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout_update_v3', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\source\resources\views/pages/product/show_details.blade.php ENDPATH**/ ?>