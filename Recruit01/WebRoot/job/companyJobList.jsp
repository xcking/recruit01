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
    
    <title>My JSP 'companyJobList.jsp' starting page</title>
    
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
    <c:forEach items="${jList }" var="job">
    <div align="center" >
    	<table border="1" cellpadding="5">
			<tr>
				<td>职位名称：</td>
				<td><input type="text" name="jobName" value="${job.jobName }"/></td>
			</tr>
			<tr>
				<td>需求人数：</td>
				<td><input type="text" name="jobRecruitmentNumber" value="${job.jobRecruitmentNumber }"/></td>
			</tr>
			<tr>
				<td>学历要求：</td>
				<td><input type="text" name="jobEducationRequire" value="${job. jobEducationRequire}"/></td>
			</tr>
			<tr>
				<td>工作经验：</td>
				<td><input type="text" name="jobExperience" value="${job. jobExperience}"/></td>
			</tr>
			<tr>
				<td>具体描述：</td>
				<td><input type="text" name="jobDescribe" value="${job. jobDescribe}"/></td>
			</tr>
			<tr><a href="applicant_findApplicant.action?jobId=${job.jobId }">投递详情</a></tr>
    	</table>
    </div>
    </c:forEach>
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
					<li class="itmes2">
						<a href="job_findJobByCompany.action">已发布职位</a>
					</li>
					<li class="itmes1">
						<a href="applicant_findApplicantByCompany.action">应聘信息</a>
					</li>
				</ul>
			</div>
		</div>
		<div style="float: left; background: #ffffff; margin: 0; padding: 0;"  id="detailDiv">
			<div style="width:800px; height:50px;">
		<table width="637" height="30" border="0" >
		<tr>
			<td width="148" class="divtz"><span class="lanse" style="font-size:16px;"><strong>发布职位：</strong></span></td>
			
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
			<td width="130px;" colspan="1" rowspan="1">职位名称</td>
			<td width="165px" colspan="1" rowspan="1">需求人数</td>
			<td width="80px" colspan="1" rowspan="1">学历要求</td>
			<td width="80px" colspan="1" rowspan="1">工作经验</td>
			<td width="80px" colspan="1" rowspan="1">具体描述</td>
			<td width="80px" colspan="1" rowspan="1">删除</td>
		</tr>
		<c:forEach items="${jList }" var="job">
		<tr class="trClass" style="height:45px;">
			<td>${job.jobName }</td>
			<td>${job.jobRecruitmentNumber }人</td>
			<td>${job.jobEducationRequire }</td>
			<td>${job.jobExperience }</td>
			<td>	${job.jobDescribe }</td>
			<td>	<a class="btn" href="job_companyDeleteJob.action?jobId=${job.jobId }">删除</a></td>
		</tr>
		</c:forEach>
		<tr class="trClass" style="height:45px;">
			<td>某某某</td>
			<td>10人</td>
			<td>无</td>
			<td>5年经验</td>
			<td>	无描述		</td>
		</tr>
		<tr class="trClass" style="height:45px;">
			<td>某某某</td>
			<td>10人</td>
			<td>无</td>
			<td>5年经验</td>
			<td>	无描述		</td>
		</tr>
		<tr class="trClass" style="height:45px;">
			<td>某某某</td>
			<td>10人</td>
			<td>无</td>
			<td>5年经验</td>
			<td>	无描述		</td>
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