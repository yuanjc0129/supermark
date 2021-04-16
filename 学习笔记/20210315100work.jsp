<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '20210315100work.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<div id="app">
  		{{message}}
  		<f></f>
  	</div>
    <template id="f">
    	<div>我是父级元素</div>
    </template>
    <script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
    <script type="text/javascript">
    	const f = {
    		template:'#f'
    	}
    	const app = new Vue({
    		el : '#app',
    		data : {
    			message : '你好啊'
    		},
    		components:{
    			f
    		}
    	})
    </script>
  </body>
</html>
