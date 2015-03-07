'use strict';

/**
 * @ngdoc overview
 * @name staffHackerApp
 * @description
 * # staffHackerApp
 *
 * Main module of the application.
 */
angular
  .module('staffHackerApp', [
    'ngAnimate',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/home.html',
        controller: 'MainCtrl'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl'
      })
      .when('/signin', {
        templateUrl: 'views/signin.html',
        controller: 'AuthCtrl'
      })
      .when('/signup', {
        templateUrl: 'views/signup.html',
        controller: 'AboutCtrl'
      })
      .when('/search', {
        templateUrl: 'views/search.html',
        controller: 'SearchCtrl'
      })
      .when('/recruiter-rating', {
        templateUrl: 'views/recruiter-rating.html',
        controller: 'AboutCtrl'
      })
      .when('/recruiter-results', {
        templateUrl: 'views/recruiter-results.html',
        controller: 'AboutCtrl'
      })
      .when('/company-results', {
        templateUrl: 'views/company-results.html',
        controller: 'AboutCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
