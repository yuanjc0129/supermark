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
		<cpn></cpn>
		<cpn>
			<div slot-scope="slot">
				<span v-for="item in slot.data">{{item}}-</span>
			</div>
		</cpn>
		<cpn>
			<div slot-scope="slot">
				<span v-for="item in slot.data">{{item}}*</span>
			</div>
		</cpn>
		<cpn>
			<template slot-scope="slot">
				<span>{{slot.data.join('-')}}</span>
			</template>
		</cpn>
	</div>
<template id="cpn">
	<div>
		<slot :data="pLanguages">
			<ul>
				<li v-for="item in pLanguages">{{item}}</li>
			</ul>
		</slot>
	</div>
</template>	
	
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
		var a = (function(){
			var a = {};
			var flag = true;
			a.flag = flag;
			function sum(a,b){
				return a + b;
			}
			a.sum = sum;
			return a;
		})()
		alert(a.flag);
	    alert(a.sum(1,100));
	
		const cpn = {
			template:'#cpn',
			data(){
				return{
					isShow: false,
					pLanguages:['JavaScript','Java','C++', '.Net']
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
