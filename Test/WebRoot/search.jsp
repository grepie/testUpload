<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<base href="<%=basePath%>">
  <head>
  	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
    
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  	<script type="text/javascript" src="js/jquery.1.9.1.min.js"></script>
  	<script type="text/javascript">
  		$(function(){
  			$("#addButton").click(function(){
  				location.href="user_toNew";
  			});
  			
  		});
  		$(function(){
  			$("#resetButton").click(function(){
				$("input").val(""); 			
  			});
  		});
  		$(function(){
  			$("#searchAllButton").click(function(){
				var name=$("#name").val(); 			
				var t1=$("#startTime").val(); 			
				var t2=$("#endTime").val(); 			
  			
  				$.ajax({
  					url:"user_findAll",
  					type:"post",
  					data:{"name":name},
  					dataType:'json',
  					success:function(data){
  						var ulist="";
  						for(i=0;i<data.length;i++){
  						 	ulist+="<tr><td><a href='user_toDetail?uno="+data[i].uno+"'>"+data[i].uno+"</a></td><td>";
  							ulist+=data[i].name+"</td><td>"+data[i].sex+"</td><td>"+data[i].age+"</td><td>";
  							ulist+=data[i].birthday+"</td><td>"+"<a href='#'>修改</a>"+"</td></tr>";
  						}
  						$('#content').html(ulist);
  					}
  				
  				});
  			});
  		});
  	</script>
  <body>
    <div align="center">
    	投保人姓名：<input  id="name"  />&emsp;
    	生日时间段：<input  id="startTime">到 <input id="endTime">
    	
    	<br/>
    	<br/>
    	
    	<button  id="addButton" >新增</button>&emsp;
    	<button  id="resetButton" >重置</button>&emsp;
    	<button  id="searchAllButton" >查询</button>
    	
    		<table border="1" id="">
    			<thead>
	    			<tr>
		    			<td>保单号</td>
		    			<td>投保人姓名</td>
		    			<td>性别</td>
		    			<td>年龄</td>
		    			<td>生日</td>
		    			<td>操作</td>
	    			</tr>
		    	</thead>
		    	<tbody id="content">
		    		
		    	</tbody>
    		</table>
    </div>
  </body>
</html>
