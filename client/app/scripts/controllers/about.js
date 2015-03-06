'use strict';

/**
 * @ngdoc function
 * @name staffHackerApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the staffHackerApp
 */
angular.module('staffHackerApp')
  .controller('AboutCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
