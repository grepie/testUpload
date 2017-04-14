<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
    
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  	<script type="text/javascript" src="js/jquery.1.9.1.min.js"></script>
  </head>
  <body>
  	<div align="center">
	  	<s:if test="userList != null && userList.size() > 0">
	  		<table>
	  			<tr>
	  		<s:iterator id="k" value="{'a0000','b','c','d','e','f'}" status="stu">
			  	<td><a href="javascript:;" onclick="showandhidden('${stu.index}_${stu.index }');">查询 <s:property/></a>
	  			</td>
	  				<s:if test="#stu.count % 3== 0 && !#stu.last">
	  					</tr><tr>
	  				</s:if>
	  		</s:iterator>
	  			</tr>
	  		</table>
	  		<s:iterator id="k" value="{'aa','bb','cc','aa1','b1b','c1c'}" status="stu">
	  			
	  	<s:if test="userList.size() <=1">
	  		<div style="display: block" align="center" id="div_${stu.index}_${stu.index }">
	  	</s:if>
	  	<s:else>
	  		<div style="display: none" align="center" id="div_${stu.index}_${stu.index }">
	  	</s:else>
		  		<div id="kno_${stu.index}_${stu.index }" >显示${stu.index+100 }</div>
	  	</div>
	  		</s:iterator>
	  	</s:if>
  	</div>
    
  </body>
	<script type="text/javascript">
		function showandhidden(num){
			var div1 = document.getElementById("div_"+num);
			if(div1.style.display=='block') div1.style.display='none';
  			else div1.style.display='block';
			return;
		}
	</script>
</html>
