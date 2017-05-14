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
    
    <title>My JSP 'driverInfo.jsp' starting page</title>
    
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
	<link rel="stylesheet" type="text/css" href="css/index.css" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/left.css" />
	<script type="text/javascript" src="easyui-1.3.2/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="js/autoHeight.js"></script>
	<script type="text/javascript" src="js/layout.js"></script>
</head>
<body>
<div class="divHi25"></div>
<div class="location">&nbsp;&nbsp;&nbsp;某某人欢迎您登录软法运输车辆招募系统</div>
<div class="divHi25"></div>
<div class="content-tab" style="width:100px;"><div style="height:50px; width:100px; background-color:#fff; z-index:3;">个人信息</div></div>
<div class="divtable">
<div class="divHi25"></div>
<form action="driverDetails_updateDetails.action" method="post" id="masterxForm" name="masterxForm">
	<table width="708" height="250" border="0" >
		  <%-- <tr>
			<td height="44" class="divtz">姓名：</td>
			<td>
				<input type="text" class="input " value="${driver.driverName }" />
			</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">性别：</td>
			<td>
				<input type="radio" class="input " value="${driv }" />
				<c:if test="${driver.driverSex=='男' }">
					<input type="radio" class="input " value=" 男" checked="checked">男
					<input type="radio" class="input " value=" 女" >女
				</c:if>
				<c:if test="${driver.driverSex=='女' }">
					<input type="radio" class="input " value=" 男" >男
					<input type="radio" class="input " value=" 女" checked="checked">女
				</c:if>
			</td>
		  </tr>
		  <tr>
			<td height="44" class="divtz">年龄：</td>
			<td>
				<input type="text" class="input normal" value="${driver.driverAge }" />
			</td>
		  </tr> --%>
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
		<div class="divHi25"></div>
</div>

</body>
</html>
