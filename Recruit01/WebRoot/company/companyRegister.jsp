<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'companyRegister.jsp' starting page</title>
    
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
   	<form action="company_companyRegister" method="post">
   		<table align="center">
   			<tr>
   				<td>企业账号：</td>
   				<td><input type="text" name="companyAccount"/></td>
   			</tr>
   			<tr>
   				<td>企业账号密码：</td>
   				<td><input type="text" name="companyPassword"/></td>
   			</tr>
   			<tr>
   				<td>企业名称：</td>
   				<td><input type="text" name="companyName"/></td>
   			</tr>
   			<tr>
   				<td>企业地址：</td>
   				<td><input type="text" name="companyAddress"/></td>
   			</tr>
   			<tr>
   				<td>企业规模：</td>
   				<td><input type="text" name="companyScale"/></td>
   			</tr>
   			<tr>
   				<td>企业领域：</td>
   				<td><input type="text" name="companyField"/></td>
   			</tr>
   			<tr>
   				<td></td>
   				<td><input type="submit"  value="提交"/></td>
   			</tr>
   		</table>
   	</form>
  </body>
</html>
