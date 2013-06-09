app.config(['$routeProvider', function($routeProvider) {
    $routeProvider.
      when('/', {
        controller: 'BettlesController',
        templateUrl:'/assets/index.html.erb'
      }).otherwise({redirectTo:'/'});
}]);