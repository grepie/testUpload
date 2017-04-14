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
  		function checkUno(){
  			$("#uspan").html("");
  			$("#txt").attr({"disabled":false});
  			var uno= document.form1.user.uno.value;
	  			if(uno.length==0){
	  				$("#uspan").append("<font color='red'>请输入保单号</font>");
	  				return;
	  			}
  			$.get("user_selectUserByUno","uno="+uno,function(data){
  				if(data.length==0){
  					$("#uspan").append("<font color='red'>保单已存在</font>");
  					$("#txt").attr({"disabled":true});
  				}else{
  					$("#uspan").append("<font color='green'>保单号可用</font>");
  				}
  			
  			});
  		}
  		$(function(){
  			$("#cancel").click(function(){
  				location.href="user_toSearch";
  			
  			});
  		});
  		
  	</script>
  <body>
   <div align="center">
    <form action="user_addNew" method="post"  id="form1">
    	<br/>保单号:<input name="user.uno" onblur="checkUno()"/><span id="uspan"></span>
    	<br/>投保人姓名:<input name="user.name"/>
    	<br/>投保人性别: &emsp;&emsp;&emsp;&emsp; 男<input type="radio" name="user.sex" value="男"> 女<input type="radio" name="user.sex" value="女">
    	<br/>投保人年龄:<input name="user.age">
    	<br/>投保人生日:<input name="user.birthday">
    	<br/><input type="submit" value="保存" id="txt"><input type="button" id="cancel" value="关闭">
    </form>
   </div> 
  </body>
</html>
