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
    
    <title>My JSP 'top.jsp' starting page</title>
    
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
</html>
 --%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
<style type="text/css">
body{padding: 0px; margin: 0px; }
a{text-decoration: none;}

.c_top {
	height:50px;
	width:100%; 
	background-color:#33b5e5;
}
.c_top_l {
	width:202px;
	float:left;
	height:50px;
	text-align:right;
	line-height: 50px;
}
.c_top_z{
	width:102px;float:left;
	height:50px;
	text-align:center;
	line-height: 50px; background-color:#16a0d3;
}
.c_top_s{
	width:102px;float:left;
	height:50px;
	text-align:center;
	line-height: 50px; 
}
.c_top_r {
	width:180px;
	float:right;
	text-align:right;
	line-height: 50px;
	height: 50px;
}
.c_top_r ul {
	width:180px;
	clear:both;
}
.c_top_r ul li {
	list-style:none;
	float:left;
	height:24px;
	line-height:24px;
	padding-left:3px;
	padding-right:3px;
	font-size: 12px;
}
.c_main {
	width:100%;
	height:auto;
}
</style>
	</head>
	<body>
		<div class="c_top">
		<div class="c_top_l" >
			<a href="#" ><img src="images/houtailogo.png" border="0" /></a>
		</div>
		
		<div class="c_top_r">
			<a href="#" style="color:#fff;" onClick="tuichu();"><strong>退出&nbsp;&nbsp;&nbsp;&nbsp;</strong></a>
		</div>
		<div class="c_top_r">
			<a href="#" style="color:#fff; font-size:14px;">${company.companyAccount }，欢迎您</a>
		</div>
	</div>
		<div id="refresh"></div>
<script type="text/javascript">
		function tuichu(){
			if (!confirm("确认退出？")) {
		        return false;
		    }
			$.ajax({
				url : "<%=request.getContextPath()%>/admin/AdminLoginOut.do",
				type : 'POST',
				cache : false,
				dataType : "json",
				success : function(data) {
			   		if(data["state"] == "success"){
			   			window.location.href="<%=request.getContextPath()%>/index.jsp";
			   		}else{
			   			alert("�˳�ʧ��!");
			   		}
				}
			});
		}
		</script>
	</body>
</html>
