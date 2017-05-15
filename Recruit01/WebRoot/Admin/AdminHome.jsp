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
    			<c:if test="${appeal.state!='处理完成' }">
    				<tr>
    				<td>${appeal.driver.driverName }</td>
    				<td>${appeal.job.jobName }</td>
    				<td>${appeal.state }</td>
    				<td>${appeal.content }</td>
    				<td><a href="job_JobDetails.acton?jobId=${appeal.job.jobId }">职位详情</a></td>
    				<td><a href="job_deleteJob.action?jobId=${appeal.job.jobId }">删除该职位</a></td>
    				<td><a href="appeal_toHandle.action?id=${appeal.id }">处理</a></td>
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
	<iframe id="headiFrame" src="Admin/top.jsp" frameborder="no" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" class="divtop1"></iframe>
	<div style="width: 100%; padding: 0px; margin-top:2px;">
		<div class="ui-box" style="float: left;">
			<div id="bigClasss">
				<ul id="knav">
					<li class="itmes2">
						<a href="appeal_getAllAppeal.action">投诉管理</a>
					</li>
					<li class="itmes1">
						<a href="company_getAllCompany.action">公司管理</a>
					</li>
				</ul>
			</div>
		</div>
		<div style="float: left; background: #ffffff; margin: 0; padding: 0;"  id="detailDiv">
		
<div style="width:800px; height:50px;">
<form id="searchForm" action="company_searchCompanyName.action">
		<table width="637" height="30" border="0" >
		<tr>
			<td width="148" class="divtz">
				<span class="lanse" style="font-size:16px;">
					<strong>公司：</strong>
				</span>
			</td>
			
		  <td width="269">
		  	<input type="text" id="keywords" name="keywords"  style="width:250px;" value="" class="input normal" />&nbsp;&nbsp;&nbsp;</td>
		  <td width="206" class="divtz">
		  	<div align="left">
		    	<input type="submit" class="btn" value="查询" />
	      	</div>
	      </td>
		 </tr>
  </table>
  </form>
</div>

<div class="divHi25" style="border-top:1px solid #CCCCCC;"></div>
<div id="tit">
	<table id="datas" class="tab_tit" cellspacing="0" cellpadding="0" style="overflow: scroll;">
	<tbody>
		<tr class="trW" style="height:41px;">
			<td width="130px;" colspan="1" rowspan="1">投诉用户</td>
			<td width="165px" colspan="1" rowspan="1">投诉职位</td>
			<td width="80px" colspan="1" rowspan="1">处理状态</td>
			<td width="80px" colspan="1" rowspan="1">投诉内容</td>
			<td width="180px" colspan="1" rowspan="1">操作</td>
		</tr>
		<c:forEach items="${aList }" var="appeal">
			<tr class="trClass" style="height:45px;">
			<td>${appeal.driver.driverName }</td>
			<td>${appeal.job.jobName }</td>
			<td>${appeal.state }</td>
			<td>${appeal.content }</td>
			<td name="opt">
				<a href="job_adminJobDetails.action?jobId=${appeal.job.jobId }" class="a1" >职位详情</a>&nbsp;
				<a href="job_deleteJob.action?jobId=${appeal.job.jobId }" class="a1_yellow" >删除职位</a>&nbsp;
				<a href="appeal_toHandle.action?id=${appeal.id }" class="a1_violet" >处理</a>&nbsp;
			</td>
		</tr>
		</c:forEach>
		<tr class="trClass" style="height:45px;">
			<td>张三</td>
			<td>大型运输车运输人员</td>
			<td>等待处理</td>
			<td>处理慢</td>
			<td name="opt">
				<a href="gly_tsgl_xq.html" class="a1" >职位详情</a>&nbsp;
				<a href="#" class="a1_yellow" >删除职位</a>&nbsp;
				<a href="gly_tsgl_cl.html" class="a1_violet" >处理</a>&nbsp;
			</td>
		</tr>
		
	</tbody>
</table>
</div>
<div class="fenye" align="center">
	<label>共<span class="recordCount">10</span>条记录&nbsp;&nbsp;当前第<span class="currentIndex">1</span>页&nbsp;&nbsp;共<span class="totalPages">1</span>页</label>&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="page_start" onclick="pageStart();" href="#">首页</a>
		<a class="page_back" onclick="pageBack();" href="#">上一页 </a>
		<a class="page_next" onclick="pageNext();" href="#">下一页</a>
		<a class="page_end" onclick="pageEnd();" href="#">末页</a>
		<input type="hidden" value="10" style="width:25px;" class="pageSize"/>
</div>
</div>
</div>
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</body>
</html>