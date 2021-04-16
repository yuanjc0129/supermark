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
<!-- 
fontSize = font-size
v-bind: = :
 -->
<body>
	<div id="app">
		<h2 :style="{fontSize:'20px',color:'red'}">{{message}}</h2>
		<h2 :style="{fontSize:h2FontSize,color:'red'}">{{message}}</h2>
		<h2 :style="getStyles()">{{message}}</h2>
		<h2 :style="[baseStyle,baseStyle1]">{{message}}</h2>
	</div>
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
		const app = new Vue({
			el : '#app',
			data : {
				message:'你好啊',
				h2FontSize:'50px',
				h2FontSize2:50,
				h2Color:'blue',
				baseStyle:{backgroundColor:'red'},
				baseStyle1:{color:'white'}
			},
			methods:{
				getStyles:function(){
					return {fontSize:this.h2FontSize2 + 'px',color:this.h2Color};
				}
			}
		})
	</script>
</body>
</html>
