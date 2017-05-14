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
    
    <title>My JSP 'ApplicantDetails.jsp' starting page</title>
    
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
  		<thead>
  			<tr>
  				<td>
  					应聘职位
  				</td>
  				<td>
  					投递时间
  				</td>
  				<td>
  					应聘人姓名
  				</td>
  				<td>
  					应聘人年龄
  				</td>
  				<td>查看应聘人详情信息</td>
  				<td>投递状态</td>
  			</tr>
  		</thead>
    	<c:forEach items="${aList }" var="app">
    	  <c:if test="${app.hire !='已被招聘' }">
    		<tr>
    			<td>${app.job.jobName }</td>
    			<td>${app.acceptTime }</td>
    			<td>${app.driver.driverName }</td>
    			<td>${app.driver.driverAge }</td>
    			<td><a href="driverDetails_findDetailsByDriver.action?driverId=${app.driver.driverId }">查看详情</a></td>
    			<td><a href="applicant_UpdateHire.action?appId=${app.appId }">确认招聘</a>
    				<form action="applicant_UpdateHire.action" method="post">
    					<select name="hire">
    						<option value="确认招聘">确认招聘</option>
    						<option value="移交给用人部门等待稍后处理">移交给用人部门等待稍后处理</option>
    						<option value="不合格">不合格</option>
    					</select>
    					<input type="hidden" name="appId" value="${app.appId }"/>
    					<input type="submit" value="提交"/>
    				</form>
    			</td>
    		</tr>
    	</c:if>
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
	<iframe id="headiFrame" src="job/top.jsp" frameborder="no" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" class="divtop1"></iframe>
	<div style="width: 100%; padding: 0px; margin-top:2px;">
		<div class="ui-box" style="float: left;">
			<div id="bigClasss">
				<ul id="knav">
					<li class="itmes1">
						<a href="job_toAddJob.action">发布职位</a>
					</li>
					<li class="itmes1">
						<a href="job_findJobByCompany.action">已发布职位</a>
					</li>
					<li class="itmes2">
						<a href="applicant_findApplicantByCompany.action">应聘信息</a>
					</li>
				</ul>
			</div>
		</div>
		<div style="float: left; background: #ffffff; margin: 0; padding: 0;"  id="detailDiv">
			
<div style="width:800px; height:50px;">
		<table width="637" height="30" border="0" >
		<tr>
			<td width="148" class="divtz"><span class="lanse" style="font-size:16px;"><strong>应聘职位：</strong></span></td>
			
		  <td width="269"><input type="text" id="keywords" name="keywords"  style="width:250px;" value="" class="input normal" />&nbsp;&nbsp;&nbsp;</td>
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
			<td width="80px" colspan="1" rowspan="1">应聘人姓名</td>
			<td width="80px" colspan="1" rowspan="1">应聘人年龄</td>
			<td width="80px" colspan="1" rowspan="1">应聘人详情</td>
			<td width="280px" colspan="1" rowspan="1">投递状态</td>
		</tr>
		<c:forEach items="${aList }" var="applicant">
		<tr class="trClass" style="height:45px;">
			<td>${applicant.job.jobName }</td>
			<td>${applicant.acceptTime }</td>
			<td>${applicant.driver.driverName }</td>
			<td>${applicant.driver.driverAge }</td>
			<td name="detail">
				<a href="driverDetails_findDetailsByDriver.action?driverId=${applicant.driver.driverId }" class="a1" >详情</a>&nbsp;
			</td>
			<td name="status">
				<a href="applicant_UpdateHire.action?appId=${applicant.appId }&hire=已被招聘" class="a1" >确认招聘</a>&nbsp;
				<a href="applicant_UpdateHire.action?appId=${applicant.appId }&hire=条件不匹配"class="a1_yellow" >条件不匹配</a>&nbsp;
				<a href="applicant_UpdateHire.action?appId=${applicant.appId }&hire=移交给用人部门等待稍后联系" class="a1_violet" >移交给用人部门等待稍后联系</a>&nbsp;
			</td>
		</tr>
		</c:forEach>
		<tr class="trClass" style="height:45px;">
			<td>食品运输</td>
			<td>2017-05-04 15:04:33</td>
			<td>jim</td>
			<td>40</td>
			<td name="detail">
				<a href="gs_ypxx_xq.html" class="a1" >详情</a>&nbsp;
			</td>
			<td name="status">
				<a href="#" class="a1" >招聘</a>&nbsp;
				<a href="#" class="a1_yellow" >不招聘</a>&nbsp;
				<a href="#" class="a1_violet" >移交</a>&nbsp;
			</td>
		</tr>
		<tr class="trClass" style="height:45px;">
			<td>食品运输</td>
			<td>2017-05-04 15:04:33</td>
			<td>jim</td>
			<td>40</td>
			<td name="detail">
				<a href="gs_ypxx_xq.html" class="a1" >详情</a>&nbsp;
			</td>
			<td name="status">
				<a href="#" class="a1" >招聘</a>&nbsp;
				<a href="#" class="a1_yellow" >不招聘</a>&nbsp;
				<a href="#" class="a1_violet" >移交</a>&nbsp;
			</td>
		</tr>
	</tbody>
</table>
</div>
<div class="fenye" align="center">
	<label>共<span class="recordCount">10</span>条记录&nbsp;&nbsp;当前第<span class="currentIndex">1</span>页&nbsp;&nbsp;共<span class="totalPages">1</span>页</label>&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="page_start"href="#">首页</a>
		<a class="page_back" href="#">上一页 </a>
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