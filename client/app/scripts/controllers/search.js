'use strict';

/**
 * @ngdoc function
 * @name staffHackerApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the staffHackerApp
 */
angular.module('staffHackerApp')
  .controller('SearchCtrl', function ($scope,$location,$cookies, SearchService, AuthService) {

    console.log('SearchCtrl is alive!');

    $scope.findRecruiter = function(){
      console.log(JSON.stringify($cookies));
      console.log('Called findRecruiter with '+JSON.stringify($scope.recruiterName));
      var user = AuthService.getUser();
      var recruiter = {search: {name: $scope.recruiterName, companyName: $scope.companyName, rate: $scope.rate}};
      SearchService.findRecruiters(recruiter,user)
        .success(function (data) {
          $scope.currentUser = data;
          $location.path('/about');
        })
        .error(function (data) {
          alert('Sigin ERROR' + data);
        });
    };

  });
