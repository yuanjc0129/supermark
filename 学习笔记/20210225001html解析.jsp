<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '20210225生命周期.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		[v-cloak]{
			display: none
		}
	</style>
  </head>
  
  <body>
  	<div id="app" v-cloak><!-- v-cloak斗篷 -->
  		<h1>{{url}}</h1>
  		<h1 v-html="url"></h1>
  		<h1 v-text="message">,张三</h1><!--  -->
  		<h1 v-once>{{message}}</h1><!-- 不会因message数据修改而修改 -->
  		<h1 v-pre>{{message}}</h1><!-- 原封不动显示 -->
  	</div>
    <script type="text/javascript" src="<%=basePath %>js/vue.js"></script>
    <script type="text/javascript">
    	var app = new Vue({
    		el:'#app',
    		data:{
    			url:'<a href="http://www.baidu.com">百度一下</a>',
    			message:'你好啊'
    		}
    	})
    </script>
  </body>
</html>
