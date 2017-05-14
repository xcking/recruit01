<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jobDetails.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=vTDHvCaBPr69ctxs1W0ym5Ib6Q83BYSn"></script>
	<!-- <style type="text/css">
		#allmap{
			float: left;
			width: 20%,
		}
	</style> -->
	<style type="text/css">
		body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
	</style>
  </head>
  
  <body>
    <table border="1">
    		<tr>
    			<td>${job.jobName }</td>
    			<td>${job.jobRecruitmentNumber }</td>
    			<td>${job.jobDescribe }</td>
    			<td>${job.jobEducationRequire }</td>
    			<td>${job.jobExperience }</td>
    			<td >${job.jobFromPlaces }</td>
    			<td >${job.jobDestination }</td>
    		</tr>
    		<tr>
    			<td>${job.company.companyName }</td>
    			<td>${job.company.companyScale }</td>
    			<td>${job.company.companyAddress }</td>
    			<td>${job.company.companyField }</td>
    			<td>${job.company.companyHomepage }</td>
    			<td>${job.company.companyPoint }</td>
    			
    		</tr>
    		<c:forEach items="${aList }" var="appraise">
    			<tr>
    				<td>${appraise.driver.driverAccount }</td>
    				<td>${appraise.content }</td>
    			</tr>
    		</c:forEach>
    		<tr>
    			<td><a href="applicant_doApplicant.action?jobId=${job.jobId }">投递</a></td>
    			<td colspan="3"><font id="status"></font></td>
    		</tr>
    		<input type="hidden" id="from" value="${job.jobFromPlaces }" readonly="readonly"/>
    		<input type="hidden" id="dest" value="${job.jobDestination }" readonly="readonly"/>
    </table>
    <div id="allmap"></div>
  </body>
</html> --%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>软法运输车辆招募-首页</title>
<link rel="icon" href="images/kfxt.ico" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=vTDHvCaBPr69ctxs1W0ym5Ib6Q83BYSn"></script>
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
					<li class="itmes2">
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
		<div style="float: left; background: #ffffff; margin: 0; padding: 0;"  id="detailDiv">
			<div class="divHi25"></div>
<div style="width:100%; height:30px;">
<div style="width:200px; float:left; height:30px; line-height:30px;">&nbsp;&nbsp;&nbsp;${job.company.companyName }</div>
<div align="right" style="float:right;"><a href="applicant_doApplicant.action?jobId=${job.jobId }" class="btn yellow" style="color:#fff;" >立即申请</a></div>
</div>

<div class="divHi25"></div>
	<div class="content-tab" style="width:100px;">基本信息</div>
<div class="divtable">
<div class="divHi25"></div>
<form action="" method="post" id="masterxForm" name="masterxForm">
	<table width="700" height="201" border="0" >
  <tr>
    <td width="26%" height="20" class="zuobian">职位名称：</td>
    <td width="25%">${job.jobName }</td>
    <td width="18%" class="zuobian">薪水：</td>
    <td width="31%">${job.jobSalary }</td>
  </tr>
  <tr>
    <td height="20" class="zuobian">招聘人数：</td>
    <td>${job.jobRecruitmentNumber }人</td>
    <td class="zuobian">学历要求：</td>
    <td>${job.jobEducationRequire }</td>
  </tr>
  <tr>
    <td height="20" class="zuobian">出发地：</td>
    <td>${job.jobFromPlaces }</td>
    <td class="zuobian">目的地：</td>
    <td>${job.jobDestination }</td>
  </tr>
  <tr>
    <td height="20" class="zuobian">启程时间：</td>
    <td>${job.jobStartdate }</td>
    <td class="zuobian">到达时间：</td>
    <td>${job.jobMaxdate }</td>
  </tr>
  <tr>
    <td height="20" class="zuobian">经验要求：</td>
    <td>${job.jobExperience }</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20" class="zuobian">职位详细描述：</td>
    <td colspan="3">${job.jobDescribe }</td>
    </tr>
 
</table>

</form>
</div>
<div class="divHi25"></div>
<div class="content-tab" style="width:100px;"><div style="height:50px; width:100px; background-color:#fff; z-index:3;">公司信息</div></div>
<div class="divtable">
<div class="divHi25"></div>
<form action="" method="post" id="masterxForm" name="masterxForm">
	<table width="700" border="0" >
  <tr>
    <td width="26%" height="25" class="zuobian">公司名：</td>
    <td width="25%">${job.company.companyName }</td>
    <td width="18%" class="zuobian">公司等级：</td>
    <td width="31%">${job.company.companyLevel }</td>
  </tr>
  <tr>
    <td height="25" class="zuobian">公司规模：</td>
    <td>${job.company.companyScale }</td>
    <td class="zuobian">公司领域：</td>
    <td>${job.company.companyField }</td>
  </tr>
  <tr>
    <td height="25" class="zuobian">公司主页：</td>
    <td>${job.company.companyHomepage }</td>
    <td class="zuobian">公司积分：</td>
    <td>${job.company.companyPoint }分</td>
  </tr>
  <tr>
    <td height="25" class="zuobian">公司地址：</td>
    <td colspan="3">${job.company.companyAddress }</td>
    </tr>
  <tr>
    <td height="25" colspan="4" align="center" ><div id="allmap"></div></td>
    </tr>
</table>

</form>
</div>

<div class="divHi25"></div>
</div>

</div>
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</body>
</html>
<script type="text/javascript">
	var from =document.getElementById("from").value;
	var dest  = document.getElementById("dest").value;
	//alert(from);
	//alert(dest);
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);
	var output = "驾车需要";
	var searchComplete = function (results){
		if (transit.getStatus() != BMAP_STATUS_SUCCESS){
			return ;
		}
		var plan = results.getPlan(0);
		output += plan.getDuration(true) + "\n";                //获取时间
		output += "总路程为：" ;
		output += plan.getDistance(true) + "\n";             //获取距离
	}
	var transit = new BMap.DrivingRoute(map, {renderOptions: {map: map},
		onSearchComplete: searchComplete,
		onPolylinesSet: function(){        
			setTimeout(function(){document.getElementById("status").innerHTML=output},"100");
	}});
	transit.search(from, dest);
</script>
