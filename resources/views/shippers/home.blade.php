@extends('shippers.index')
@section('title', 'List Order')
<link href="{{ asset('shipper/css/style.css') }}" rel="stylesheet">
@section('content')

    <div id="wrapper">
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li class="active"><i class="fa fa-dashboard"></i>Danh sách đơn hàng</li>
                    </ol>
                </div>
            </div><!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="coL-lg-6 h2">
                            Danh sách đơn hàng
                        </div>
                    </div>

                    <div class="table-responsive">

                        <h3>Tổng đơn hàng : {{ count($all_order) }} </h3>
                        <table class="table table-bordered table-hover tablesorter">
                            <thead>
                            <tr>
                                <th>Số thứ tự</th>
                                <th>Tên người đặt</th>
                                <th>Ngày đặt</th>
                                <th>Tổng giá tiền</th>
                                <th>Tình trạng</th>
                                <th width="10%">Đặt hàng</th>
                            </tr>
                            </thead>
                            <tobdy>
                                @if($lich_su_nhan > 2)
                                    <td colspan="6" style="text-align:center"> Bạn chọn quá 3 đơn rồi </td>
                                @else
                                @foreach ($all_order as $index => $order)
                                    <tr>
                                        <td>{{ $index + 1 }}</td>
                                        <td>{{ $order->customer_name }}</td>
                                        <td>{{ $order->created_at }}</td>
                                        <td>{{ number_format($order -> order_total, 0) }} VND</td>
                                        <td>{{ $order->order_status }}</td>
                                        <td>
                                            <a href="{{ route('list-order-detail', ['id' => $order->shipping_id ]) }}" class="btn btn-warning">Chi tiết</a>
                                        </td>
                                    </tr>
                                @endforeach
                                @endif
                            </tobdy>
                        </table>
                    </div>
                    {{ $all_order->links() }}
                </div>
            </div><!-- /.row -->
        </div>
    </div>

@endsection
