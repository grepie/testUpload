<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'detail.jsp' starting page</title>
    
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
  	<table border="1" align="center">
  		<tr>
  			<td>保单号</td>
   			<td>投保人姓名</td>
   			<td>性别</td>
   			<td>年龄</td>
   			<td>生日</td>
  		</tr>
  		
  		<s:iterator value="user" var="u">
  			<tr>
  				<td>${u.uno}</td>
  				<td>${u.name}</td>
  				<td>${u.sex}</td>
  				<td>${u.age}</td>
  				<td>${u.birthday}</td>
  			</tr>
  		</s:iterator>
  	</table>
  
    
  </body>
</html>
