<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Session;

class ShipperController extends Controller
{
    public function formRegisterShipper()
    {
        return view('shippers.signup');
    }

    public function registerShipper(Request $request)
    {
        $data = array();
        $data['shipper_name'] = $request->shipper_name;
        $data['password'] = md5($request->password);
        $data['shipper_phone'] = $request->shipper_phone;
        $data['shipper_email'] = $request->shipper_email;

        DB::table('tbl_shippers')->insert($data);

        return redirect()->route('formLoginShipper');
    }

    public function formLoginShipper()
    {
        return view('shippers.login');
    }

    public function loginShipper(Request $request)
    {
        $email = $request->shipper_email;
        $password = md5($request->password);

        $result = DB::table('tbl_shippers')
            ->where('shipper_email', $email)
            ->where('password', $password)
            ->first();

        if ($result) {
            Session::put('shipper_id', $result->id);

            $name = DB::table('tbl_shippers')
                ->where('id', $result->id)
                ->select('shipper_name')
                ->first();
            if ($name) {
                Session::put('shipper_name', $name->shipper_name);
            }

            return redirect()->route('list-order');
        } else {
            return redirect()->route('formLoginShipper');
        }
    }

    public function AuthLogin()
    {
        $shipper_id = Session::get('shipper_id');
        if ($shipper_id) {
            return Redirect::route('list-order');
        } else {
            return Redirect::route('formLoginShipper');
        }
    }

    public function getOrder(Request $request)
    {
        $this->AuthLogin();
        $order_status = 'Đang chờ xử lý';

        $all_order = DB::table('tbl_order')
            ->join('tbl_customer', 'tbl_order.customer_id', '=', 'tbl_customer.customer_id')
            ->select('tbl_order.*', 'tbl_customer.customer_name')
            ->where('tbl_order.order_status', $order_status)
            ->orderby('tbl_order.created_at', 'desc')
            ->paginate('10');

        return view('shippers.home')->with([
            'all_order' => $all_order
        ]);
    }

    public function chi_tiet($id)
    {
        $chi_tiet_order = DB::table('tbl_shipping')
            ->join('tbl_order', 'tbl_order.shipping_id', '=', 'tbl_shipping.shipping_id')
            ->where('tbl_shipping.shipping_id', $id)
            ->first();

        return view('shippers.chi_tiet', compact('chi_tiet_order'));
    }

    public function nhan_hang($shipping_id)
    {
        $nhan_hang = DB::table('tbl_order')
            ->where('shipping_id', $shipping_id)
            ->update(['order_status' => "Đang giao hàng" ]);

        $order_id = DB::table('tbl_order')->where('shipping_id', $shipping_id)->pluck('order_id');

        $lich_su = DB::table('shipper_order')
            ->insert([
                'shipper_id' => Session::get('shipper_id'),
                'order_id' => $order_id[0]
            ]);

        return redirect()->back();
    }

    public function shipper_nhan_hang($id_order)
    {
        return DB::table('tbl_order')
            ->where('order_id', $id_order)
            ->update(['order_status' => "Đang giao hàng"]);
    }

    public function form_lich_su_nhan_hang()
    {
        $shipper_id = Session::get('shipper_id');

        $lich_su_nhan = DB::table('tbl_order')
            ->join('tbl_shipping', 'tbl_order.shipping_id', '=', 'tbl_shipping.shipping_id')
            ->join('tbl_customer', 'tbl_order.customer_id', '=', 'tbl_customer.customer_id')
            ->join('shipper_order', 'tbl_order.order_id', '=', 'shipper_order.order_id')
            ->join('tbl_shippers', 'shipper_order.shipper_id', '=', 'tbl_shippers.id')
            ->where('tbl_shippers.id', $shipper_id)
            ->get();

        return view('shippers.lich_su_nhan_hang', compact('lich_su_nhan'));
    }

    public function order_thanh_cong($id)
    {
        $order_thanh_cong =  DB::table('tbl_order')->update([
            'order_status' => "Xác nhận thanh toán"
        ]);
        return \redirect()->back();
    }

    public function order_that_bai($id)
    {
        $order_that_bai =  DB::table('tbl_order')->update([
            'order_status' => "Giao Hàng Thất Bại"
        ]);
        return \redirect()->back();
    }

    public function get_tai_xe()
    {
        $get_tai_xe = DB::table('tbl_shippers')
            ->paginate(10);
    }

    public function form_ly_do($id)
    {
        $ly_do = DB::table('shipper_order')->where('id_shipper_order', $id)->first();
        return view('shippers.ly_do_fail', compact('ly_do'));
    }

    public function ly_do_fail(Request $request, $id)
    {
        DB::table('shipper_order')->where('id_shipper_order', $id)->update(['note' => $request->note_ly_do]);
        return \redirect()->route('history_shipper');
    }

    public function logout_shipper()
    {
        Session::flush();
        return \redirect()->route('formLoginShipper');
    }

    public function tra_hang(Request $request)
    {
        DB::table('tbl_return_goods')->insert([
            'id_order' => $request->id_order,
            'ly_do' => $request->ly_do
        ]);
        return \redirect()->back();
    }
}
