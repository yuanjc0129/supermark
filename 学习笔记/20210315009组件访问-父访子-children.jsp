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
	<div id="app"> 
		
		<cpn ref="aaa"></cpn>
		<button @click="btnClick">按钮</button>
	</div>
	<!-- 子组件模板 -->
	<template id="cpn">
		<div>我是子组件</div>
	</template>
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
		//父传子
		const cpn =  {
			template:'#cpn',
			methods:{
				showMessage(){
					console.log(13131);
				}
			},
			data(){
				return {
					name: '我是子组件的name'
				}
			}
		}
		const app = new Vue({
			el : '#app',
			components:{
				cpn
			},
			methods:{
				btnClick(){
					//不建议用数组，因为children多个的时候不好控制了
					/* this.$children[0].showMessage();
					console.log(this.$children[0].name); */
					this.$refs.aaa.showMessage();
				}
			}
		})
	</script>
</body>
</html>
