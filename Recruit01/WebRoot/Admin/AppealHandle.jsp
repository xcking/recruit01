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
    
    <title>My JSP 'AppealHandle.jsp' starting page</title>
    
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
    	<table border="1">
    		<tr>
    			<td>职位名称：</td>
    			<td>${appeal.job.jobName }</td>
    		</tr>
    		<tr>
    			<td>薪水：</td>
    			<td>${appeal.job.jobSalary }</td>
    		</tr>
    		<tr>
    			<td>公司名称：</td>
    			<td>${appeal.job.company.companyName }</td>
    		</tr>
    		<tr>
    			<td>公司信用分：</td>
    			<td>${appeal.job.company.companyPoint }</td>
    		</tr>
    		<tr>
    			<td>公司信用等级：</td>
    			<td>${appeal.job.company.companyLevel }</td>
    		</tr>
    	</table>
    	<form action="appeal_doHandle.action" method="post">
			<table>
				<input type="hidden" name="jobId" value="${appeal.job.jobId }"/>
				<input type="hidden"  name="id" value="${appeal.id }"/>
				<tr>
	    			<td>扣除积分：</td>
	    			<td><select name="point">
	    							<option value="10">10</option>
	    							<option value="50">50</option>
	    							<option value="100">100</option>
	    							<option value="200">200</option>
	    							<option value="250">250</option>
	    					</select>
	    			</td>
    			</tr>
    			<tr>
    				<td colspan="2"><input type="submit" value="确定"/></td>
    			</tr>
			</table>
    	</form>
  </body>
</html>
