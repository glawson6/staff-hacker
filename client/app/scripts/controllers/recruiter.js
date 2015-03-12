'use strict';

/**
 * @ngdoc function
 * @name staffHackerApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the staffHackerApp
 */
angular.module('staffHackerApp')
  .controller('RecruiterCtrl', function ($scope,$location,$stateParams,$state,RecruiterService, AuthService,Nav) {

    $scope.recruiterId = $stateParams.recruiterId;

    console.log('RecruiterCtrl is alive with recruiterId '+$scope.recruiterId+' $stateParams '+JSON.stringify());
    $scope.createRating = function(){
      console.log('Called createRating with '+JSON.stringify($scope.recruiterName)+' with recruiter id '+$scope.recruiterId);
      var user = AuthService.getUser();
      console.log('Called User with '+JSON.stringify(user));
      var rating = {rating: {comments: $scope.comments, rate: $scope.rate, recruiter_id: $scope.recruiterId,
        user_id: user.id}};
      RecruiterService.createRating(rating,user)
        .success(function (data) {
          $scope.recruiter = data;
        })
        .error(function (data) {
          alert('findRecruiters ERROR' + data);
        });
    };

    $scope.recruiterResultsState = Nav.recruiterResults.state;

  });
