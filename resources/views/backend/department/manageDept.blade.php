@extends('backend.layouts.app')

@section('css')
<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.datatables.net/rss.xml">
<!-- Data table CSS -->
<link href="{{asset('vendors/bower_components/datatables/media/css/jquery.dataTables.min.css')}}" rel="stylesheet"
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
        <div class="col-sm-12">
            <div class="panel panel-default card-view">
                <div class="panel-heading">
                    <div class="pull-left">
                        @if(session('msg'))
                        <div class="alert alert-success">{{session('msg')}}</div>
                        @elseif(session('dlt'))
                        <div class="alert alert-danger">{{session('dlt')}}</div>
                        @elseif(session('upt'))
                        <div class="alert alert-info">{{session('upt')}}</div>
                        @endif
                        <h6 class="panel-title txt-dark">Export</h6>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="panel-wrapper collapse in">
                    <div class="panel-body">
                        <div class="table-wrap">
                            <div class="table-responsive">

                                <button data-toggle="modal" data-target="#responsive-modal"
                                    class="pull-right btn btn-success">New Department</button><br><br>

                                <table id="example" class="table table-hover display  pb-30">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Departments Name</th>
                                            <th>Details</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>

                                    <tfoot>
                                        <tr>
                                            <th>ID</th>
                                            <th>Departments Name</th>
                                            <th>Details</th>
                                            <th style="width: 300px;">Action</th>
                                        </tr>
                                    </tfoot>

                                    <tbody>
                                        @foreach ($departments as $department)
                                        <tr>
                                            <td>{{$loop->iteration}}</td>
                                            <td>{{$department->name}}</td>
                                            <td>{{$department->details}}</td>
                                            <td>


                                                <form action="{{route('department.destroy', $department->id)}}"
                                                    method="post">
                                                    @csrf
                                                    @method('DELETE')
                                                    <a href="{{route('department.edit', $department->id)}}"
                                                        class="btn btn-sm btn-success btn-anim"><i
                                                            class="fa fa-pencil-square-o"></i><span
                                                            class="btn-text">EDIT</span></a>
                                                    |
                                                    <a href="{{route('department.show', $department->id)}}"
                                                        class="btn btn-sm btn-primary btn-anim"><i
                                                            class="fa fa-sign-out"></i><span
                                                            class="btn-text">Show</span></a>
                                                    |
                                                    <button name="submit" type="submit"
                                                        class="btn btn-sm btn-danger btn-anim"><i
                                                            class="fa fa-trash-o"></i><span
                                                            class="btn-text">DELETE</span></button>
                                                </form>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /Row -->
</div>

<!-- Modal -->

<div id="responsive-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h5 class="modal-title">Modal Content is Responsive</h5>
            </div>
            <div class="modal-body">
                <form id="deptForm">
                    <div class="form-group">
                        <label for="recipient-name" class="control-label mb-10">Department Name:</label>
                        <input type="text" name="name" placeholder="Enter department name" class="form-control" id="recipient-name">
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="control-label mb-10">Details:</label>
                        <textarea class="form-control" name="details" placeholder="Enter details" id="message-text"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" id="btnAdd" class="btn btn-danger">ADD</button>
            </div>
        </div>
    </div>
</div>
<!-- Button trigger modal -->


<!-- /Modal -->

@endsection

@section('js')
<!-- JavaScript -->

<!-- jQuery -->
<script src="{{asset('vendors/bower_components/jquery/dist/jquery.min.js')}}"></script>

<!-- Bootstrap Core JavaScript -->
<script src="{{asset('vendors/bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>

<!-- Data table JavaScript -->
<script src="{{asset('vendors/bower_components/datatables/media/js/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js')}}"></script>
<script src="{{asset('vendors/bower_components/datatables.net-buttons/js/buttons.flash.min.js')}}"></script>
<script src="{{asset('vendors/bower_components/jszip/dist/jszip.min.js')}}"></script>
<script src="{{asset('vendors/bower_components/pdfmake/build/pdfmake.min.js')}}"></script>
<script src="{{asset('vendors/bower_components/pdfmake/build/vfs_fonts.js')}}"></script>

<script src="{{asset('vendors/bower_components/datatables.net-buttons/js/buttons.html5.min.js')}}"></script>
<script src="{{asset('vendors/bower_components/datatables.net-buttons/js/buttons.print.min.js')}}"></script>
<script src="{{asset('dist/js/export-table-data.js')}}"></script>
<!-- Slimscroll JavaScript -->
<script src="{{asset('dist/js/jquery.slimscroll.js')}}"></script>

<!-- Fancy Dropdown JS -->
<script src="{{asset('dist/js/dropdown-bootstrap-extended.js')}}"></script>
<!-- Init JavaScript -->
<script src="{{asset('dist/js/init.js')}}"></script>

<script>
    $(document).ready(function() {
        $("#btnAdd").click(function(e) {
            e.preventDefault();
            // alert("you have clicked");
            let mydata = $("#deptForm").serialize();
            //alert(data);
            $.ajax({
                url: "{{route('department.store')}}",
                type: "POST",
                dataType: 'json',
                processData: false,
                contentType: false,
                cache: false,
                data: {
                    "_token": "{{ csrf_token()}}",
                    "data": mydata
                },
                success: function(response) {
                    console.log(response);
                }

            })
        })
    });
</script>

@endsection