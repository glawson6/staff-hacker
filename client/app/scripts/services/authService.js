'use strict';

//var groupModule = angular.module('GroupService',[]);
angular.module('staffHackerApp')
  .service('AuthService', function ($http,UserHolder) {

    this.signin = function(user) {
      console.log('Called AuthService.signin with '+JSON.stringify(user));
      return $http.post('/api/signin', user );
    };

    this.setUser = function(user){
      console.log('Setting user '+JSON.stringify(user));
      UserHolder.setUser(user);
    };

    this.getUser = function(){
      return UserHolder.getUser();
    };

    this.signout = function() {
      console.log('Called AuthService.signout with '+JSON.stringify(this.user));
      var headers = {remember_token: this.user?this.user.remember_token:''};
      console.log('In signout '+JSON.stringify(headers));
      var response = $http({withCredentials: true,  url: '/api/signout', method: 'POST', data: UserHolder.getUser(),
        headers: headers});
      this.user = {};
      return response;
    };
  });
