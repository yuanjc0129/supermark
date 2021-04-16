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
 
  <body>
  <div id="app">
  
  		<h2 v-if="isShow">{{message}}</h2>
  		<h1 v-else>isShow为false的时候显示我</h1>
  		
  		<h1 v-if="score>=90">优秀</h1>
  		<h1 v-else-if="score>=80">良好</h1>
  		<h1 v-else-if="score>=60">及格</h1>
  		<h1 v-else>不及格</h1>
  		<h1>{{result}}</h1>
  		
  </div>
  	<script type="text/javascript" src="js/vue.js"></script>
  	<script type="text/javascript">
  		let app = new Vue({
  			el:'#app',
  			data:{
  				message:'你好啊',
  				isShow:false,
  				score:50
  			},
  			methods:{
  				 
  			},
  			computed:{
  				result : function(){
  					let s = '';
  					if(this.score >= 90){
  						s = '优秀';
  					}else if(this.score >= 80){
  						s = '良好';
  					}else if(this.score >= 60){
  						s = '及格';
  					}else{
  						s = '不及格';
  					}
  					return s;
  				}
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
