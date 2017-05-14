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
    
    <title>My JSP 'AppDriver.jsp' starting page</title>
    
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
  	<form action="applicant_UpdateHire.action">
   		<table>
    		<tr>
    			<td>应聘人姓名：</td>
    			<td>${driverdetails.driver.driverName }</td>
    		</tr>
    		<tr>
    			<td>应聘人拥有车型：</td>
    			<td>${driverdetails.car }</td>
    		</tr>
    		<tr>
    			<td>应聘人驾龄：</td>
    			<td>${driverdetails.dirverage }</td>
    		</tr>
    		<tr>
    			<td>最近有无重大事故：</td>
    			<td>${driverdetails.accident }</td>
    		</tr>
    		<tr>
    			<td>应聘人联系地址：</td>
    			<td>${driverdetails.address }</td>
    		</tr>
    		<tr>
    			<td>应聘人联系电话：</td>
    			<td>${driverdetails.tel }</td>
    		</tr>
    		<tr>
    			<td>备注：</td>
    			<td>${driverdetails.remarks }</td>
    		</tr>
    		<tr>
    			<td>
	    			<select name="hire">
	    				<option>招聘</option>
	    				<option>验证中</option>
	    				<option>不合格</option>
	    			</select>
    			</td>
    			<td><input type="submit" value="确认"></td>
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
		<div class="divHi25"></div>
	<div class="content-tab" style="width:100px;">基本信息</div>
<div class="divtable">
<div class="divHi25"></div>
<form action="" method="post" id="masterxForm" name="masterxForm">
	<table width="700" height="201" border="0" >
  <tr>
    <td width="26%" height="20" class="zuobian">姓名：</td>
    <td width="25%">${driverdetails.driver.driverName}</td>
    <td width="18%" class="zuobian">年龄：</td>
    <td width="31%">${driverdetails.driver.driverAge }</td>
  </tr>
  <tr>
    <td height="20" class="zuobian">驾龄：</td>
    <td>${driverdetails.dirverage }</td>
    <td class="zuobian">拥有货车型号：</td>
    <td>${driverdetails.car }</td>
  </tr>
  <tr>
    <td height="20" class="zuobian">最近半年内是否有重大事故：</td>
    <td>${driverdetails.accident }</td>
    <td class="zuobian">驾驶员联系电话：</td>
    <td>${driverdetails.tel }</td>
  </tr>
  <tr>
    <td height="20" class="zuobian">驾驶员积分：</td>
    <td>${driverdetails.driverPoint }</td>
    <td height="20" class="zuobian">驾驶员地址：</td>
    <td>${driverdetails.address}</td>
  </tr>
  <tr>
    <td height="20" class="zuobian">持有驾驶执照类型：</td>
    <td>${driverdetails.driverLicence }</td>
    <td height="20" class="zuobian">驾驶员身份证号码：</td>
    <td>${driverdetails.driverCard}</td>
  </tr>
  <tr>
    <td height="20" class="zuobian">备注：</td>
    <td colspan="3">${driverdetails.remarks }</td>
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