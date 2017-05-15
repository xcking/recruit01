<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AdminJobDetails.jsp' starting page</title>
    
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
    This is my JSP page. <br>
  </body>
</html> --%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>润发运输车辆招募-首页</title>
<link rel="icon" href="images/kfxt.ico" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	<iframe id="headiFrame" src="Admin/top.jsp" frameborder="no" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" class="divtop1"></iframe>
	<div style="width: 100%; padding: 0px; margin-top:2px;">
		<div class="ui-box" style="float: left;">
			<div id="bigClasss">
				<ul id="knav">
					<li class="itmes2">
						<a href="gly_tsgl.html">投诉管理</a>
					</li>
					<li class="itmes1">
						<a href="gs_yfbzw.html">公司管理</a>
					</li>
				</ul>
			</div>
		</div>
		<div style="float: left; background: #ffffff; margin: 0; padding: 0;"  id="detailDiv">
		<div class="divHi25"></div>
<div class="content-tab" style="width:100px;"><div style="height:50px; width:100px; background-color:#fff; z-index:3;">职位详情</div></div>
<div class="divtable">
<div class="divHi25"></div>
<form action="" method="post" id="masterxForm" name="masterxForm">
	<table width="508" height="250" border="0" >
		  <tr>
			<td height="44" class="divtz">职&nbsp;位&nbsp;名&nbsp;称：</td>
			<td>
				&nbsp;&nbsp;${job.jobName }
			</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">需&nbsp;求&nbsp;人&nbsp;数：</td>
			<td>
				&nbsp;&nbsp;${job.jobRecruitmentNumber }人
			</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">学&nbsp;历&nbsp;要&nbsp;求：</td>
			<td>
				&nbsp;&nbsp;${job.jobEducationRequire }
			</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">工&nbsp;作&nbsp;经&nbsp;验：</td>
			<td>&nbsp;&nbsp;${jbo.jobExperience }</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">出&nbsp;发&nbsp;地&nbsp;点：</td>
			<td>&nbsp;&nbsp;${job.jobFromPlaces }</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">目&nbsp;的&nbsp;地&nbsp;点：</td>
			<td>&nbsp;&nbsp;${job.jobDestination }</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">出&nbsp;发&nbsp;时&nbsp;间：</td>
			<td>&nbsp;&nbsp;${job.jobStartdate }</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">到&nbsp;达&nbsp;时&nbsp;间：</td>
			<td>&nbsp;&nbsp;${job.jobMaxdate }</td>
		  </tr>
		   <tr>
			<td height="44" class="divtz">报&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;酬：</td>
			<td>&nbsp;&nbsp;${job.jobSalary }</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">具&nbsp;体&nbsp;描&nbsp;述：</td>
			<td>&nbsp;&nbsp;${job.jobDescribe }</td>
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
