Ctrl = ($scope, $state, Search, Category)->
  console.log 'H O M E P A G E, B O Y S'
  $scope.vid = "7PTriE459ko"

  $scope.categories = {}

  Category.getList().$promise.then (data) ->
    $scope.categories = data.collection

  $scope.getResult = (val) ->
    Search.search(
      query: val
    )
    .$promise.then (data) ->
      return data.collection

  $scope.onSelect = ($item) ->
    $state.go('articles.show', {id: $item.id})

Ctrl.$inject = ['$scope','$state','Search', 'Category']
angular.module('client').controller('HomeCtrl', Ctrl)
