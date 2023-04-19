const app = angular.module("account-app", []);
app.controller("account-ctrl", function($scope, $http) {
    $scope.nut = false;
	$scope.check = function() {
		var item = angular.copy($scope.form);
		$http.get(`/rest/accounts/${item.username}`).then(resp => {
			item = resp.data;
			if (item.username == $scope.form.username) {
				$scope.kiemtra = true;
				$scope.nut = true;
			} else {
				alert("Sai email hoặc tài khoản")
			}
		}).catch(error => {
			alert("Tài khoản không tồn tại");
			console.log("Error", error);
		})
	}

	$scope.quenmk = function() {
		var item = angular.copy($scope.form);
		$http.get(`/rest/accounts/${item.username}`).then(resp => {
			item = resp.data;

			if ($scope.form.newPass == $scope.form.confirm) {
				item.password = $scope.form.newPass;
				$http.put(`/rest/accounts/${item.username}`, item).then(resp => {
					alert("Mật khẩu mới là: " + item.password)
				})

			} else {
				alert("Nhập lại mật khẩu không đúng")
			}
			$scope.form = {};
		})

	}
	$scope.create=function(){
		var item = angular.copy($scope.form);
		$http.post(`/rest/accounts/${item.username}`,item).then(resp => {
			alert("Thêm mới  thành công!");
		}).catch(error => {
			alert("Lỗi Thêm mới !");
			console.log("Error", error);
		})
	}
})