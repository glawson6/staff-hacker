'use strict';

//var groupModule = angular.module('GroupService',[]);
angular.module('staffHackerApp')
  .service('AuthService', function ($http,UserHolder) {

    this.signUp = function(user) { 
      return $http.post('/api/signup', user );
    };

    this.signin = function(user) {
      console.log('Called AuthService.signin with '+JSON.stringify(user));
      return $http.post('/api/signin', user );
    };

    this.setUser = function(user){
      console.log('Setting user '+JSON.stringify(user));
      UserHolder.setUser(user);
      this.user = user;
    };

    this.getUser = function(){
      return UserHolder.getUser();
    };

    this.createHeaders = function(user){
      return {remember_token: user?user.remember_token:''};
    };

    this.signout = function() {
      console.log('Called AuthService.signout with '+JSON.stringify(this.user));
      var headers = this.createHeaders(this.user);
      console.log('In signout '+JSON.stringify(headers));
      var response = $http({withCredentials: true,  url: '/api/signout', method: 'POST', data: UserHolder.getUser(),
        headers: headers});
      this.user = {};
      return response;
    };
  });
