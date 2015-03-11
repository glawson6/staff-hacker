'use strict';

//var groupModule = angular.module('GroupService',[]);
angular.module('staffHackerApp')
  .service('AuthService', function ($http) {

    //this.getGroups = function(){
    //
    //  return $http.get('/api/groups');
    //};
    //
    //this.addGroup = function(group){
    //
    //  var groupObj = {group: group};
    //  console.log(JSON.stringify(groupObj));
    //  return $http.post('/api/groups', groupObj);
    //};
    //
    //this.destroyGroup = function(group){
    //
    //  return $http.delete('/api/groups/'+group.id);
    //};

    this.signUp = function(user) {
      return $http.post('/api/signup', user );
    };

    this.signin = function(user) {
      console.log('Called AuthService.signin with '+JSON.stringify(user));
      return $http.post('/api/signin', user );
    };

    this.setUser = function(user){
      console.log('Setting user '+JSON.stringify(user));
      this.user = user;
    };

    this.getUser = function(){
      return this.user;
    };

    this.signout = function() {
      console.log('Called AuthService.signout with '+JSON.stringify(this.user));
      var headers = {remember_token: this.user?this.user.remember_token:''};
      console.log('In signout '+JSON.stringify(headers));
      var response = $http({withCredentials: true,  url: '/api/signout', method: 'POST', data: this.user,
        headers: headers});
      this.user = {};
      return response;
    };
  });
