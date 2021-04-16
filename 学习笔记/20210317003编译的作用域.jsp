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
	<div id="app">
		<cpn v-show="isShow"></cpn>
	</div>
<template id="cpn">
	<div>
		<h2>我是子组件</h2>
		<h2>我是内容，哈哈哈</h2>
	</div>
</template>	
	
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
		const cpn = {
			template:'#cpn',
			data(){
				return{
					isShow: false
				}
			}
		}
		const app = new Vue({
			el : '#app',
			data : {
				message:'你好啊',
				isShow: true
			},
			components:{
				cpn
			}
		})
	</script>
</body>
</html>
