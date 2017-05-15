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
    
    <title>My JSP 'AppealHandle.jsp' starting page</title>
    
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
    		<tr>
    			<td>职位名称：</td>
    			<td>${appeal.job.jobName }</td>
    		</tr>
    		<tr>
    			<td>薪水：</td>
    			<td>${appeal.job.jobSalary }</td>
    		</tr>
    		<tr>
    			<td>公司名称：</td>
    			<td>${appeal.job.company.companyName }</td>
    		</tr>
    		<tr>
    			<td>公司信用分：</td>
    			<td>${appeal.job.company.companyPoint }</td>
    		</tr>
    		<tr>
    			<td>公司信用等级：</td>
    			<td>${appeal.job.company.companyLevel }</td>
    		</tr>
    	</table>
    	<form action="appeal_doHandle.action" method="post">
			<table>
				<input type="hidden" name="jobId" value="${appeal.job.jobId }"/>
				<input type="hidden"  name="id" value="${appeal.id }"/>
				<tr>
	    			<td>扣除积分：</td>
	    			<td><select name="point">
	    							<option value="10">10</option>
	    							<option value="50">50</option>
	    							<option value="100">100</option>
	    							<option value="200">200</option>
	    							<option value="250">250</option>
	    					</select>
	    			</td>
    			</tr>
    			<tr>
    				<td colspan="2"><input type="submit" value="确定"/></td>
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
		<div class="divHi25"></div>
<div class="content-tab" style="width:100px;"><div style="height:50px; width:100px; background-color:#fff; z-index:3;">扣除积分</div></div>
<div class="divtable">
<div class="divHi25"></div>
<form action="appeal_doHandle.action" method="post" id="masterxForm" name="masterxForm">
	<table width="508" height="250" border="0" >
		  <tr>
			<td height="44" class="divtz">职&nbsp;位&nbsp;名&nbsp;称：</td>
			<td>
				&nbsp;&nbsp;${appeal.job.jobName }
			</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">薪&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;水：</td>
			<td>
				&nbsp;&nbsp;${appeal.job.jobSalary }
			</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">公&nbsp;司&nbsp;名&nbsp;称：</td>
			<td>
				&nbsp;&nbsp;${appeal.job.company.companyName }
			</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">公司信用分：</td>
			<td>&nbsp;&nbsp;${appeal.job.company.companyPoint }</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">公司信用等级：</td>
			<td>&nbsp;&nbsp;${appeal.job.company.companyLevel }</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">扣除积分：</td>
			<td>&nbsp;&nbsp;
				<select style="width: 70px;" name="point">
					<option value="10">10</option>
					<option value="20">20</option>
					<option value="30">30</option>	
				</select>
			</td>
		  </tr>
		  <tr>
			<td class="divtz">&nbsp;</td>
			<td>
				<br />&nbsp;&nbsp;
				<input type="submit" class="btn" value="确认"  />
			</td>
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