'use strict';

angular.module('staffHackerApp')
  .service('RecruiterService', function ($http, AuthService) {

    this.findRecruiters = function(recruiterSearch,user) {
      console.log('Called RecruiterService.findRecruiters with '+JSON.stringify(recruiterSearch));
      var headers = AuthService.createHeaders(user);
      console.log('In find Recruiter '+JSON.stringify(headers));
      return $http({withCredentials: true,  url: '/api/searchRecruiters', method: 'POST', data: recruiterSearch,
        headers: headers});
    };

    this.getRecruiter = function(id,user) {
      console.log('Called RecruiterService.getRecruiter with '+JSON.stringify(id));
      var headers = AuthService.createHeaders(user);
      console.log('In get Recruiter '+JSON.stringify(headers));
      return $http({withCredentials: true,  url: '/api/recruiters/'+id, method: 'GET',
        headers: headers});
    };

    this.createRating = function(rating,user) {
      var headers = AuthService.createHeaders(user);
      console.log('Called RecruiterService.createRating with '+JSON.stringify(rating)+' and headers '+headers);
      return $http({withCredentials: true,  url: '/api/ratings', method: 'POST', data: rating,
        headers: headers});
    };
  });
