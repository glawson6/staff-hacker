'use strict';

//var groupModule = angular.module('GroupService',[]);
angular.module('staffHackerApp')
  .service('SearchService', function ($http) {

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
    //}; ({withCredentials: true, ...}).

    this.findRecruiter = function(recruiter) {
      console.log('Called SearchService.signin with '+JSON.stringify(recruiter));
      var headers = {remember_token: recruiter.remember_token};
      console.log('In find Recruiter '+JSON.stringify(headers));
      return $http({withCredentials: true,  url: '/api/searchRecruiters', method: 'POST', data: recruiter,
        headers: headers});
    };


  });
