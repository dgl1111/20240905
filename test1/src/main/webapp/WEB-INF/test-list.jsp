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
			<input type="text" placeholder="1~15 입력(pk값)" v-model="productNo">
			<button @click="fnSearch">검색</button>
			<div v-if="info">
				<div>
					제품번호: {{productNo}}
				</div>
				<div>
					제품명: {{productName}}
				</div>
				<div>
					제품가격:
					<span v-if="modify"><input type="text" placeholder="가격입력" v-model="productPrice"><button @click="fnSave">저장</button></span>
					<span v-else>{{productPrice}}</span>
					
				</div>
				<button @click="fnUpdate">수정</button><button @click="fnDelete">삭제</button>
			</div>
			
		</div>
	</div>
</body>
</html>
<script>
    const app = Vue.createApp({
        data() {
            return {
				productNo : "",
				productName : "",
				productPrice : "",
				info : false,
				modify : false
				
            };
        },
        methods: {
            fnGetList(){
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
				self.info = true;
				var nparmap = {
					productNo : self.productNo
				};
				$.ajax({
					url:"test.dox",
					dataType:"json",	
					type : "POST", 
					data : nparmap,
					success : function(data) { 
						console.log(data);
						self.productNo = data.product.productNo;
						self.productName = data.product.productName;
						self.productPrice = data.product.productPrice;
					}
				});
				
			},

			fnUpdate(){
				var self = this;
				var nparmap = {};
				self.modify = true;
				self.productPrice = "";
            },

			fnSave(){
				var self = this;
				self.info = true;
				var nparmap = {
					productNo : self.productNo,
					productPrice : self.productPrice
				};
				$.ajax({
					url:"test-update.dox",
					dataType:"json",	
					type : "POST", 
					data : nparmap,
					success : function(data) { 
						console.log(data);
						self.modify = false;
						
						
					}
				});
            },

			fnDelete(){
				var self = this;
				var nparmap = {
					productNo : self.productNo
				};
				$.ajax({
					url:"test-delete.dox",
					dataType:"json",	
					type : "POST", 
					data : nparmap,
					success : function(data) { 
						console.log(data);
						alert(data.message);
						self.info = false;
						self.productNo = "";
						
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