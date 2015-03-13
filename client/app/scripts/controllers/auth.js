'use strict';

/**
 * @ngdoc function
 * @name staffHackerApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the staffHackerApp
 */
angular.module('staffHackerApp')
  .controller('AuthCtrl', function ($scope, $cookies, $state, AuthService, Nav) {

    console.log('AuthCtrl is alive!');

    $scope.signUserUp = function() {
      var user = {user: {name: $scope.name, email: $scope.email, password: $scope.password, password_confirmation: $scope.passwordConfirmation}};
      console.log('Called signUserUp with '+JSON.stringify(user));
      AuthService.signUp(user)
        .success(function (data) {
          $scope.currentUser = data;
          AuthService.setUser($scope.currentUser);
          Nav.signIn();

          console.log('Nav => '+JSON.stringify(Nav.toArray()));
          $state.go(Nav.search.state);
      })
        .error(function () {
          alert('Sigup ERROR');
        });

    };

    function logUserIn(){
      var user = {user: {email:$scope.email, password: $scope.password}};
      console.log('Called logUserIn with '+JSON.stringify(user));
      AuthService.signin(user)
        .success(function (data) {
          $scope.currentUser = data;
          AuthService.setUser($scope.currentUser);
          Nav.signIn();
          console.log('Nav => '+JSON.stringify(Nav.toArray()));
          $state.go(Nav.search.state);
      })
        .error(function () {
          alert('Sigin ERROR');
        });

    }

    $scope.logUserIn = logUserIn;

  });
