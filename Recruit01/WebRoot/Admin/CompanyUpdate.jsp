<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CompanyUpdate.jsp' starting page</title>
    
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
    	<form action="company_updateCompanyLevel.action">
    		<table border="1">
    			<input type="hidden" name="companyId" value="${company.companyId }"/>
    			<tr>
    				<td>公司名：</td>
    				<td>${company.companyName }</td>
    			</tr>
    			<tr>
    				<td>公司地址：</td>
    				<td>${company.companyAddress }</td>
    			</tr>
    			<tr>
    				<td>公司规模</td>
    				<td>${company.companyScale }</td>
    			</tr>
    			<tr>
    				<td>公司领域：</td>
    				<td>${company.companyField }</td>
    			</tr>
    			<tr>
    				<td>公司积分：</td>
    				<td>${company.companyPoint }</td>
    			</tr>
    			<tr>
    				<td>公司主页：</td>
    				<td>${company.companyHomepage }</td>
    			</tr>
    			<tr>
    				<td>公司等级：</td>
    				<td><select name="companyLevel">
 								<option value="1">1</option>   				
 								<option value="2">2</option>   				
 								<option value="3">3</option>   				
 								<option value="4">4</option>
 								<option disabled="disabled" selected="selected">${company.companyLevel }</option>   				
    						</select>
    				</td>
    			</tr>
    			<tr>
    				<td></td>
    				<td><input type="submit" value="提交"/></td>
    			</tr>
    		</table>
    	</form>
  </body>
</html>
