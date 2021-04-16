<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'count.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<!-- 父组件模板 -->
	<div id="app">{{num1}}
		<cpn :cnum1="num1" 
			 :cnum2="num2" 
			 @num1change = "num1change" 
			 @num2change = "num2change"/>
	</div>
	<!-- 子组件模板 -->
	<template id="cpn">
		<div>
			 <h2>props:{{cnum1}}</h2>
			 <h2>data:{{dnumber1}}</h2>
			 <!-- <input type="text" v-model="dnumber1"> -->
			 <input type="text" :value="dnumber1" @input="cnum1Input">
			 <h2>props:{{cnum2}}</h2>
			 <h2>data:{{dnumber2}}</h2>
			 <!-- <input type="text" v-model="dnumber2"> -->
			 <input type="text" :value="dnumber2" @input="cnum2Input">
		</div>
	</template>
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
		//父传子
		const cpn =  {
			template:'#cpn',
			props:{//官网不建议这么使用双向绑定，改用data
				cnum1:Number,
				cnum2:Number
			},
			data(){
				return{
					dnumber1:this.cnum1,
					dnumber2:this.cnum2,
				}
			},
			methods:{
				cnum1Input(event){
					//1.将input的value赋值到dnumber1中
					this.dnumber1=event.target.value;
					//2.为了放父组件可以修改值，发出事件
					this.$emit('num1change',parseInt(this.dnumber1));
				},
				cnum2Input(event){
					this.dnumber2=event.target.value
					this.$emit('num2change',parseInt(this.dnumber2));
				}
			}
		}
		const app = new Vue({
			el : '#app',
			data : {
				num1: 1,
				num2: 0
			},
			components:{
				cpn
			},
			methods:{
				num1change(value){
					this.num1 = value;
				},
				num2change(value){
					this.num2 = value;
				}
			}
		})
	</script>
</body>
</html>
