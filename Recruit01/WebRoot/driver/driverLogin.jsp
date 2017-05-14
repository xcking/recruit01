<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    
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
    <form action="driver_doLogin.action"  method="get">
    	<table>
    		<tr>
    			<td>用户名：</td>
    			<td><input type="text"  name="driverAccount"/></td>
    		</tr>
    		<tr>
    			<td>密码：</td>
    			<td><input type="password" name="driverPassword"/></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><input type="submit" value="登陆"/></td>
    		</tr>
    		<tr>
    			<td>
    				<a href="driver_toRegister.action">注册</a>
    			</td>
    			<td>
    				<a>忘记密码</a>
    			</td>
    		</tr>
    	</table>
    </form>
  </body>
</html> --%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=gb2312" /> -->
<title>软法运输车辆招募-登录</title>
<link type='text/css' href="css/style.css"  rel='stylesheet'>
</head>

<body style=" background-color:#f1f1f1; ">
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div id="containers" align="center">
<div class="logins">
	<img src="images/login.png" />
	<form action="driver_doLogin.action"  method="get" id="loginForm">
	<table width="95%" border="0" cellpadding="0" cellspacing="0">
	  <tr>
		<td width="26%" height="58" align="right"><span>*</span>账户</td>
		<td width="74%"><input id="driverAccount" name="driverAccount" type="text" class="text1" placeholder="请输入您的账号" /></td>
	  </tr>
	  <tr>
		<td height="58"align="right"><span>*</span>密码</td>
		<td><input id="driverPassword" type="password" class="text1" name="driverPassword" placeholder="请输入密码" /></td>
	  </tr>
	  <!-- <tr>
		<td height="58"align="right">选择</td>
		<td><select>
		  <option selected="selected">普通用户</option>
		  <option>公司用户</option>
		  <option>管理员</option>
		</select>
		</td>
	  </tr> -->
	  
	  <tr>
	  <td height="58"align="right">&nbsp;</td>
		<td height="93" > 
			<input type="button" class="log_but yellow" value="登录" onclick="checkLogin()" />
			<!-- <button class="log_but yellow" onClick="checkLogin()">登陆</button> -->
		</td>
	  </tr>
	  <tr>
	  
		<td height="63" colspan="2" align="center">
			<label><a href="#">还没有账号？请注册</a></label>&nbsp;&nbsp;&nbsp;&nbsp;	<label><a href="#">忘记密码</a></label>
		</td>
	  </tr>
	</table>
	</form>
</div>
</div>
<script src="js/jquery.min.js"></script>  
<script type="text/javascript">
function isEmptyStr(str) {
	if (str == null)
	{
		return true;
	}
	if (str.match(/^\s*$/g)) {
		return true;
	} else {
		return false;
	}
}
function checkLogin(){
    var username = document.getElementById("driverAccount").value;
    var password = document.getElementById("driverPassword").value;
    if(isEmptyStr(username))
	{
    	alert("账号不能为空!");
		$("input[name=username]").focus();
		return false;
	}
	if(isEmptyStr(password))
	{
   	 	alert("密码不能为空!");
		$("input[name=password]").focus();
		return false;
	}
	document.getElementById("loginForm").submit();
   /*  $.ajax( {
		url :"/admin/logoYcAdmin.do",
		type : 'POST',
		data : {
			'loginName' : username,
			'passwords' : password
		},
		cache : false,
		dataType : "json",
		success : function(data) {
			if(data["state"] == 'success'){
				window.location.href = 'index.jsp';
			}else{
				 alert("抱歉，账号和密码错误，登录失败！");
			}
		}
	}); */
	
}
</script>
</body>
</html>
