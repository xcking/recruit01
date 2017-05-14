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
    
    <title>My JSP 'homePage.jsp' starting page</title>
    
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
    <form action="driverJob_findJobByDestination.action">
    	根据目的地查询<input type="text" name="jobDestination"/>
    	<input type="submit" value="搜索"/>
    </form>
    <a href="applicant_findAppByDriver.action">我的职位应聘状态</a>||<a href="appeal_findByDriver.action">我的申诉</a>
    <table border="1">
    	<c:forEach items="${jList }" var="job">
    		<tr>
    			<td>${job.jobName }</td>
    			<td>${job.jobDescribe }</td>
    			<td>${job.jobFromPlaces }</td>
    			<td>${job.jobDestination }</td>
    			<td>${job.jobStartdate }</td>
    			<td>${job.jobMaxdate }</td>
    			<td><a href="job_JobDetails.action?jobId=${job.jobId }">详情</a></td>
    		</tr>
    	</c:forEach>
    </table>
  </body>
</html> --%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
					<li class="itmes2">
						<a href="driver_UpdateDriverInfo.action">个人信息</a>
					</li>
					<li class="itmes1">
						<a href="job_getAllJob.action">招募信息</a>
					</li>
					<li class="itmes1">
						<a href="applicant_findAppByDriver.action">应聘状态</a>
					</li>
					<li class="itmes1">
						<a href="appeal_findByDriver.action">我的申诉</a>
					</li>
				</ul>
			</div>
		</div>
		<div style="float: left; background: #ffffff; margin: 0; padding: 0;" id="detailDiv">
			<div class="divHi25"></div>
			<div class="divHi25"></div>
			<div class="content-tab" style="width:100px;"><div style="height:50px; width:100px; background-color:#fff; z-index:3;">个人信息</div></div>
			<div class="divtable">
			<div class="divHi25"></div>
			<form action="driverDetails_updateDetails.action" method="post" id="masterxForm" name="masterxForm">
				<table width="708" height="250" border="0" >
					  <tr>
			<td height="44" class="divtz">驾龄：</td>
			<td>
				<input type="text" class="input normal" value="${driver.driverdetails.dirverage }"  name="dirverage" />
			</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">所拥有货车类型：</td>
			<td>
				<input type="text" class="input normal" value=" ${driver.driverdetails.car }" name="car"/>
			</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">最近半年内是否有重大事故：</td>
			<td>
				<input type="text" class="input normal" value="${driver.driverdetails.accident }" name="accident"/>
			</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">驾驶员联系电话：</td>
			<td>
				<input type="text" class="input normal" value=" ${driver.driverdetails.tel }" name="tel"/>
			</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">驾驶员联系地址：</td>
			<td>
				<input type="text" class="input normal" value="${driver.driverdetails.address }" name="address"/>
			</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">驾驶执照类型：</td>
			<td>
				<input type="text" class="input normal" value=" ${driver.driverdetails.driverLicence }" name="driverLicence"/>
			</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">驾驶员身份证号码：</td>
			<td>
				<input type="text" class="input normal" value="${driver.driverdetails.driverCard }" name="driverCard"/>
			</td>
		  </tr>
		   <tr>
		   <input type="hidden" name="driverDetailsId" value="${driver.driverdetails.driverDetailsId }"/>
		   <input type="hidden" name="driverPoint" value="${driver.driverdetails.driverPoint }"/>
			<td height="86" class="divtz">备注</td>
			<td><textarea  cols="" rows=""  class="input normal"></textarea>
			</td>
		  </tr>
		  <tr>
			<td class="divtz">&nbsp;</td>
						<td><input type="submit" class="btn" value="确认修改"  />	</td>
					  </tr>
			  </table>
			 </form>
			</div>
		</div>
	</div>

<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</body>
</html>

