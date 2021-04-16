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
		<!-- 单选框 -->
		<!-- <label for="agree">
			<input type="checkbox" id="agree" v-model="isAgree">同意协议
		</label>
		<h2>{{isAgree}}</h2>
		<button :disabled="!isAgree">下一步</button> -->
		<!-- 多选框 -->
		<input type="checkbox" value="篮球" v-model="hobbies">篮球
		<input type="checkbox" value="足球" v-model="hobbies">足球
		<input type="checkbox" value="乒乓球" v-model="hobbies">乒乓球
		{{hobbies}}
	</div>
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
		const app = new Vue({
			el : '#app',
			data : {
				message:'你好啊',
				isAgree:false,
				hobbies:[]
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
