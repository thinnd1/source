@extends('shippers.index')
@section('title', 'List Order')
<link href="{{ asset('shipper/css/style.css') }}" rel="stylesheet">
@section('content')

    <div id="wrapper">
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li class="active">
                            <i class="fa fa-dashboard"></i> Nhập lý do
                        </li>
                    </ol>
                </div>
            </div><!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group row">
                        <form action="">
                            <label for="inputUser" class="col-sm-2 col-form-label">Nhập lý do:</label>
                            <div class="col-sm-10">
                                <input type="text" name="ly_do">
                            </div>

                            <button type="submit" class="btn btn-success">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
