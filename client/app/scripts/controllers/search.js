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
      var recruiter = {recruiter: {name: $scope.recruiterName, companyName: $scope.companyName, companyWebsite: $scope.companyWebsite}};
      console.log('Called findRecruiter with '+JSON.stringify(recruiter));

      SearchService.findRecruiters(recruiter)
        .success(function (data) {
          $scope.recruiter = data;
          // $scope.currentUser = data;
          $location.path('/search');
        })
        .error(function () {
          alert('There was an error while searching for a recruiter!');
        });
    };
  });
