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
		<h2>{{message}}</h2>
		<my-con></my-con>
		<mycon1></mycon1>
	</div>
	<my-con></my-con>
	<my-con></my-con>
	<my-con></my-con>
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
	
		//1创建组件构造器对象
		const cpn = Vue.extend({
			template:`
			<div>
				<h2>我是标题</h2>
			</div>`
		})
		const cpn1 = Vue.extend({
			template:`
			<div>
				<h2>我是标题11111</h2>
			</div>`
		})
		//2注册组件(全局组件)
		Vue.component('my-con',cpn);
	
		const app = new Vue({
			el : '#app',
			data : {
				message:'你好啊'
			},
			components:{
				mycon1:cpn1//局部组件
			}
		})
	</script>
</body>
</html>
