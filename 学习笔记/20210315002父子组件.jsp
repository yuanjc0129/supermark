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
		<mycon2 />
		<cpnC2 />
	</div>
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
	
		//1创建组件构造器对象
		 const cpnC1 = Vue.extend({
			template:`
				<div>
					<h2>我是标题</h2>
				</div>
			`
		}) 
		Vue.component('cpnC2',{
			template:`
				<div>
					<h2>我是标题语法糖</h2>
				</div>
			`
		});
		const cpnC2 = Vue.extend({//父组件
			template:`
				<div>
					<h2>我是内容</h2>
					<cpn1></cpn1>
				</div>
			`,
			components:{
				cpn1:cpnC1//子组件
			}
		})
	
		const app = new Vue({
			el : '#app',
			data : {
				message:'你好啊'
			},
			components:{
				mycon2:cpnC2//局部组件
			}
		})
	</script>
</body>
</html>
