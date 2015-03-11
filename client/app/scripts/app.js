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
    'ui.router',
    'ngSanitize',
    'ngTouch'
  ])
  .provider('Nav',function(){
    var tabs =  {
      home:{ state: 'home',   label: 'Home',   active: true, visible:true},
      signup:{ state: 'signup',   label: 'Sign Up',   active: false, visible:true},
      signin:{ state: 'signin',   label: 'Sign In',   active: false, visible:true},
      signout:{ state: 'signout',   label: 'Sign Out',   active: false, visible:false},
      search:{ state: 'search',   label: 'Search',   active: false, visible:false},
      toArray: function(){
        var tabArray = [this.home,this.signin,this.signup,this.signout,this.search];
        return tabArray;
      },
      signIn: function(){
        console.log('Nav signing in!');
        this.signin.visible = false;
        this.signup.visible = false;
        this.search.visible = true;
        this.signout.visible = true;
      },
      signOut: function(){
        console.log('Nav signing out!');
        this.signin.visible = true;
        this.signup.visible = true;
        this.search.visible = false;
        this.signout.visible = false;
      }
    };

    return {
      navTabs: tabs,
      $get: function tabFunction() {
        return tabs;
      }
  };
  })
  .config(function ($stateProvider, $urlRouterProvider,NavProvider) {
    console.log('NavProvider home => '+JSON.stringify(NavProvider.navTabs.home.label));
    console.log('NavProvider => '+JSON.stringify(NavProvider.navTabs.toArray()));
    $stateProvider
      .state(NavProvider.navTabs.home.state, {
        url: '/',
        templateUrl: 'views/home.html',
        controller: 'MainCtrl'
      })
      .state(NavProvider.navTabs.signup.state, {
        url: '/signup',
        templateUrl: 'views/signup.html',
        controller: 'AboutCtrl'
      })
      .state(NavProvider.navTabs.signin.state, {
        url: '/signin',
        templateUrl: 'views/signin.html',
        controller: 'AuthCtrl'
      })
      .state(NavProvider.navTabs.signout.state, {
        url: '/',
        templateUrl: 'views/home.html',
        controller: 'MainCtrl'
      })
      .state('recruiter-rating', {
        url: '/recruiter-rating',
        templateUrl: 'views/recruiter-rating.html',
        controller: 'AboutCtrl'
      })
      .state('company-results', {
        url: '/company-results',
        templateUrl: 'views/company-results.html',
        controller: 'AboutCtrl'
      })
      .state('recruiter-results', {
        url: '/recruiter-results',
        templateUrl: 'views/recruiter-results.html',
        controller: 'AboutCtrl'
      })
      .state(NavProvider.navTabs.search.state, {
        url: '/search',
        templateUrl: 'views/search.html',
        controller: 'SearchCtrl'
      });
    $urlRouterProvider.otherwise('home');
  });
