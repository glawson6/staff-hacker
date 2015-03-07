'use strict';

/**
 * @ngdoc function
 * @name staffHackerApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the staffHackerApp
 */
angular.module('staffHackerApp')
  .controller('SearchCtrl', function ($scope,$location, SearchService) {

    console.log('SearchCtrl is alive!');

    $scope.findRecruiter = function(){
      console.log('Called findRecruiter with '+JSON.stringify($scope.name));

      SearchService.findRecruiter($scope.name)
        .success(function (data) {
          $scope.currentUser = data;
          $location.path('/search');
        })
        .error(function () {
          alert('Sigin ERROR');
        });
    };

  });
