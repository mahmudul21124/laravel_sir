@extends('backend.layouts.app')

@section('css')
<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<!-- vector map CSS -->
<link href="{{asset('vendors/bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.min.css')}}" rel="stylesheet"
    type="text/css" />

<!-- Custom CSS -->
<link href="{{asset('dist/css/style.css')}}" rel="stylesheet" type="text/css">

@endsection

@section('content')

<div class="container-fluid">

    <!-- Title -->
    <div class="row heading-bg bg-green">
        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
            <h5 class="txt-light">Export</h5>
        </div>
        <!-- Breadcrumb -->
        <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
            <ol class="breadcrumb">
                <li><a href="index.html">Dashboard</a></li>
                <li><a href="#"><span>table</span></a></li>
                <li class="active"><span>Export</span></li>
            </ol>
        </div>
        <!-- /Breadcrumb -->
    </div>
    <!-- /Title -->

    <!-- Row -->
    <div class="row">


        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default card-view">
                <div class="panel-heading">
                    <div class="pull-left">
                        <h6 class="panel-title txt-dark">New Appointment</h6>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="panel-wrapper collapse in">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-12 col-xs-12">
                                <div class="form-wrap">
                                    <form class="form-horizontal" method="post" action="{{route('appointment.store')}}">
                                        @csrf
                                        <div class="form-group">
                                            <label for="exampleInputuname_4"
                                                class="col-sm-3 control-label">Name*</label>
                                            <div class="col-sm-9">
                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="exampleInputuname_4"
                                                        name="name" value="{{old('name')}}" placeholder="Enter Doctor name">

                                                    @error('name') <div class="alert alert-danger">{{$message}}</div>
                                                    @enderror

                                                    <div class="input-group-addon"><i class="icon-user"></i></div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputuname_4"
                                                class="col-sm-3 control-label">Email*</label>
                                            <div class="col-sm-9">
                                                <div class="input-group">
                                                    <input type="email" class="form-control" id=""
                                                        name="email" value="{{old('email')}}" placeholder="Enter Email address">
                                                    @error('email') <div class="alert alert-danger">{{$message}}</div>
                                                    @enderror
                                                    <div class="input-group-addon"><i class="icon-user"></i></div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputuname_4"
                                                class="col-sm-3 control-label">Phone*</label>
                                            <div class="col-sm-9">
                                                <div class="input-group">
                                                    <input type="text" class="form-control" id=""
                                                        name="phone" value="{{old('phone')}}" placeholder="Enter Phone">
                                                    @error('phone') <div class="alert alert-danger">{{$message}}</div>
                                                    @enderror
                                                    <div class="input-group-addon"><i class="icon-user"></i></div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputuname_4"
                                                class="col-sm-3 control-label">Doctor*</label>
                                            <div class="col-sm-9">

                                                <select name="doctor" id="" class="form-control">
                                                    <option value="">Choose Doctor</option>

                                                    @foreach ($doctors as $doctor)
                                                    <option value="{{$doctor->id}}" @selected(old('doctor')==$doctor->id)>{{$doctor->name}} || {{$doctor->specialist->name}}</option>
                                                    @endforeach

                                                </select>
                                                @error('doctor') <div class="alert alert-danger">{{$message}}</div>
                                                @enderror
                                            </div>
                                        </div>



                                        <div class="form-group">
                                            <label for="exampleInputuname_4"
                                                class="col-sm-3 control-label">Date*</label>
                                            <div class="col-sm-9">
                                                <div class="input-group">
                                                    <input type="date" class="form-control" id="exampleInputuname_4"
                                                        name="date">
                                                    @error('date') <div class="alert alert-danger">{{$message}}</div>
                                                    @enderror
                                                    <div class="input-group-addon"><i class="icon-user"></i></div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputuname_4"
                                                class="col-sm-3 control-label">Remarks*</label>
                                            <div class="col-sm-9">
                                                <div class="input-group">
                                                    <textarea name="remarks" id="exampleInputuname_4" class="form-control" placeholder="Enter message"></textarea>

                                                    @error('remarks') <div class="alert alert-danger">{{$message}}</div>
                                                    @enderror
                                                    <div class="input-group-addon"><i class="icon-user"></i></div>
                                                </div>
                                            </div>
                                        </div>



                                        <div class="form-group mb-0">
                                            <div class="col-sm-offset-3 col-sm-9">
                                                <button type="submit" class="btn btn-info ">Add</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /Row -->
</div>

@endsection

@section('js')
<!-- JavaScript -->

<!-- jQuery -->
<script src="{{asset('vendors/bower_components/jquery/dist/jquery.min.js')}}"></script>

<!-- Bootstrap Core JavaScript -->
<script src="{{asset('vendors/bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<script src="{{asset('vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js')}}"></script>

<!-- Slimscroll JavaScript -->
<script src="{{asset('dist/js/jquery.slimscroll.js')}}"></script>

<!-- Fancy Dropdown JS -->
<script src="{{asset('dist/js/dropdown-bootstrap-extended.js')}}"></script>

<!-- Init JavaScript -->
<script src="{{asset('dist/js/init.js')}}"></script>

@endsection