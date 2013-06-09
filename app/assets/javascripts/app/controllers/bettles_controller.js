app.controller('BettlesController', ['$scope', 'Bettle', 
    function($scope, Bettle) {
      $scope.bettles = Bettle.query();
    }
  ]);
   // $scope.bettles = Bettles; 
//    
  // // update scope via server send events
  // // source.addEventListener('message', function(data) {
    // // console.log(data);
    // // $scope.$apply(function () {
      // // $scope.bettles.cast.push($.parseJSON(data.data));
    // // });
  // // }, false);
// 
  // // console.log($scope.bettles);
//   
  // $scope.setOrder = function (order) {
        // $scope.order = order;
    // };
// }