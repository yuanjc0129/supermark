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
		lazy:回车或失去焦点才生效<br />
		<label>
			<input type="text" v-model.lazy="message" >
		</label>
		{{message}}
		<br />
		number:转换属性为number类型<br />
		<label>
			<input type="number" v-model.number="age" >
		</label>
		{{typeof(age)}}
	</div>
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
		const app = new Vue({
			el : '#app',
			data : {
				message:'你好啊',
				age:12
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
