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
    };

    this.isAuthenticated = function(){
      return !!UserHolder.getUser();
    };

    this.getUser = function(){
      return UserHolder.getUser();
    };

    this.createHeaders = function(user){
      return {remember_token: user?user.remember_token:''};
    };

    this.findSessionUser = function(){
      return $http.get('/api/sessions')
        .success(function(data){
          //console.log('findSessionUser data => '+JSON.stringify(data));
          UserHolder.setUser(data);
        })
        .error(function () {
          alert('ERROR getting current user!');
        });
    };

    this.signout = function() {
      console.log('Called AuthService.signout with '+JSON.stringify(UserHolder.getUser()));
      var headers = this.createHeaders(UserHolder.getUser());
      console.log('In signout '+JSON.stringify(headers));
      var response = $http({url: '/api/signout', method: 'POST', data: UserHolder.getUser(),
        headers: headers});
      UserHolder.setUser({});
      return response;
    };
  });
