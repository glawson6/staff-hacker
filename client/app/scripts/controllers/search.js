'use strict';

/**
 * @ngdoc function
 * @name staffHackerApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the staffHackerApp
 */
angular.module('staffHackerApp')
  .controller('SearchCtrl', function ($scope, $location, $stateParams, $state, RecruiterService, AuthService, Nav) {

    console.log('SearchCtrl is alive!');

    $scope.findRecruiters = function () {
      console.log('Called findRecruiter with ' + JSON.stringify($scope.recruiterName));
      var user = AuthService.getUser();
      console.log('Called User with ' + JSON.stringify(user));
      var recruiter = {search: {name: $scope.recruiterName, companyName: $scope.companyName, rate: $scope.rate}};
      RecruiterService.findRecruiters(recruiter, user)
        .success(function (data) {
          $scope.recruiters = data;
        })
        .error(function (data) {
          alert('findRecruiters ERROR' + data);
        });
    };

    $scope.getRecruiter = function (id) {
      console.log('Called getRecruiter with ' + JSON.stringify(id));
      var user = AuthService.getUser();
      console.log('Called AuthService.getUser() got ' + JSON.stringify(user));
      $state.go(Nav.recruiterRatings.state, {recruiterId: id});

    };

    $scope.recruiterResultsState = Nav.recruiterResults.state;

  })
  .directive('drawStarsJs', function () {
    return {
      restrict: 'A',
      scope: {
        options: '='
      },
      compile: function (tElem, tAttrs) {

        var drawStars = function (element, pOptions) {
          var options = pOptions || {};
          if (options) {
            var average = options.average;
            var radius = options.radius;
            //var holdStage = new createjs.Stage('starCanvas' + id);
            var stage = new createjs.Stage(element[0]);
            average = average || 0;
            var wholeInt = Math.floor(average);
            var diff = average - wholeInt;
            console.log('diff ' + diff + ' average ' + average);
            for (var i = 0; i < wholeInt; i++) {
              var polystar2 = new createjs.Shape();
              polystar2.graphics.setStrokeStyle(1).beginStroke('#000000').beginFill('#FBB62B').drawPolyStar((i * radius * 2) + radius, radius, radius, 5, 0.5, -90);
              stage.addChild(polystar2);
            }
            if (diff > 0.0) {
              var polystar = new createjs.Shape();
              var fillPct = 4 * radius * (1 - diff);
              polystar.graphics.setStrokeStyle(1).beginStroke('#000000').beginLinearGradientFill(['#FFF', '#FBB62B'], [0.5, 0.5], 0, 0, 0, fillPct).drawPolyStar((wholeInt * radius * 2) + radius, radius, radius, 5, 0.5, -90);
              stage.addChild(polystar);
            }
            stage.update();
          }
        };

        if (tElem[0].tagName !== 'CANVAS') {
          throw new Error('drawStars can only be set on a canvas element. ' + tElem[0].tagName + ' will not work.');
        }

        return function (scope, element, attrs) {
          scope.$watch('options', function (newV, oldV) {
            drawStars(element, scope.options);
          }, true);

        };
      }
    };
  });
