@extends('shippers.index')
@section('title', 'Lịch sử nhận hàng')
<link href="{{ asset('shipper/css/style.css') }}" rel="stylesheet">
@section('content')

    <div id="wrapper">
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li class="active"><i class="fa fa-dashboard"></i>Lịch sử nhận hàng</li>
                    </ol>
                </div>
            </div><!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-6 h2">
                            Lịch sử nhận hàng
                        </div>
                    </div>

                    <div class="table-responsive">

                        <h3>Tổng đơn hàng </h3>
                        <table class="table table-bordered table-hover tablesorter">
                            <thead>
                            <tr>
                                <th>STT</th>
                                <th>Mã Đơn hàng</th>
                                <th>Tên Khách Hàng</th>
                                <th>Tổng giá tiền</th>
                                <th>Số điện thoại</th>
                                <th>Địa chỉ</th>
                                <th>Lý do thất bại</th>
                                <th width="15%">Trạng thái</th>
                            </tr>
                            </thead>
                            <tobdy>
                                @foreach ($lich_su_nhan as $index => $item)
                                    <tr>
                                        <td>{{ $index + 1 }}</td>
                                        <td>{{ $item->order_id }}</td>
                                        <td>{{ $item->shipping_name }}</td>
                                        <td>{{ number_format($item->order_total, 0) }} VND</td>
                                        <td>{{ $item->customer_phone }}</td>
                                        <td>{{ $item->shipping_address }}</td>
                                        <td>{{ $item->note }}</td>
                                        <td>
                                            @if($item->order_status == "Xác nhận thanh toán")
                                                <button class="btn btn-success">Thành công</button>
                                            @elseif($item->order_status == "Giao Hàng Thất Bại")
                                                <button class="btn btn-warning">Thất Bại</button>
                                                <a href="{{ route('form_ly_do', ['id' => $item->id_shipper_order]) }}">Lý do</a>
                                            @else
                                                <a href="{{ route('order_thanh_cong', ['id' => $item->order_id]) }}" class="btn btn-success">Thành công</a>
                                                <a href="{{ route('order_that_bai', ['id' => $item->order_id]) }}" class="btn btn-warning">Thất Bại</a>
                                            @endif

                                        </td>
                                    </tr>
                                @endforeach
                            </tobdy>
                        </table>
                    </div>
                </div>
            </div><!-- /.row -->
        </div>
    </div>

@endsection
