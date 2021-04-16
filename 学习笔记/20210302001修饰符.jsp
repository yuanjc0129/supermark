<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '20210223001作用域.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  <!--.stop divClick，僅執行 btnClick() -->
  <!--.prevent 阻止事件，不走form的submit，只走click的方法submitClick -->
  <!--.enter 只监听enter键的事件  -->
  <!--.once 只监听一次  -->
  <body>
  <div id="app">aaaaa
  	<div @click="divClick"> aaa
  		<button @click.stop="btnClick()">按钮</button>
  	</div>
  	<br />
  	<form action="baidu">
  		<input type="submit" value="提交" @click.prevent="submitClick">
  	</form>
  	
  	<input type="text" @keyup.enter="keyup" >
  </div>
  	<script type="text/javascript" src="js/vue.js"></script>
  	<script type="text/javascript">
  		let app = new Vue({
  			el:'#app',
  			methods:{
  				btnClick(){
  					console.log(this.message);
  				},
  				divClick(){
  					console.log("divclick");
  				},
  				submitClick(){
  					console.log("submitClick");
  				},
  				keyup(){
  					console.log("keyup");
  				}
  			},
  			data:{
  				event:'haha',
  				message:'你好啊'
  			}
  		})
  	    //有问题的
  		/* var btns = document.getElementsByTagName("button");
  		for(var i=0;i<btns.length;i++){
  			btns[i].addEventListener('click',function(){
  				console.log('第'+i+'个按钮被点击了')
  			})
  		} */
  		//没有问题的
  		/* var btns = document.getElementsByTagName("button");
  		for(var i=0;i<btns.length;i++){
  			(function(i){
	  			btns[i].addEventListener('click',function(){
	  				console.log('第'+i+'个按钮被点击了')
	  			})
  			})(i)
  		} */
  		//没有问题的
  		/* var btns = document.getElementsByTagName("button");
  		for(let i=0;i<btns.length;i++){
  			btns[i].addEventListener('click',function(){
  				console.log('第'+i+'个按钮被点击了')
  			})
  		}  */
  	</script>
  </body>
</html>
