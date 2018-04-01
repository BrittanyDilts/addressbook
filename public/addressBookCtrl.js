var addressBookApp = angular.module('AddressBookApp', []);
addressBookApp.controller('AddressBookCtrl', ['$scope', '$http', '$timeout',
function($scope, $http, $timeout){
    console.log("Make it so");

    $scope.addresses = [];
    $http.get('/addresses').then(function(response){
        console.log("Addresses received...");
        $scope.addresses = response.data;
        console.log($scope.addresses);
    });
    
    $scope.addAddress = function(address){
        console.log(address);
        if(address.id == null){
            $http.post('/addresses', address);
        } else {
            console.log(address.id);
            $http.put('/addresses/' + address.id, address);
        }
        $timeout(function(){
            $scope.address = {};
            $scope.addressForm.$setPristine();
            $scope.addressForm.$setUntouched();
        }, 500);
        
    }
}]);

addressBookApp.directive('uppercase', function() {
    return {
        restrict: "A",
        require: "?ngModel",
        link: function(scope, element, attrs, ngModel) {
    
            //This part of the code manipulates the model
            ngModel.$parsers.push(function(input) {
                return input ? input.toUpperCase() : "";
            });
    
            //This part of the code manipulates the viewvalue of the element
            element.css("text-transform","uppercase");
        }
    };
    });

// addressBookApp.filter('matchTyped', function(){
//     return {

//     }
// })
