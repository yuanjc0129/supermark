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
</style>
</head>
<!--(item,index) 元组  -->
<body>
	<div id="app">
		<ul>
			<li :class="{active:currentIndex == index}" v-for="(item,index) in movies" @click="changeColor(index)">{{index+1}}--{{item}}</li>
		</ul>
		<button @click="changeColor">按钮</button>
		<!-- 在遍历对象的过程中，如果只是获取一个值，那么获取到的是value -->
		<ul>
			<li v-for="item in info" >{{item}}</li>
		</ul>
		<!--获取key和value  -->
		<ul>
			<li v-for="(value,key) in info" >{{key}}--{{value}}</li>
		</ul>
		<!--插入元素  -->
		<ul>
			<li v-for="item in movies" :key="item">{{item}}</li>
		</ul>
		<button @click="insert()">插入</button>
	</div>
	<script type="text/javascript" src="<%=basePath%>js/vue.js"></script>
	<script type="text/javascript">
		const app = new Vue({
			el : '#app',
			data : {
				message:'你好啊',
				movies:['进击的巨人','海尔兄弟','火影忍者','海贼王'],
				isActice:false,
				currentIndex:0,
				info:{
					name:'why',
					age:18
				}
			},
			methods:{
				insert(){
					//响应式
					//this.movies.splice(2,0,'哈哈');//在第2个位置插入
					//this.movies.splice(1,2);//在第1个位置删除后边2个数据
					//this.movies.splice(1);//在第1个位置后边全删
					//this.movies.splice(1,3,'11','22','33');//在第1个位置3个替换成
					//this.movies.push('哈哈');//最后添加元素 this.movies.push('哈哈','呵呵');
					//this.movies.unshift('哈哈');//最前添加元素
					//this.movies.pop();//删除数组中最后一个元素
					//this.movies.shift();//删除数组中第一个元素
					Vue.set(this.movies,0,'11111111');
					
					//非响应式
					//this.movies[0]='123123';
					
					
				},
				changeColor : function(index){
					this.currentIndex=index;
				}
			}
		})
		function sum(...nums){
			console.log(nums);
		}
		sum(1,2,3,4,7);
	</script>
</body>
</html>
