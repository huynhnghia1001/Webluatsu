app.controller("account-ctrl",function($scope, $http){
	$scope.items=[];
	$scope.cates =[];
	$scope.form={};
	
	$scope.initialize = function(){
		//load account
			$http.get("/rest/lawyers").then(resp =>{
				$scope.items = resp.data;
				
			});
		//load categories
			$http.get("/rest/cates").then(resp =>{
				$scope.cates = resp.data;
				
			});
	}
	$scope.timfullname = function(){
		var item = angular.copy($scope.form);
		$http.get(`/rest/lawyers/tim/${item.fullname}`).then(resp => {
			$scope.items = angular.copy(resp.data);
		})
	}
	//Khởi đầu
	$scope.initialize();
	
	//Xóa form
	$scope.reset=function(){
		$scope.form={
			photo: 'cloud-upload.jpg',
		};
	}
	//Hiển thị lên form
	$scope.edit=function(item){
		$scope.form=angular.copy(item);
		$(".nav-tabs a:eq(0)").tab('show')
	}
	//Thêm sản phẩm mới
	$scope.create=function(){
		var item = angular.copy($scope.form);
		$http.post('/rest/lawyers',item).then(resp => {
			$scope.items.push(resp.data);
			$scope.reset();
			alert("Thêm mới  thành công!");
		}).catch(error => {
			alert("Lỗi Thêm mới !");
			console.log("Error", error);
		})
	}
	//Cập nhật sản phẩm
	$scope.update=function(){
		var item = angular.copy($scope.form);
		$http.put(`/rest/lawyers/${item.id}`,item).then(resp => {
			var index = $scope.items.findIndex(p=>p.id == item.id);
			$scope.items[index] = item;
			alert("Cập nhật  thành công!")
		})
		.catch(error => {
			alert("Lỗi cập nhật ");
			console.log("Error",error);
		});
	}
	//Xóa sản phẩm
	$scope.delete=function(item){
		$http.delete(`/rest/lawyers/${item.id}`).then(resp => {
			var index = $scope.items.findIndex(p=>p.id == item.id);
			$scope.items.splice(index,1);
			$scope.reset();
			alert("Xóa  thành công!")
		})
		.catch(error => {
			alert("Lỗi Xóa  ");
			console.log("Error",error);
		});
	}
	//Upload hình
	$scope.imageChanged=function(files){
		var data =  new FormData();
		data.append('file',files[0]);
		$http.post('/rest/upload/images',data,{
			transformRequest: angular.identity,
			headers:{'Content-Type':undefined}
		}).then(resp => {
			$scope.form.image = resp.data.name;
		}).catch(error => {
			alert("Lỗi upload hình ảnh");
			console.log("Error",error);
		}) 
	}
	
	
	$scope.pager = {
		page:0,
		size:10,
		get items(){
			var start = this.page*this.size;
			return $scope.items.slice(start, start + this.size);
		},
		get count(){
			return Math.ceil(1.0 *$scope.items.length / this.size);
		},
		first(){
			this.page = 0;
		},
		prev(){
			this.page --;
			if(this.page < 0){
				this.last();
			}
		},
		next(){
			this.page ++;
			if(this.page >= this.count){
				this.first();
			}
		},
		last(){
			this.page = this.count -1;
		}
	}
});