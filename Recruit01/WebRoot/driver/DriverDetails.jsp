<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Details.jsp' starting page</title>
    
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
    <form action="driverDetails_doDetails.action" method="post">
    	<table>
    		<tr>
    			<td>驾龄：</td>												
    			<td><input type="text" name="dirverage"/></td>
    		</tr>
    		<tr>
    			<td>货车类型：</td>
    			<td><input type="text" name="car"/></td>
    		</tr>
    		<tr>
    			<td>最近有无重大事故：</td>
    			<td><input type="text" name="accident"/></td>
    		</tr>
    		<tr>
    			<td>联系电话：</td>
    			<td><input type="text" name="tel"></td>
    		</tr>
    		<tr>
    			<td>联系地址：</td>
    			<td><input type="text" name="address"/></td>
    		</tr>
    		<tr>
    			<td>备注：</td>
    			<td><input type="text" name="remarks"/></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><%-- <input type="hidden" name="driver"  value="${driver.driverId }"/> --%></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><input type="submit" value="提交"/></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
