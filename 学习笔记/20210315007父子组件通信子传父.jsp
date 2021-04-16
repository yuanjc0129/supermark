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
	<!-- 父组件模板 -->
	<div id="app">
		<cpn  @itemclick="cpnClick" />
	</div>
	<!-- 子组件模板 -->
	<template id="cpn">
		<div>
			<button v-for="i in categories" @click="btnClick(i)">
				{{i.name}}
			</button>
		</div>
	</template>
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
		//父传子
		const cpn =  {
			template:'#cpn',
			data(){
				return{
					categories : [
						{id:1,name:'热门推荐'},
						{id:2,name:'手机数码'},
						{id:3,name:'家用家电'},
						{id:4,name:'电脑办公'}
					]
				}
			},
			methods:{
				btnClick(i){
					this.$emit('itemclick',i)
				}
			}
		}
		const app = new Vue({
			el : '#app',
			data : {
				message:'你好啊'
			},
			components:{
				cpn
			},
			methods:{
				cpnClick(item){
					console.log(item);
				}
			}
		})
	</script>
</body>
</html>
