'use strict';

/**
 * @ngdoc function
 * @name staffHackerApp.controller:NavCtrl
 * @description
 * # MainCtrl
 * Controller of the staffHackerApp
 */
angular.module('staffHackerApp')
  .controller('NavCtrl', function ($scope, AuthService) {
    console.log('NavCtrl is alive!!!!');
   $scope.signOut = function(){
    AuthService.signout();
   };
  });
