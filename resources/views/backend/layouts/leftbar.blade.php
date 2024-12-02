<div class="fixed-sidebar-left">
    <ul class="nav navbar-nav side-nav nicescroll-bar">
        <li>
            <a class="active" href="{{url('/admin/dashboard')}}" data-toggle="collapse" data-target="#dashboard_dr"><i class="icon-picture mr-10"></i>Dashboard <span class="pull-right"></span></a>  
        </li>
        <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#ecom_dr"><i class="icon-basket-loaded mr-10"></i>Specialist<span class="pull-right"><i class="fa fa-fw fa-angle-down"></i></span></a>
            <ul id="ecom_dr" class="collapse collapse-level-1">
                <li>
                    <a href="{{route('specialist.index')}}">All Specialist</a>
                </li>
                <li>
                    <a href="{{route('specialist.create')}}">New Specialist</a>
                </li>
                
            </ul>
        </li>

        <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#ecom_dr1"><i class="icon-basket-loaded mr-10"></i>Doctor<span class="pull-right"><i class="fa fa-fw fa-angle-down"></i></span></a>
            <ul id="ecom_dr1" class="collapse collapse-level-1">
                <li>
                    <a href="{{route('doctor.index')}}">All Doctors</a>
                </li>
                <li>
                    <a href="{{route('doctor.create')}}">New Doctor</a>
                </li>
                
            </ul>
        </li>

        <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#ecom_dr3"><i class="icon-basket-loaded mr-10"></i>Appointment<span class="pull-right"><i class="fa fa-fw fa-angle-down"></i></span></a>
            <ul id="ecom_dr3" class="collapse collapse-level-1">
                <li>
                    <a href="{{route('appointment.index')}}">All Appointments</a>
                </li>
                <li>
                    <a href="{{route('appointment.create')}}">New Appointment</a>
                </li>
                
            </ul>
        </li>

        <li>
            <a href="javascript:void(0);" data-toggle="collapse" data-target="#ecom_dr4"><i class="icon-basket-loaded mr-10"></i>Department<span class="pull-right"><i class="fa fa-fw fa-angle-down"></i></span></a>
            <ul id="ecom_dr4" class="collapse collapse-level-1">
                <li>
                    <a href="{{route('department.index')}}">All Departments</a>
                </li>
                <li>
                    <a href="{{route('department.create')}}">New Department</a>
                </li>
                
            </ul>
        </li>
        
    </ul>
</div>