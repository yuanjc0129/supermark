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
		<cpn :c-info = "info" :childmessage="message"></cpn> 
	</div>
<template id="cpn">
<div>父组件定义的驼峰式数据需要在子组件用-
	<h2>{{cInfo}}</h2>
	{{childmessage}}
</div>
</template>
	
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
		//父传子
		const cpn =  {
			template:'#cpn',
			props:{
				cInfo : {
					type : Object,
					default(){
						return {};
					}
				},
				childmessage:{
					type :String
				}
			}
		}
		const app = new Vue({
			el : '#app',
			data : {
				info:{
					name:'name',
					age:17,
				},
				message:'hahaha'
			},
			components:{
				cpn
			}
		})
	</script>
</body>
</html>
