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
      //$cookies.put('remember_me','uf1GKjmLGY');
      var recruiter = {name: $scope.recruiterName, remember_token: user?user.remember_token:'c1e77cb64ab36b3436a99e0c96dd3670d1bde77c'};
      SearchService.findRecruiter(recruiter)
        .success(function (data) {
          $scope.currentUser = data;
          $location.path('/about');
        })
        .error(function () {
          alert('Sigin ERROR');
        });
    };

  });
