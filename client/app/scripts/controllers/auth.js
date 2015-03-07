'use strict';

/**
 * @ngdoc function
 * @name staffHackerApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the staffHackerApp
 */
angular.module('staffHackerApp')
  .controller('AuthCtrl', function ($scope,$location, AuthService) {

    console.log('AuthCtrl is alive!');

    function logUserIn(){
      var user = {user: {email:$scope.email, password: $scope.password}};
      console.log('Called logUserIn with '+JSON.stringify(user));
      AuthService.signin(user)
        .success(function (data) {
          $scope.currentUser = data;
          $location.path('/search');
      })
        .error(function () {
          alert('Sigin ERROR');
        });
    }

    $scope.logUserIn = logUserIn;

    $scope.findRecruiter = function(){

    };

  });
