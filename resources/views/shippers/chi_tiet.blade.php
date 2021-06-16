@extends('shippers.index')
@section('title', 'List Order')
<link href="{{ asset('shipper/css/style.css') }}" rel="stylesheet">
@section('content')

    <div id="wrapper">
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li class="active"><i class="fa fa-dashboard"></i>Chi tiết Thông tin vận chuyển</li>
                    </ol>
                </div>
            </div><!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group row">
                        <label for="inputUser" class="col-sm-2 col-form-label">Tên người nhận:</label>
                        <div class="col-sm-10">
                           {{ $chi_tiet_order->shipping_name }}
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="inputUser" class="col-sm-2 col-form-label">Địa chỉ giao hàng:</label>
                        <div class="col-sm-10">
                            {{ $chi_tiet_order->shipping_address }}
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="inputUser" class="col-sm-2 col-form-label">Số điện thoại giao hàng:</label>
                        <div class="col-sm-10">
                            {{ $chi_tiet_order->shipping_phone }}
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="inputUser" class="col-sm-2 col-form-label">Ghi chú đơn hàng:</label>
                        <div class="col-sm-10">
                            {{ $chi_tiet_order->shipping_notes }}
                        </div>
                    </div>

                    <a class="btn btn-warning" href="{{ route('shipper-order', ['id' => $chi_tiet_order->order_id]) }}"> Nhận giao </a>
                </div>
            </div>

        </div>
    </div>

@endsection
