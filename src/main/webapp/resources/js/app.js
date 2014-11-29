(function() {

    var app = angular.module('demo',[]);

    app.controller('DataPrepareController', [ '$http', '$scope', '$rootScope',
            function($http, $scope, $rootScope) {
                $rootScope.itemInfos = [];
                $http.get('items').success(function(data) {
                    $rootScope.itemInfos = data;
                });
            } ]);

    app.controller('TabController', [ '$scope', function($scope) {
        $scope.tab = 2;

        $scope.setTab = function(tab) {
            $scope.tab = tab;
        };

        $scope.isSelected = function(tab) {
            return $scope.tab === tab;
        };
    } ]);

    app.controller('ItemController', [ '$http', '$scope', '$rootScope',
        function($http, $scope, $rootScope) {
    
        $scope.newItem = {};
        $scope.selectedItem = {};
        $scope.itemTab = 1;

        $scope.addItem = function () {
            $http.post('items', $scope.newItem).success(function (savedItem) {
                $rootScope.itemInfos.push(savedItem);
            });
            $scope.newItem = {};
            $scope.itemTab = 1;
            return true;
        };

        $scope.updateItem = function () {
            $http.put('items/' + $scope.selectedItem.id, $scope.selectedItem).success(function (savedItem) {
                for (var i in $rootScope.itemInfos) {
                    if ($rootScope.itemInfos[i].id === savedItem.id) {
                        $rootScope.itemInfos[i] = savedItem;
                        break;
                    }
                }
            });
            $scope.itemTab = 1;
            return true;
        };
        
        $scope.deleteItem = function () {
            $http.delete('items/' + $scope.selectedItem.id).success(function () {
                $http.get('items').success(function (data) {
                    $rootScope.itemInfos = data;
                });
            });
            $scope.itemTab = 1;
            return true;
        };

        $scope.setNewItem = function () {
            $scope.newItem = {};
        };

        $scope.setSelectedItem = function (selectedItemInfo) {
            $scope.selectedItem = selectedItemInfo;
        };

        $scope.setItemTab = function (tab) {
            $scope.itemTab = tab;
        };

        $scope.isItemTabSelected = function (tab) {
            return ($scope.itemTab === tab);
        };
    }]);
})();