@extends('admin_layout')
@section('admin_content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Sản phẩm trả</h1>
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
            <h6 class="m-0 font-weight-bold text-primary">Danh sách sản phẩm trả</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered"  width="100%" cellspacing="0">
                    <thead>
                    <tr class="text-center" style="background-color: #ffff00; color:black">
                        <th>Mã HD</th>
                        <th>Tên sản phẩm</th>
                        <th>Giá sản phẩm</th>
                        <th>Lý Do</th>
                        <th>Ngày trả</th>
                        <th> </th>
                    </tr>
                    </thead>
                    <tbody class="text-center">
                    @foreach ($all_product as $key => $pro)
                        <tr>
                            <td>{{ $pro->id_order }}</td>
                            <td>{{ $pro->product_name }}</td>
                            <td>{{ number_format($pro -> order_total, 0) }} VND</td>
                            <td>{{ $pro->ly_do }}</td>
                            <td>{{ $pro->created_at }}</td>
                            <td>
                                @if($pro->status == 0)
                                    <a href="{{ route('confirm_tra_hang', ['id' => $pro->id_return]) }}" class="btn btn-warning">Xác nhận</a>
                                    <a href="{{ route('cancel_tra_hang', ['id' => $pro->id_return]) }}" class="btn btn-danger">Từ chối</a>
                                @elseif($pro->status == 1)
                                    <button class="btn btn-warning">Xác nhận</button>
                                @elseif($pro->status == 2)
                                    <button class="btn btn-danger">Từ chối</button>
                                @endif
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
