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

<style type="text/css">
	.active{color:red}
	.active4{color:blue}
</style>
</head>
<!-- 
v-bind  语法糖 :

 -->
<body>
	<div id="app">
		<!--错误写法  -->
		<!-- <img src="{{imageUrl}}"/> -->
		一、动态绑定标签v-bind ↓ <br />
		<img v-bind:src="imageUrl"/>
		<a v-bind:href="aHref">百度一下</a>
		
		<img :src="imageUrl"/><!-- 语法糖简写 : -->
		<a :href="aHref">百度一下</a><!-- 语法糖简写 : -->
		<br />
		二、动态绑定class（对象） ↓ <br />
		<h2 class="active">{{message}}</h2>
		<h2 :class="{active:isActive,line:isLine}">{{message}}</h2>		
		<button @click="btnClick">按钮</button>
		<br />
		三、动态绑定class ↓ 
		<h2 class="active">{{message}}</h2>
		<h2 :class="getClasses()">{{message}}</h2>		
		<button @click="btnClick">按钮</button>
		<br />
		四、动态绑定class（数组） ↓ <br />
		<h2 :class="['active4','line']">{{message}}</h2>
		<h2 :class="[active4,line]">{{message}}</h2>
		<h2 :class="getClasses4()">{{message}}</h2>
	</div>
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
		const app = new Vue({
			el : '#app',
			data : {
				message:'你好啊',
				imageUrl:'https://img14.360buyimg.com/seckillcms/s140x140_jfs/t1/168197/17/7022/122326/602e0c40E4572d342/8a354396c015e900.jpg.webp',
				aHref:'http://www.baidu.com',
				active:'active',
				isActive:true,
				isLine:true,
				active4:'aaaa',
				line:'bbbb'
			},
			methods:{
				btnClick:function(){
					this.isActive = !this.isActive;
				},
				getClasses:function(){
					return {active:this.isActive,line:this.isLine};
				},
				getClasses4:function(){
					return [this.active4,this.line];
				}
			}
		})
	</script>
</body>
</html>
