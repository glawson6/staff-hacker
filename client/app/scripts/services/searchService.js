'use strict';

//var groupModule = angular.module('GroupService',[]);
angular.module('staffHackerApp')
  .service('SearchService', function ($http) {

    // this.getRecruiters = function(recruiter){
    
    //  return $http.get('/api/search');
    // };
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

    this.findRecruiters = function(recruiter) {
      console.log('Called SearchService.findRecruiters with '+JSON.stringify(recruiter));
      return $http.post('/api/search', recruiter );
    };
  });
