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
		<cpn :cmovies="movies" :cmessage="message"></cpn> 
	</div>
<!-- <script type="text/x-template" id="cpn">
	<div>
		<h2>{{cmovies}}</h2>
		<h2>{{cmessage}}</h2>
	</div>
</script>	-->
<template id="cpn">
	<div>
		<h2 v-for="i in cmovies">{{i}}</h2>
		<h2>{{cmessage}}</h2>
	</div>
</template>
	
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
		//父传子
		const cpn =  {
			template:'#cpn',
			/* props:['cmovies','cmessage'], */
			props:{
				//指定类型
				/* cmovies:Array,
				cmessage:String */
				//提供一些默认值
				cmessage:{
					type:String,
					default:'aaaaaa'
				},
				cmovies:{
					type:Array,
					/* default:[], 新版本默认值会报错*/
					default(){
						return [];
					}
				}
			},
			data(){
				return{
					
				}
			},
			methods:{
				
			}
			
		}
		const app = new Vue({
			el : '#app',
			data : {
				message:'你好啊',
				movies:['1','2','3']
			},
			components:{
				cpn
			}
		})
	</script>
</body>
</html>
