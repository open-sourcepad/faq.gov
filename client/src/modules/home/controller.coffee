Ctrl = ($scope,$state,Search)->
  console.log 'H O M E P A G E, B O Y S'
  $scope.vid = "AW1AUe0MbQE"
  $scope.vid = "7PTriE459ko"

  $scope.getResult = (val) ->
    Search.search(
      query: val
    )
    .$promise.then (data) ->
      console.log(data)
      return data.collection

Ctrl.$inject = ['$scope','$state','Search']
angular.module('client').controller('HomeCtrl', Ctrl)
