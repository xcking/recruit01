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
    
    <title>My JSP 'AdminHome.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function searchCompany() {
			var name = document.getElementById("searchForm");
			if(name != null){
				document.getElementById("searchForm").submit;
			}
		}
	</script>
  </head>
  
  <body>
  		<form id="searchForm" action="company_searchCompanyName.action">
  			<input type="text" name="companyName"/><button onclick="searchCompany();">搜索公司</button>
  		</form>
    	<table>
    		<thead>
    			<tr>
    				<td>投诉用户</td>
    				<td>投诉职位</td>
    				<td>处理状态</td>
    				<td>投诉内容</td>
    				<td colspan="2">查看详情</td>
    			</tr>
    		</thead>
    		<c:forEach items="${aList }" var="appeal">
    			<%-- <c:if test="${appeal.state!='处理完成' }"> --%>
    				<tr>
    				<td>${appeal.driver.driverName }</td>
    				<td>${appeal.job.jobName }</td>
    				<td>${appeal.state }</td>
    				<td>${appeal.content }</td>
    				<td><a href="job_JobDetails.acton?jobId=${appeal.job.jobId }">职位详情</a></td>
    				<td><a href="job_deleteJob.action?jobId=${appeal.job.jobId }">删除该职位</a></td>
    				<td><a href="appeal_toHandle.action?id=${appeal.id }">处理</a></td>
    			</tr>
    			<%-- </c:if> --%>
    		</c:forEach>
    	</table>
  </body>
</html>
