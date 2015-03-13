'use strict';

/**
 * @ngdoc function
 * @name staffHackerApp.controller:NavCtrl
 * @description
 * # MainCtrl
 * Controller of the staffHackerApp
 */
angular.module('staffHackerApp')
  .controller('NavCtrl', function ($scope,$rootScope,$cookies, $state,AuthService,Nav) {
    //console.log('NavCtrl is alive!!!! with Nav '+JSON.stringify(Nav));

    var user = AuthService.findSessionUser();
    user.success(function(data){
      if (data){
        console.log('Data received '+JSON.stringify(data));
        Nav.signIn();
      } else {
        Nav.signOut();
      }
    })
      .error(function(){
        Nav.signOut();
      });

   $scope.signOut = function(){
    AuthService.signout();
     Nav.signOut();
   };

    $scope.navTabs = Nav.toArray();
    //console.log('$scope.navTabs => '+JSON.stringify($scope.navTabs));

    $scope.getTabClass = function(tab) {
      return tab.active ? 'active' : '';
    };

    $scope.active = function(state) {
      return $state.is(state);
    };

    $scope.$on('$stateChangeSuccess', function() {
      console.log('stateChange');
      $scope.navTabs.forEach(function(tab) {
        tab.active = $scope.active(tab.state);
        //console.log('tab.state => '+tab.state+" tab.active => "+tab.active);
        if (tab.active === true && tab.state === Nav.signout.state){
          console.log('Resolved to tab.state => '+tab.state);
          AuthService.signout();
          Nav.signOut();
        }
      });
    });

    $rootScope.$on('$stateChangeStart',
      function(event, toState, toParams, fromState, fromParams){

        if (_.includes(Nav.securedStates(), toState) && _.isNull(AuthService.getUser())){
          event.preventDefault();
        }
        // transitionTo() promise will be rejected with
        // a 'transition prevented' error
      });

  });
