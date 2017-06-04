<!doctype html>
<html lang="en" ng-app="myApp">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Index</title>
    <link rel="stylesheet" href="{{ asset('bower_components/bootstrap/dist/css/bootstrap.css') }}">
</head>
<body>
<div class="container">
    <div ng-view>

    </div>
</div>
<script type="text/javascript" src="{{ asset('bower_components/angular/angular.js')}}"></script>
<script type="text/javascript" src="{{ asset('bower_components/angular-route/angular-route.js')}}"></script>
<script type="text/javascript" src="{{ asset('bower_components/angular-cookies/angular-cookies.js')}}"></script>
<script type="text/javascript" src="{{ asset('js/app.js')}}"></script>
<script type="text/javascript" src="{{ asset('js/controllers.js')}}"></script>
</body>
</html>