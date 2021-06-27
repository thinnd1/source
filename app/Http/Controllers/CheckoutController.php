<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;

use App\Http\Requests;
use Session;
use Cart;
use Illuminate\Support\Facades\Redirect;

session_start();

class CheckoutController extends Controller
{
    public function AuthLogin()
    {
        $admin_id = Session::get('admin_id');
        if ($admin_id) {
            return Redirect::to('dashboard');
        } else {
            return Redirect::to('admin')->send();
        }
    }

    public function AuthLoginCustomer()
    {
        $customer_id = Session::get('customer_id');
        if ($customer_id) {
            return Redirect::to('payment');
        } else {
            return Redirect::to('login-checkout')->send();
        }
    }

    public function AuthContentCart()
    {
        $cart_count = Session::get('cart_count');
        if ($cart_count) {
            return Redirect::to('payment');
            Session::put('cart_count', null);
        } else {
            return Redirect::to('trang-chu')->send();
            Session::put('cart_count', null);
        }
    }

    public function login_checkout()
    {
        $cate_product = DB::table('tbl_category_product')->where('category_status', '1')->orderby('category_name', 'asc')->get();

        $brand_product = DB::table('tbl_brand')->where('brand_status', '1')->orderby('brand_name', 'asc')->get();

        $all_slide = DB::table('tbl_slide')->where('tbl_slide.slide_status', '1')->get();

        $selling_product = DB::table('tbl_order_detail')
            ->join('tbl_product', 'tbl_product.product_id', '=', 'tbl_order_detail.product_id')
            ->groupBy('tbl_order_detail.product_name')->orderby('sum_a', 'desc')
            ->select('tbl_order_detail.product_name', 'tbl_product.product_price', 'tbl_product.product_image', 'tbl_product.product_id')
            ->selectRaw('COUNT(tbl_order_detail.product_id) AS sum_a')->limit(3)
            ->get();

        return view('pages.checkout.login_checkout')->with('all_slide', $all_slide)->with('selling_product', $selling_product)->with('category', $cate_product)->with('brand', $brand_product);
    }

    public function add_customer(Request $request)
    {
        $data = array();
        $data['customer_name'] = $request->customer_name;
        $data['customer_email'] = $request->customer_email;
        $data['customer_password'] = md5($request->customer_password);
        $data['customer_phone'] = $request->customer_phone;

        $duplicate = DB::table('tbl_customer')->where('customer_email', $data['customer_email'])->first();
        // dd($duplicate);
        if ($duplicate == null) {
            $customer_id = DB::table('tbl_customer')->insertGetId($data);
            Session::put('customer_id', $customer_id);
            Session::put('customer_name', $request->customer_name);
            return Redirect::to('/payment');

        } else {
            Session::put('message1', 'Email đăng kí đã có trên hệ thống. Xin vui lòng nhập lại');
            return Redirect::to('/login-checkout');

        }

    }

    public function checkout()
    {
        $cate_product = DB::table('tbl_category_product')->where('category_status', '1')->orderby('category_name', 'asc')->get();
        $brand_product = DB::table('tbl_brand')->where('brand_status', '1')->orderby('brand_name', 'asc')->get();

        $all_slide = DB::table('tbl_slide')->where('tbl_slide.slide_status', '1')->get();

        return view('pages.checkout.show_checkout')->with('all_slide', $all_slide)->with('category', $cate_product)->with('brand', $brand_product);
    }

    public function save_checkout_customer(Request $request)
    {
        $data = array();
        $data['shipping_name'] = $request->shipping_name;
        $data['shipping_email'] = $request->shipping_email;
        $data['shipping_address'] = $request->shipping_address;
        $data['shipping_phone'] = $request->shipping_phone;
        $data['shipping_notes'] = $request->shipping_notes;
        $shipping_id = DB::table('tbl_shipping')->insertGetId($data);
        Session::put('shipping_id', $shipping_id);
        return Redirect::to('/payment');
    }

    public function payment()
    {
        $this->AuthLoginCustomer();
        $this->AuthContentCart();
        $cate_product = DB::table('tbl_category_product')->where('category_status', '1')->orderby('category_name', 'asc')->get();
        $brand_product = DB::table('tbl_brand')->where('brand_status', '1')->orderby('brand_name', 'asc')->get();

        $all_slide = DB::table('tbl_slide')->where('tbl_slide.slide_status', '1')->get();

        $customer_id = Session::get('customer_id');

        $get_last_order = DB::table('tbl_order')->where('customer_id', $customer_id)->orderBy('created_at', 'DESC')->first();

        if ($get_last_order) {
            $get_last_shipping = DB::table('tbl_shipping')->where('shipping_id', $get_last_order->shipping_id)->first();
        } else {
            $get_last_shipping = "null";
        }

        return view('pages.checkout.payment')->with('all_slide', $all_slide)->with('shipping_info', $get_last_shipping)
            ->with('category', $cate_product)->with('brand', $brand_product);
    }

    public function logout_checkout()
    {
        Session::flush();
        return Redirect::to('/trang-chu');
    }

    public function login_customer(Request $request)
    {
        $email = $request->email_account;
        $password = md5($request->password_account);
        $result = DB::table('tbl_customer')
            ->where('customer_email', $email)
            ->where('customer_password', $password)
            ->first();

        if ($result) {
            Session::put('customer_id', $result->customer_id);
            $name = DB::table('tbl_customer')
                ->where('customer_id', $result->customer_id)
                ->select('customer_name')
                ->first();
            if ($name) {
                Session::put('customer_name', $name->customer_name);
            }

            return Redirect::to('/payment');
        } else {
            return Redirect::to('/login-checkout');
        }
    }

    public function order_place(Request $request)
    {
        //insert info shipping
        $datas = array();
        $datas['shipping_name'] = $request->shipping_name;
        $datas['shipping_email'] = $request->shipping_email;
        $datas['shipping_address'] = $request->shipping_address;
        $datas['shipping_phone'] = $request->shipping_phone;
        if ($request->shipping_notes == null) {
            $datas['shipping_notes'] = "";
        }else{
            $datas['shipping_notes'] = $request->shipping_notes;
        }
        $shipping_id = DB::table('tbl_shipping')->insertGetId($datas);
        Session::put('shipping_id', $shipping_id);


        //get payment method
        $data = array();
        $data['payment_method'] = $request->payment_option;
        $data['payment_status'] = 'Đang chờ xử lý';
        $payment_id = DB::table('tbl_payment')->insertGetId($data);

        //Insert order
        $order_data = array();
        $order_data['customer_id'] = Session::get('customer_id');
        $order_data['shipping_id'] = Session::get('shipping_id');
        $order_data['payment_id'] = $payment_id;
        $order_data['order_total'] = $request->total_order;
        $order_data['order_status'] = 'Đang chờ xử lý';
        $order_id = DB::table('tbl_order')->insertGetId($order_data);

        //Insert order_detail
        $content = Cart::content();
        foreach ($content as $v_content) {
            $order_detail_data = array();
            $order_detail_data['order_id'] = $order_id;
            $order_detail_data['product_id'] = $v_content->id;
            $order_detail_data['product_name'] = $v_content->name;
            $order_detail_data['product_price'] = $v_content->price;
            $order_detail_data['product_sales_quantity'] = $v_content->qty;
            $order_detail_data['product_size'] = $v_content->options->size;
            DB::table('tbl_order_detail')->insert($order_detail_data);
        }

        if ($data['payment_method'] == 1) {
            $cate_product = DB::table('tbl_category_product')->where('category_status', '1')->orderby('category_name', 'asc')->get();
            $brand_product = DB::table('tbl_brand')->where('brand_status', '1')->orderby('brand_name', 'asc')->get();
            $all_slide = DB::table('tbl_slide')->where('tbl_slide.slide_status', '1')->get();
            $selling_product = DB::table('tbl_order_detail')
                ->join('tbl_product', 'tbl_product.product_id', '=', 'tbl_order_detail.product_id')
                ->groupBy('tbl_order_detail.product_name')->orderby('sum_a', 'desc')
                ->select('tbl_order_detail.product_name', 'tbl_product.product_price', 'tbl_product.product_image', 'tbl_product.product_id')
                ->selectRaw('COUNT(tbl_order_detail.product_id) AS sum_a')->limit(3)
                ->get();
            Cart::destroy();
            return view('pages.checkout.handcash')->with('all_slide', $all_slide)->with('selling_product', $selling_product)->with('category', $cate_product)->with('brand', $brand_product);
        } elseif ($data['payment_method'] == 2) {
            $cate_product = DB::table('tbl_category_product')->where('category_status', '1')->orderby('category_name', 'asc')->get();
            $brand_product = DB::table('tbl_brand')->where('brand_status', '1')->orderby('brand_name', 'asc')->get();
            Cart::destroy();
            $all_slide = DB::table('tbl_slide')->where('tbl_slide.slide_status', '1')->get();
            $selling_product = DB::table('tbl_order_detail')
                ->join('tbl_product', 'tbl_product.product_id', '=', 'tbl_order_detail.product_id')
                ->groupBy('tbl_order_detail.product_name')->orderby('sum_a', 'desc')
                ->select('tbl_order_detail.product_name', 'tbl_product.product_price', 'tbl_product.product_image', 'tbl_product.product_id')
                ->selectRaw('COUNT(tbl_order_detail.product_id) AS sum_a')->limit(3)
                ->get();
            return view('pages.checkout.handcash')->with('all_slide', $all_slide)->with('selling_product', $selling_product)->with('category', $cate_product)->with('brand', $brand_product);
        } else {
            $cate_product = DB::table('tbl_category_product')->where('category_status', '1')->orderby('category_name', 'asc')->get();
            $brand_product = DB::table('tbl_brand')->where('brand_status', '1')->orderby('brand_name', 'asc')->get();
            Cart::destroy();
            $all_slide = DB::table('tbl_slide')->where('tbl_slide.slide_status', '1')->get();
            $selling_product = DB::table('tbl_order_detail')
                ->join('tbl_product', 'tbl_product.product_id', '=', 'tbl_order_detail.product_id')
                ->groupBy('tbl_order_detail.product_name')->orderby('sum_a', 'desc')
                ->select('tbl_order_detail.product_name', 'tbl_product.product_price', 'tbl_product.product_image', 'tbl_product.product_id')
                ->selectRaw('COUNT(tbl_order_detail.product_id) AS sum_a')->limit(3)
                ->get();
            return view('pages.checkout.handcash')->with('all_slide', $all_slide)->with('selling_product', $selling_product)->with('category', $cate_product)->with('brand', $brand_product);
        }
    }

    public function manage_order(Request $request)
    {
        $this->AuthLogin();
        $order_status = $request->order_status;
        if ($order_status == null) {
            $order_status = 'Đang chờ xử lý';
        }
        if ($order_status == 'Xem tất cả') {
            $all_order = DB::table('tbl_order')
                ->join('tbl_customer', 'tbl_order.customer_id', '=', 'tbl_customer.customer_id')
                ->leftjoin('shipper_order', 'tbl_order.order_id', '=', 'shipper_order.order_id')
                ->select('tbl_order.*', 'tbl_customer.customer_name', 'shipper_order.note')
                ->orderby('tbl_order.order_id', 'desc')
                ->get();
            $manager_order = view('admin.manage_order')->with('all_order', $all_order)
                ->with('order_status', $order_status);
            return view('admin_layout')->with('admin.all_product', $manager_order);
        } else {
            $all_order = DB::table('tbl_order')
                ->join('tbl_customer', 'tbl_order.customer_id', '=', 'tbl_customer.customer_id')
                ->leftjoin('shipper_order', 'tbl_order.order_id', '=', 'shipper_order.order_id')
                ->select('tbl_order.*', 'tbl_customer.customer_name', 'shipper_order.note')
                ->where('tbl_order.order_status', $order_status)
                ->orderby('tbl_order.order_id', 'desc')
                ->get();

            $manager_order = view('admin.manage_order')->with('all_order', $all_order)
                ->with('order_status', $order_status);
            return view('admin_layout')->with('admin.all_product', $manager_order);
        }
    }

    public function view_order($order_id)
    {
        $this->AuthLogin();
        $order_by_id = DB::table('tbl_order')
            ->join('tbl_customer', 'tbl_order.customer_id', '=', 'tbl_customer.customer_id')
            ->join('tbl_shipping', 'tbl_order.shipping_id', '=', 'tbl_shipping.shipping_id')
            ->select('tbl_order.*', 'tbl_customer.*', 'tbl_shipping.*')->where('order_id', $order_id)->first();

        $all_order_detail = DB::table('tbl_order_detail')->join('tbl_product', 'tbl_product.product_id', '=', 'tbl_order_detail.product_id')
            ->where('order_id', $order_id)
            ->orderby('order_detail_id', 'asc')->select('tbl_order_detail.*', 'tbl_product.product_image')->get();

        $count_quantity = DB::table('tbl_order_detail')->where('order_id', $order_id)->orderby('order_detail_id', 'asc')->sum('product_sales_quantity');

        $manager_order_by_id = view('admin.view_order')->with('order_by_id', $order_by_id)
            ->with('order_detail', $all_order_detail)
            ->with('count_quantity', $count_quantity);
        return view('admin_layout')->with('admin.view_product', $manager_order_by_id);
    }

    public function update_order(Request $request, $order_id)
    {
        $this->AuthLogin();
        $get_order = DB::table('tbl_order')->where('order_id', $order_id)->first();
        $get_status = $get_order->order_status;
        $status = $request->order_status;
        $get_order_detail = DB::table('tbl_order_detail')->where('order_id', $order_id)->orderby('order_detail_id', 'asc')->get();
        switch ($get_status) {
            case "Đang chờ xử lý":
                switch ($status) {
                    case "Đang chờ xử lý":
                        Session::put('message', 'Cập nhập không thành công do đơn hàng đang ở trạng thái "Đang chờ xử lý"!');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    case "Xác nhận đơn hàng":
                        $data = array();
                        $data['order_status'] = $request->order_status;
                        foreach ($get_order_detail as $order_datail) {
                            DB::table('tbl_product_detail')->where([['product_id', $order_datail->product_id], ['product_size', $order_datail->product_size]])
                                ->decrement('product_quantity', $order_datail->product_sales_quantity);
                        }
                        DB::table('tbl_order')->where('order_id', $order_id)->update($data);
                        Session::put('message', 'Cập nhật đơn hàng thành công! Đang chờ xử lý->Xác nhận đơn hàng');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    case "Xác nhận thanh toán":
                        $data = array();
                        $data['order_status'] = $request->order_status;
                        foreach ($get_order_detail as $order_datail) {
                            DB::table('tbl_product_detail')->where([['product_id', $order_datail->product_id], ['product_size', $order_datail->product_size]])
                                ->decrement('product_quantity', $order_datail->product_sales_quantity);
                        }
                        DB::table('tbl_order')->where('order_id', $order_id)->update($data);
                        Session::put('message', 'Cập nhật đơn hàng thành công! Đang chờ xử lý->Xác nhận thanh toán');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    case "Đang giao hàng":
                        $data = array();
                        $data['order_status'] = $request->order_status;
                        foreach ($get_order_detail as $order_datail) {
                            DB::table('tbl_product_detail')->where([['product_id', $order_datail->product_id], ['product_size', $order_datail->product_size]])
                                ->decrement('product_quantity', $order_datail->product_sales_quantity);
                        }
                        DB::table('tbl_order')->where('order_id', $order_id)->update($data);
                        Session::put('message', 'Cập nhật đơn hàng thành công! Đang chờ xử lý->Đang giao hàng');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    case "Hủy đơn hàng":
                        $data = array();
                        $data['order_status'] = $request->order_status;
                        DB::table('tbl_order')->where('order_id', $order_id)->update($data);
                        Session::put('message', 'Hủy đơn hàng thành công.');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    default:
                        Session::put('message', 'Hủy đơn hàng không thành công.');
                        return Redirect::to('/view-order/' . $order_id);
                }
                break;
            case "Xác nhận đơn hàng":
                switch ($status) {
                    case "Đang chờ xử lý":
                        $data = array();
                        $data['order_status'] = $request->order_status;
                        foreach ($get_order_detail as $order_datail) {
                            DB::table('tbl_product_detail')->where([['product_id', $order_datail->product_id], ['product_size', $order_datail->product_size]])
                                ->increment('product_quantity', $order_datail->product_sales_quantity);
                        }
                        DB::table('tbl_order')->where('order_id', $order_id)->update($data);
                        Session::put('message', 'Cập nhật đơn hàng thành công! Xác nhận đơn hàng->Đang chờ xử lý');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    case "Xác nhận đơn hàng":
                        Session::put('message', 'Cập nhập không thành công do đơn hàng đang ở trạng thái "Xác nhận đơn hàng"!');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    case "Xác nhận thanh toán":
                        $data = array();
                        $data['order_status'] = $request->order_status;
                        DB::table('tbl_order')->where('order_id', $order_id)->update($data);
                        Session::put('message', 'Cập nhật đơn hàng thành công! Xác nhận đơn hàng->Xác nhận thanh toán');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    case "Đang giao hàng":
                        $data = array();
                        $data['order_status'] = $request->order_status;
                        DB::table('tbl_order')->where('order_id', $order_id)->update($data);
                        Session::put('message', 'Cập nhật đơn hàng thành công! Xác nhận đơn hàng->Đang giao hàng');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    case "Hủy đơn hàng":
                        $data = array();
                        $data['order_status'] = $request->order_status;
                        foreach ($get_order_detail as $order_datail) {
                            DB::table('tbl_product_detail')->where([['product_id', $order_datail->product_id], ['product_size', $order_datail->product_size]])
                                ->increment('product_quantity', $order_datail->product_sales_quantity);
                        }
                        DB::table('tbl_order')->where('order_id', $order_id)->update($data);
                        Session::put('message', 'Cập nhật đơn hàng thành công! Xác nhận đơn hàng->Hủy đơn hàng');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    default:
                        Session::put('message', 'Hủy đơn hàng không thành công.');
                        return Redirect::to('/view-order/' . $order_id);
                }
                break;
            case "Đang giao hàng":
                switch ($status) {
                    case "Đang chờ xử lý":
                        Session::put('message', 'Cập nhập không thành công do đơn hàng đang được giao');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    case "Xác nhận đơn hàng":
                        Session::put('message', 'Cập nhập không thành công do đơn hàng đang được giao');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    case "Xác nhận thanh toán":
                        $data = array();
                        $data['order_status'] = $request->order_status;
                        DB::table('tbl_order')->where('order_id', $order_id)->update($data);
                        Session::put('message', 'Cập nhật đơn hàng thành công! Đang giao hàng->Xác nhận thanh toán');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    case "Đang giao hàng":
                        Session::put('message', 'Cập nhập không thành công do đơn hàng đang được giao');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    case "Hủy đơn hàng":
                        $data = array();
                        $data['order_status'] = $request->order_status;
                        foreach ($get_order_detail as $order_datail) {
                            DB::table('tbl_product_detail')->where([['product_id', $order_datail->product_id], ['product_size', $order_datail->product_size]])
                                ->increment('product_quantity', $order_datail->product_sales_quantity);
                        }
                        DB::table('tbl_order')->where('order_id', $order_id)->update($data);
                        Session::put('message', 'Cập nhật đơn hàng thành công! Đang giao hàng->Hủy đơn hàng');
                        return Redirect::to('/view-order/' . $order_id);
                        break;
                    default:
                        Session::put('message', 'Hủy đơn hàng không thành công.');
                        return Redirect::to('/view-order/' . $order_id);
                }
                break;
            case "Xác nhận thanh toán":
                Session::put('message', 'Cập nhập không thành công do đơn hàng đã được thanh toán!');
                return Redirect::to('/view-order/' . $order_id);
                break;
            case "Hủy đơn hàng":
                Session::put('message', 'Cập nhập không thành công do đơn hàng đã bị hủy!');
                return Redirect::to('/view-order/' . $order_id);
                break;
            default:
                Session::put('message', 'Cập nhập không thành công!');
                return Redirect::to('/view-order/' . $order_id);
        }
    }

    // delete order
    public function delete_order($order_id)
    {
        $this->AuthLogin();
        DB::table('tbl_order')->where('order_id', $order_id)->delete();
        DB::table('tbl_order_detail')->where('order_id', $order_id)->delete();
        Session::put('message', 'Xóa danh mục sản phẩm thành công.');
        return Redirect::to('manage-order');
    }


    public function get_order_detail(Request $request)
    {
        $customer_id = $request->customer_id;
        $view_customer = DB::table('tbl_customer')->where('customer_id', $customer_id)->get();
        $get_order_detail = DB::table('tbl_order')
            ->join('tbl_customer', 'tbl_order.customer_id', '=', 'tbl_customer.customer_id')
            ->join('tbl_order_detail', 'tbl_order.order_id', '=', 'tbl_order_detail.order_id')
            ->join('tbl_shipping', 'tbl_order.shipping_id', '=', 'tbl_shipping.shipping_id')
            ->select('tbl_order.*', 'tbl_customer.*', 'tbl_order_detail.*', 'tbl_shipping.*')
            ->where('tbl_customer.customer_id', $customer_id)
            ->orderby('tbl_order.order_id', 'desc')
            ->first();

        return response()->json(['get_order_detail' => $get_order_detail]);

    }
}
