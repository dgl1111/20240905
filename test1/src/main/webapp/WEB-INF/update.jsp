<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<jsp:include page="/layout/menu.jsp"></jsp:include>
	<title>테스트 샘플 파일</title>
</head>
<style>
</style>
<body>
	<div id="app">
		<div>
			<input type="text" placehold="1~15 입력(pk값)" v-model="{{self.productNo}}">
			<button @click="fnSearch">검색</button>
			제품번호:<div>{{self.productNo}}</div>
			제품명:<div>{{self.productName}}</div>
			제품가격:<div>{{self.productPrice}}</div>
			<button @click="fnSearch">수정</button><button @click="fnSearch">삭제</button>
		</div>
	</div>
</body>
</html>
<script>
    const app = Vue.createApp({
        data() {
            return {
				productNo : self.productNo;
				productName : self.productName;
				productPrice : self.productPrice;
				
            };
        },
        methods: {
            fnGetList(productNo){
				var self = this;
				var nparmap = {};
				$.ajax({
					url:"test.dox",
					dataType:"json",	
					type : "POST", 
					data : nparmap,
					success : function(data) { 
						console.log(data);
						
					}
				});
            },
			
			fnSearch(){
				var self = this;
				var nparmap = {
					self.productNo : "",
					self.productName : "",
					self.productPrice : "",
				};
				$.ajax({
					url:"test.dox",
					dataType:"json",	
					type : "POST", 
					data : nparmap,
					success : function(data) { 
						console.log(data);
						
					}
				});
				
			}
        },
        mounted() {
			
        }
    });
    app.mount('#app');
</script>
​