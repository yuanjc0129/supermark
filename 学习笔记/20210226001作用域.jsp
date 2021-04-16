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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <div id="app">
  	<button>按钮1</button>
  	<button>按钮2</button>
  	<button>按钮3</button>
  	<button>按钮4</button>
  	<button>按钮5</button>
  	<button @click="btn6Click(123,event,$event)">按钮6</button>
  </div>
  	<script type="text/javascript" src="js/vue.js"></script>
  	<script type="text/javascript">
  		let app = new Vue({
  			el:'#app',
  			methods:{
  				btn6Click(abc,event,e){
  					console.log(abc);
  					console.log(event);
  					console.log(e);
  				}
  			},
  			data:{
  				event:'haha'
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
