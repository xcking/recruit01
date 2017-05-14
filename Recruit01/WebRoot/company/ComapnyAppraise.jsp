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
    
    <title>My JSP 'ComapnyAppraise.jsp' starting page</title>
    
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
    <table>
    	<thead><tr><td>用户名</td><td>职位名称</td><td>薪水</td></tr></thead>
    	<c:forEach items="${aList }" var="applicant">
    		<c:if test="${applicant.hire =='已被招聘' }">
    			<tr>
    				<td>${applicant.driver.driverName }</td>
    				<td>${applicant.job.jobName }</td>
    				<td>${applicant.job.jobSalary }</td>
    				<td><a href="companyAppraise_">添加评论</a></td>
    			</tr>
    		</c:if>
    	</c:forEach>
    </table>
  </body>
</html>
