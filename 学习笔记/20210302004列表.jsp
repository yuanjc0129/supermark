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
	<style type="text/css">
		th,td{padding: 5px;}
	</style>
  </head>
 
  <body>
  <div id="app">
  	<div v-if="books.length > 0">
  		<table style="border-collapse: collapse;" border="1">
  			<thead>
  				<tr>
		  			<th></th>
			  		<th>书籍名称</th>
			  		<th>出版日期</th>
			  		<th>价格</th>
			  		<th>购买数量</th>
			  		<th>操作</th>
			  	</tr>
  			</thead>
	  		<tbody>
	  			<tr v-for="(item,index) in books">
			  		<td>{{index+1}}</td>
			  		<td>{{item.name}}</td>
			  		<td>{{item.date}}</td>
			  		<td>{{item.price | showPrices}}</td>
			  		<td><button @click="jian(index)" :disabled="item.count <= 0">-</button>{{item.count}}<button @click="jia(index)">+</button></td>
			  		<td><button @click="yichu(index)">移除</button></td>
			  	</tr>
	  		</tbody>
	  	</table>
	  	总价{{total | showPrices}}
  	</div>
  	<div v-else>购物车为空</div>
  </div>
  	<script type="text/javascript" src="js/vue.js"></script>
  	<script type="text/javascript">
  		let app = new Vue({
  			el:'#app',
  			data:{
  				books:[
  					{'name':'《算法导论》','date':'2006-9','price':85.00,count:1,'price2':85.00},
  					{'name':'《UNIX编程艺术》','date':'2006-2','price':59.00,count:1,'price2':59.00},
  					{'name':'《变成珠玑》','date':'2008-10','price':39.00,count:1,'price2':39.00},
  					{'name':'《代码大全》','date':'2006-3','price':128.00,count:1,'price2':128.00}
  				]
  			},
  			methods:{
  				 jian(index){
  				 	this.books[index].count--;
  				 	this.books[index].price = this.books[index].price2 * this.books[index].count;
  				 },
  				 jia(index){
  				 	this.books[index].count++;
  				 	this.books[index].price = this.books[index].price2 * this.books[index].count;
  				 },
  				 yichu(index){
  				 	this.books.splice(index,1);
  				 }
  			},
  			computed:{
  				total : function(){
  					let total = 0;
  					/* for(let i in this.books){
  					   total +=this.books[i].price;
  					} */
  					/* for(let item of this.books){
  					   total +=item.price;
  					}
  					return total; */
  					
  					return this.books.reduce(function(preValue,book){
  						 return  preValue + book.price;
  					},0)
  				},
  				counttotal : function(){
  					let total = 0;
  					for(let i in this.books){
  					   total +=this.books[i].count;
  					}
  					return total;
  				},
  				priceTwo:function(){
  					
  				}
  			},
  			filters:{
  				showPrices : function(price){
  					return '$' + price.toFixed(2);
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
