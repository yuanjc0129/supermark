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
		<label for="male">
			<input type="radio" id="male" name="sex" value="男" v-model="sex">男
		</label>
		<label for="famale">
			<input type="radio" id="famale" name="sex" value="女"  v-model="sex">女
		</label>
		{{sex}}
	</div>
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
		const app = new Vue({
			el : '#app',
			data : {
				message:'你好啊',
				sex:'男'
			},
			methods:{
				valueChange(event){
					this.message = event.target.value;
				}
			}
		})
	</script>
</body>
</html>
