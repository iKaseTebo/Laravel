
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */


var myApp = angular.module('myApp', ['ngRoute', 'ngCookies']);

myApp.config(['$interpolateProvider', function($interpolateProvider) {
    $interpolateProvider.startSymbol('<<');
    $interpolateProvider.endSymbol('>>');
}]);

myApp.config(['$routeProvider', '$locationProvider', function ($routeProvider, $locationProvider) {
    $routeProvider.when('/', {
       templateUrl: 'templates/users/dashboard.html',
       controller: 'indexController'
    }).when('/login', {
        templateUrl: 'templates/users/login.html',
        controller: 'userController'
    }).otherwise('/');
}]);
/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */
//# sourceMappingURL=app.js.map
