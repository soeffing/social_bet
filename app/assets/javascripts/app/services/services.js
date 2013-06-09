app.factory('Bettle', ['$resource',
  function($resource) {
  	return $resource('/api/bettles/:id', {id: '@id'});
  }
 ]);