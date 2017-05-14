<%-- <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
	 <form action="driver_doLogin.action"  method="get">
	<img src="images/login.png" />
	
	<table width="95%" border="0" cellpadding="0" cellspacing="0">
	  <tr>
		<td width="26%" height="58" align="right"><span>*</span>账户名：</td>
		<td width="74%"><input name="username" type="text" class="text1" placeholder="请输入您的账号" /></td>
	  </tr>
	  <tr>
		<td height="58"align="right"><span>*</span>密码：</td>
		<td><input type="password" class="text1" name="password" placeholder="请输入密码" /></td>
	  </tr>
	  <!-- <tr>
		<td height="58"align="right">选择</td>
		<td><select name="UserCard">
		  <option selected="selected" >普通用户</option>
		  <option>公司用户</option>
		  <option>管理员</option>
		</select>
		</td>
	  </tr> -->
	  
	  <tr>
	  <td height="58"align="right">&nbsp;</td>
		<td height="93" > 
			<input type="button" class="log_but yellow" value="登陆" onClick="checkLogin()" />	</td>
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
    var username = $("input[name=username]").val();
    var password = $("input[name=password]").val();
    if(isEmptyStr(username))
	{
    	alert("账号不能为空!");
		$("input[name=username]").focus();
		return false;
	}
	if(isEmptyStr(password))
	{
   	 	alert("账号不能为空!");
		$("input[name=password]").focus();
		return false;
	}

}
</script>
</body>
</html>
