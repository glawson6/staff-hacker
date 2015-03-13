'use strict';

/**
 * @ngdoc function
 * @name staffHackerApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the staffHackerApp
 */
angular.module('staffHackerApp')
  .controller('SearchCtrl', function ($scope,$location,$stateParams,$state,RecruiterService, AuthService,Nav) {

    console.log('SearchCtrl is alive!');

    $scope.findRecruiters = function(){
      console.log('Called findRecruiter with '+JSON.stringify($scope.recruiterName));
      var user = AuthService.getUser();
      console.log('Called User with '+JSON.stringify(user));
      var recruiter = {search: {name: $scope.recruiterName, companyName: $scope.companyName, rate: $scope.rate}};
      RecruiterService.findRecruiters(recruiter,user)
        .success(function (data) {
          $scope.recruiters = data;
        })
        .error(function (data) {
          alert('findRecruiters ERROR' + data);
        });
    };

    $scope.getRecruiter = function(id){
      console.log('Called getRecruiter with '+JSON.stringify(id));
      var user = AuthService.getUser();
      console.log('Called AuthService.getUser() got '+JSON.stringify(user));
      $state.go(Nav.recruiterRatings.state,{recruiterId: id});
      //RecruiterService.getRecruiter(id,user)
      //  .success(function (data) {
      //    $scope.recruiter = data;
      //    console.log('Got recruiter '+JSON.stringify($scope.recruiter)+' with id '+$scope.recruiter.id);
      //    $state.go(Nav.recruiterRatings.state,{recruiterId: $scope.recruiter.id});
      //  })
      //  .error(function (data) {
      //    alert('getRecruiter ERROR' + data);
      //  });
    };

    $scope.recruiterResultsState = Nav.recruiterResults.state;

  });
