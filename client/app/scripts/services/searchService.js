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

    this.findRecruiters = function(recruiterSearch,user) {
      console.log('Called SearchService.signin with '+JSON.stringify(recruiterSearch));
      var headers = {remember_token: user?user.remember_token:''};
      console.log('In find Recruiter '+JSON.stringify(headers));
      return $http({withCredentials: true,  url: '/api/searchRecruiters', method: 'POST', data: recruiterSearch,
        headers: headers});
    };


  });
