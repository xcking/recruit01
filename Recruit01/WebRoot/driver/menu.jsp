<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'menu.jsp' starting page</title>
    
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
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>无标题文档</title>
	<link rel="stylesheet" type="text/css" href="css/index.css" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/left.css" />
	<script src="js/artDialog/artDialog.source.js" type="text/javascript"></script>
	<script src="js/artDialog/iframeTools.source.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.9.2.custom.js"></script>
	<link href="css/jquery-ui-1.9.2.custom.css" rel="stylesheet"type="text/css" />
	<script type="text/javascript" src="js/autoHeight.js"></script>
	<script type="text/javascript" src="js/layout.js"></script>
	<link type="text/css" rel="stylesheet" href="js/artDialog/skins/blue.css">
	
</head>

<body>
		<div style="width: 100%; padding: 0px; margin-top:2px;">
			<div class="ui-box" style="float: left;">
				
				<div id="bigClasss">
					<ul id="knav">
						<li class="itmes2" id="itmes1">
							<a href="#" onclick="shouDetailDiv(1)">个人信息</a>
						</li>
						<li class="itmes1" id="itmes2">
							<a href="#" onclick="shouDetailDiv(2)">招募信息</a>
						</li>
						<li class="itmes1" id="itmes3">
							<a href="#" onclick="shouDetailDiv(3)">应聘状态</a>
						</li>
						<li class="itmes1" id="itmes4">
							<a href="#" onclick="shouDetailDiv(4)">我的申诉</a>
						</li>
						<!-- <li class="itmes1" id="itmes5">
							<a href="#" onclick="shouDetailDiv(5)">发布职位</a>
						</li>
						<li class="itmes1" id="itmes6">
							<a href="#" onclick="shouDetailDiv(6)">已发布职位</a>
						</li>
						<li class="itmes1" id="itmes7">
							<a href="#" onclick="shouDetailDiv(7)">应聘信息</a>
						</li>
						<li class="itmes1" id="itmes8">
							<a href="#" onclick="shouDetailDiv(8)">投诉管理</a>
						</li>
						<li class="itmes1" id="itmes9">
							<a href="#" onclick="shouDetailDiv(9)">公司管理</a>
						</li> -->
					</ul>
				</div>
			</div>
			<div style="float: left; background: #ffffff; margin: 0; padding: 0;"
				id="detailDiv">
			</div>
		</div>
		<script type="text/javascript">
$(function() {
	//setAutoHeight("#treeMainDiv");
	setWidth("#detailDiv", $(window).width() - 230 - 22 - 1);
	setHeight("#bigClasss", $(window).height() - 50);
	$("#detailDiv").load("grinfo.html");
});

function shouDetailDiv(id){
	if(id==1){
		$("#detailDiv").load("driverInfo.jsp");
	}else if(id==2){
		$("#detailDiv").load("job_getAllJob.action");
	}else if(id==3){
		$("#detailDiv").load("yingpinzt.html");
	}else if(id==4){
		$("#detailDiv").load("wodeshensu.html");
	}
	$('[id^=itmes]').addClass("itmes1");
	$("#itmes"+id).removeClass("itmes1");
	$('[id^=itmes]').removeClass("itmes2");
	$("#itmes"+id).addClass("itmes2");
	
}
</script>
	</body>
</html>