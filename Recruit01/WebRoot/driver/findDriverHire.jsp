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
    
    <title>My JSP 'findDriverHire.jsp' starting page</title>
    
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
   			<thead><tr><td>应聘职位</td><td>所属公司</td><td>投递时间</td><td>应聘状态</td></tr></thead>
   			<c:forEach items="${aList }" var="app">
   				<tr>
   					<td>${app.job.jobName }</td>
   					<td>${app.acceptTime }</td>
   					<td>${app.company.companyName }</td>
   					<td>${app.hire }</td>
   					<td><a href="appraise_toAddAppraise?jobId=${app.job.jobId }">评价</a></td>
   					<td><a href="appeal_toAddAppeal.action?jobId=${app.job.jobId }">申诉</a></td>
   				</tr>
   			</c:forEach>
   		</table>
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

<div style="width:800px; height:50px;">
		<table width="637" height="30" border="0" >
		<tr>
			<td width="148" class="divtz"><span class="lanse" style="font-size:16px;"><strong>应聘职位：</strong></span></td>
			
		  <td width="269">&nbsp;&nbsp;&nbsp;<input type="text" id="zhiwei" name="zhiwei"  style="width:250px;" value="" class="input normal" /></td>
		  <td width="206" class="divtz"><div align="left">
		    <input type="button" class="btn" value="查询" />
	      </div></td>
		 </tr>
  </table>
</div>

<div class="divHi25" style="border-top:1px solid #CCCCCC;"></div>
<div id="tit">
	<table id="datas" class="tab_tit" cellspacing="0" cellpadding="0" style="overflow: scroll;">
	<tbody>
		<tr class="trW" style="height:41px;">
			<td width="130px;" colspan="1" rowspan="1">应聘职位</td>
			<td width="165px" colspan="1" rowspan="1">投递时间</td>
			<td width="80px" colspan="1" rowspan="1">应聘状态</td>
			<td width="100px" colspan="1" rowspan="1">操作</td>
		</tr>
		<c:forEach items="${aList }" var="app">
			<tr class="trClass" style="height:45px;">
			<td>${app.job.jobName }
		   <!--  <input type="text" id="zhiwei" name="zhiwei"  style="width:250px;" value="" class="input normal" /> --></td>
			<td>${app.acceptTime }</td>
			<td>${app.hire }</td>
			<td>
				<a href="appraise_toAddAppraise.action?jobId=${app.job.jobId }" class="a1" >评价</a>&nbsp;	&nbsp;	
				<a href="appeal_toAddAppeal.action?jobId=${app.job.jobId }" class="a1_yellow" >申诉</a>;			
			</td>
		</tr>
		</c:forEach>
		<tr class="trClass" style="height:45px;">
			<td>食品运输
		    </td>
			<td>2017-05-06 12:12:57</td>
			<td>等待查看</td>
			<td>
				<a href="pt_ypzt_pj.html" class="a1" >评价</a>&nbsp;	&nbsp;	
				<a href="pt_ypzt_ss.html" class="a1_yellow" >申诉</a>;			
			</td>
		</tr>
		<tr class="trClass" style="height:45px;">
			<td>食品运输</td>
			<td>2017-05-06 12:12:57</td>
			<td>等待查看</td>
			<td>
				<a href="pt_ypzt_pj.html" class="a1" >评价</a>&nbsp;	&nbsp;	
				<a href="pt_ypzt_ss.html" class="a1_yellow" >申诉</a>;					</td>
		</tr>
		<tr class="trClass" style="height:45px;">
			<td>食品运输</td>
			<td>2017-05-06 12:12:57</td>
			<td>等待查看</td>
			<td>
				<a href="pt_ypzt_pj.html" class="a1" >评价</a>&nbsp;	&nbsp;	
				<a href="pt_ypzt_ss.html" class="a1_yellow" >申诉</a>;					</td>
		</tr>
	</tbody>
</table>
</div>
<div class="fenye" align="center">
	<label>共<span class="recordCount">10</span>条记录&nbsp;&nbsp;当前第<span class="currentIndex">1</span>页&nbsp;&nbsp;共<span class="totalPages">1</span>页</label>&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="page_start"  href="#">首页</a>
		<a class="page_back"  href="#">上一页 </a>
		<a class="page_next"  href="#">下一页</a>
		<a class="page_end"  href="#">末页</a>
		<input type="hidden" value="10" style="width:25px;" class="pageSize"/>
</div>
</div>
</div>
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</body>
</html>