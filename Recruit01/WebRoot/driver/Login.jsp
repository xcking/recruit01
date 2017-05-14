<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    
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
    <form action="driver_doLogin.action"  method="get">
    	<table align="left">
    		<tr>
    			<td>用户名：</td>
    			<td><input type="text"  name="driverAccount"/></td>
    		</tr>
    		<tr>
    			<td>密码：</td>
    			<td><input type="password" name="driverPassword"/></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><input type="submit" value="登陆"/></td>
    		</tr>
    		<tr>
    			<td>
    				<a href="driver_toRegister.action">注册</a>
    			</td>
    			<td>
    				<a>忘记密码</a>
    			</td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
