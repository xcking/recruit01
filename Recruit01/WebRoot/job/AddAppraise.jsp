<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddAppraise.jsp' starting page</title>
    
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
  <form action="appraise_doAddAppraise.action" method="post">
    <table border="1" align="center">
    	<thead>
    		<tr>
    			<td>${job.jobName }</td>
    			<td>${job.company.companyName }</td>
    			<td>${job.jobDescribe }</td>
    		</tr>
    	</thead>
    	<tr>
    		<td>请输入内容</td>
    		<input type="hidden" name="jobId" value="${job.jobId }"/>
    		<td colspan="2"><textarea rows="10" cols="40"  name="content"></textarea></td>
    		<td><input type="submit" value="提交"/></td>
    	</tr>
    </table>
   </form>
  </body>
</html> --%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>软法运输车辆招募-首页</title>
<link rel="icon" href="images/kfxt.ico" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	<iframe id="headiFrame" src="driver/top.jsp" frameborder="no" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" class="divtop1"></iframe>
	<div style="width: 100%; padding: 0px; margin-top:2px;">
		<div class="ui-box" style="float: left;">
			<div id="bigClasss">
				<ul id="knav">
					<li class="itmes1">
						<a href="driver_UpdateDriverInfo.action">个人信息</a>
					</li>
					<li class="itmes1">
						<a href="job_getAllJob.action">招募信息</a>
					</li>
					<li class="itmes2">
						<a href="applicant_findAppByDriver.action">应聘状态</a>
					</li>
					<li class="itmes1">
						<a href="appeal_findByDriver.action">我的申诉</a>
					</li>
				</ul>
			</div>
		</div>
		<div style="float: left; background: #ffffff; margin: 0; padding: 0;"  id="detailDiv">
			<div class="divHi25"></div>
<div class="content-tab" style="width:100px;"><div style="height:50px; width:100px; background-color:#fff; z-index:3;">评价信息</div></div>
<div class="divtable">
<div class="divHi25"></div>
<form action="appraise_doAddAppraise.action" method="post" id="masterxForm" name="masterxForm">
	<table width="708" height="250" border="0" >
		  <tr>
			<td height="44" class="divtz">职位名称：</td>
			<td>
				<input type="text" class="input " value="${job.jobName }" />
				<input type="hidden" name="jobId" value="${job.jobId }"/>
			</td>
		  </tr>
		  
		   <tr>
			<td height="86" class="divtz">评价内容：</td>
			<td><textarea name="content" cols="" rows=""  class="input normal"></textarea>
			</td>
		  </tr>
		  <tr>
			<td class="divtz">&nbsp;</td>
			<td><input type="submit" class="btn" value="确认评价" />	</td>
		  </tr>
  </table>
 </form>
		<div class="divHi25"></div>
</div>
</div>
</div>
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</body>
</html>