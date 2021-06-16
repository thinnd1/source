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
                                <th>Địa chỉ</th>
                                <th>Ghi Chú</th>
                                <th width="15%">Trạng thái</th>
                            </tr>
                            </thead>
                            <tobdy>
                                @foreach ($lich_su_nhan as $index => $item)
                                    <tr>
                                        <td>{{ $index + 1 }}</td>
                                        <td>{{ $item->order_id }}</td>
                                        <td>{{ $item->shipping_name }}</td>
                                        <td>{{ $item->order_total }}</td>
                                        <td>{{ $item->shipping_address }}</td>
                                        <td>{{ $item->shipping_notes }}</td>
                                        <td>
                                            @if($item->order_status == "Xác nhận thanh toán")
                                                <a href="" class="btn btn-success">Thành công</a>
                                            @elseif($item->order_status == "Giao Hàng Thất Bại")
                                                <a href="" class="btn btn-warning">Thất Bại </a>
                                            @else
                                                <a href="{{ route('order_thanh_cong', ['id' => $item->order_id]) }}" class="btn btn-success">Thành công</a>
                                                <a href="{{ route('order_thanh_cong', ['id' => $item->order_id]) }}" class="btn btn-warning">Thất Bại</a>
                                            @endif

                                        </td>
                                    </tr>
                                @endforeach
                            </tobdy>
                        </table>
                    </div>
{{--                    {{ $all_order->links() }}--}}
                </div>
            </div><!-- /.row -->
        </div>
    </div>

@endsection
