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
    
    <title>My JSP 'CompanyUpdate.jsp' starting page</title>
    
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
    	<form action="company_updateCompanyLevel.action">
    		<table border="1">
    			<input type="hidden" name="companyId" value="${company.companyId }"/>
    			<tr>
    				<td>公司名：</td>
    				<td>${company.companyName }</td>
    			</tr>
    			<tr>
    				<td>公司地址：</td>
    				<td>${company.companyAddress }</td>
    			</tr>
    			<tr>
    				<td>公司规模</td>
    				<td>${company.companyScale }</td>
    			</tr>
    			<tr>
    				<td>公司领域：</td>
    				<td>${company.companyField }</td>
    			</tr>
    			<tr>
    				<td>公司积分：</td>
    				<td>${company.companyPoint }</td>
    			</tr>
    			<tr>
    				<td>公司主页：</td>
    				<td>${company.companyHomepage }</td>
    			</tr>
    			<tr>
    				<td>公司等级：</td>
    				<td><select name="companyLevel">
 								<option value="1">1</option>   				
 								<option value="2">2</option>   				
 								<option value="3">3</option>   				
 								<option value="4">4</option>
 								<option disabled="disabled" selected="selected">${company.companyLevel }</option>   				
    						</select>
    				</td>
    			</tr>
    			<tr>
    				<td></td>
    				<td><input type="submit" value="提交"/></td>
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
					<li class="itmes1">
						<a href="appeal_getAllAppeal.action">投诉管理</a>
					</li>
					<li class="itmes2">
						<a href="company_getAllCompany.action">公司管理</a>
					</li>
				</ul>
			</div>
		</div>
		<div style="float: left; background: #ffffff; margin: 0; padding: 0;"  id="detailDiv">
		
<div class="divHi25"></div>

<div style="width:800px; height:50px;">
		<table width="637" height="30" border="0" >
		<tr>
			<td width="148" class="divtz"><span class="lanse" style="font-size:16px;"><strong>公司名称：</strong></span></td>
			
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
			<td width="130px;" colspan="1" rowspan="1">公司名称</td>
			<td width="165px" colspan="1" rowspan="1">公司地址</td>
			<td width="80px" colspan="1" rowspan="1">公司规模</td>
			<td width="80px" colspan="1" rowspan="1">公司领域</td>
			<td width="80px" colspan="1" rowspan="1">公司积分</td>
			<td width="80px" colspan="1" rowspan="1">公司主页</td>
			<td width="80px" colspan="1" rowspan="1">公司等级</td>
			<td width="80px" colspan="1" rowspan="1">操作</td>
		</tr>
		<c:forEach items="${cList }" var="company">
			<form action="company_updateCompanyLevel.action">
			<tr class="trClass" style="height:45px;">
			<td>${company.companyName }</td>
			<td>${company.companyAddress }</td>
			<td>${company.companyScale }</td>
			<td>${company.companyField }</td>
			<td>${company.companyPoint }</td>
			<td>
				<a href="${company.companyHomepage }">${company.companyHomepage }</a>
			</td>
			<td >
				<select name="companyLevel" id="" style="width: 60px; padding-left: 15px;">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option disabled="disabled" selected="selected">${company.companyLevel }</option>
				</select>
			</td>
			<td >
			   <input type="hidden" name="companyId" value="${company.companyId }"/>
				<input type="submit" class="btn" value="提交" />&nbsp;
			</td>
			
		</tr>
		</form>
		</c:forEach>
		<tr class="trClass" style="height:45px;">
			<td>风林火山</td>
			<td>河南郑州</td>
			<td>200</td>
			<td>基础制造</td>
			<td>900</td>
			<td>
				<a href="www.baidu.com">www.baidu.com</a>
			</td>
			<td name="status">
				<select name="" id="" style="width: 60px; padding-left: 15px;">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>
			</td>
			<td name="status">
				<input type="button" class="btn" value="提交" />&nbsp;
			</td>
		</tr>
		<tr class="trClass" style="height:45px;">
			<td>风林火山</td>
			<td>河南郑州</td>
			<td>200</td>
			<td>基础制造</td>
			<td>900</td>
			<td>
				<a href="www.baidu.com">www.baidu.com</a>
			</td>
			<td name="status">
				<select name="" id="" style="width: 60px; padding-left: 15px;">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>
			</td>
			<td name="status">
				<input type="button" class="btn" value="提交" />&nbsp;
			</td>
		</tr>
		<tr class="trClass" style="height:45px;">
			<td>风林火山</td>
			<td>河南郑州</td>
			<td>200</td>
			<td>基础制造</td>
			<td>900</td>
			<td>
				<a href="www.baidu.com">www.baidu.com</a>
			</td>
			<td name="status">
				<select name="" id="" style="width: 60px; padding-left: 15px;">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>
			</td>
			<td name="status">
				<input type="button" class="btn" value="提交" />&nbsp;
			</td>
		</tr><tr class="trClass" style="height:45px;">
			<td>风林火山</td>
			<td>河南郑州</td>
			<td>200</td>
			<td>基础制造</td>
			<td>900</td>
			<td>
				<a href="www.baidu.com">www.baidu.com</a>
			</td>
			<td name="status">
				<select name="" id="" style="width: 60px; padding-left: 15px;">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>
			</td>
			<td name="status">
				<input type="button" class="btn" value="提交" />&nbsp;
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