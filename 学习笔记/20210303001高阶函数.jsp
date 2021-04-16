<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '20210303001高阶函数.jsp' starting page</title>
    
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
    <script type="text/javascript">
    	const nums = [1,222,3,6,88,90,120,444,555];
    	/* let newnums = nums.filter(function(n){
    		console.log(n);
    		return n < 100;
    	})
    	console.log(newnums); */
    	
    	/* let newnums = nums.map(function(n){
    		return n * 2;
    	})
    	console.log(newnums); */
    	//所有内容进行汇总
    	let newnums = nums.reduce(function(preValue,n){
    		return preValue + n;
    	},0)
    	
    	
    	let newnum = nums.filter(function(n){
    		return n < 100;
    	}).map(function(n){
    		return n * 2;
    	}).reduce(function(preValue,n){
    		return preValue + n;
    	},0)
    	console.log(newnum);
    	
    	let total = nums.filter(n => n<100).map(n => n*2).reduce((pre,n) => pre + n);
    	console.log(total);
    </script>
  </body>
</html>
