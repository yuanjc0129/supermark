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
		--简单使用  <br />
		<h2>{{firstName + ' ' +lastName}}</h2>
		<h2>{{firstName}} {{lastName}}</h2>
		<h2>{{getFullName()}}</h2>
		<h2>{{fullName}}</h2>
		--复杂使用 <br />
		<h2>{{totalPrice }}</h2>
	</div>
	<script type="text/javascript" src="js/vue.js"></script>
	<script type="text/javascript">
		const app = new Vue({
			el : '#app',
			data : {
				firstName:'Lebron',
				lastName:'James',
				books:[
					{id:110,name:'语文',price:119},
					{id:120,name:'数学',price:150},
					{id:130,name:'英语',price:190},
				]
			},
			computed:{
				fullName : function(){
					return this.firstName + ' ' + this.lastName;
				},
				totalPrice : function(){
					let result = 0;
					for(let i = 0; i< this.books.length;i++){
						result += this.books[i].price;
					}
					return result;
				}
			},
			methods:{
				getFullName : function(){
					return this.firstName + ' ' + this.lastName;
				}
			}
		})
	</script>
</body>
</html>
