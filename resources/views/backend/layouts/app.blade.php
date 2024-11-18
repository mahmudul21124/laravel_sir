<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Admin dashboard</title>

    <!-- CSS -->
    @include('backend.layouts.css_file')

</head>

<body>

    <div class="wrapper">
        <!-- Top Menu Items -->

        @include('backend.layouts.topmenu')
        <!-- /Top Menu Items -->

        <!-- Left Sidebar Menu -->
        @include('backend.layouts.leftbar')
        <!-- /Left Sidebar Menu -->

        <!-- Right Sidebar Menu -->
        @include('backend.layouts.rightbar')
        <!-- /Right Sidebar Menu -->

        <!-- Main Content -->
        <div class="page-wrapper">

            <!-- YIELD -->
            @yield('content')

            <!-- Footer -->
            @include('backend.layouts.footer')
            <!-- /Footer -->

        </div>
        <!-- /Main Content -->

    </div>
    <!-- /#wrapper -->

    <!-- JavaScript -->
    @include('backend.layouts.js_file')
    
</body>

</html>