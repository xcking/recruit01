<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- <html>
  <head>
    <title>MyHtml.html</title>
	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    
    <link rel="stylesheet" type="text/css" href="./styles.css">

  </head>
  
  <body>
    <form action="job_addJob.action" method="post">
    	<table>
    		<tr>
    			<td>职位名称：</td>
    			<td><input type="text" name="jobName"/></td>
    		</tr>
    		<tr>
    			<td>招聘人数：</td>
    			<td><input type="text" name="jobRecruitmentNumber"/></td>
    		</tr>
    		<tr>
    			<td>学历要求：</td>
    			<td><input type="text" name="jobEducationRequire"/></td>
    		</tr>
    		<tr>
    			<td>经验要求：</td>
    			<td><input type="text" name="jobExperience"/></td>
    		</tr>
    		<tr>
    			<td>所属公司：</td>
    			<td></td>
    		</tr>
    		<tr>
    			<td>出发地点：</td>
    			<td><input type="text" name="jobFromPlaces"/></td>
    		</tr>
    		<tr>
    			<td>目的地：</td>
    			<td><input type="text" name="jobDestination"/></td>
    		</tr>
			<tr>
    			<td>出发时间：</td>
    			<td><input type="date" name="jobStartdate"/></td>
    		</tr><tr>
    			<td>要求最晚到达时间：</td>
    			<td><input type="date" name="jobMaxdate"/></td>
    		</tr>
    		<tr>
    			<td>薪水：</td>
    			<td><input type="text" name="jobSalary"/></td>
    		</tr>
    		<tr>
    			<td>详细描述：</td>
    			<td><input type="text" name="jobDescribe"/></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><input type="submit" value="提交"/></td>
    		</tr>
    	</table>
    </form>
  </body>
</html> -->
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
					<li class="itmes2">
						<a href="job_toAddJob.action">发布职位</a>
					</li>
					<li class="itmes1">
						<a href="job_findJobByCompany.action">已发布职位</a>
					</li>
					<li class="itmes1">
						<a href="applicant_findApplicantByCompany.action">应聘信息</a>
					</li>
				</ul>
			</div>
		</div>
		<div style="float: left; background: #ffffff; margin: 0; padding: 0;"  id="detailDiv">
			<div class="divHi25"></div>
<div class="content-tab" style="width:100px;"><div style="height:50px; width:100px; background-color:#fff; z-index:3;">基本信息</div></div>
<div class="divtable">
<form action="job_addJob.action" method="post" id="masterxForm" name="masterxForm">
	<table width="90%" height="250" border="0" >
		  <tr>
			<td width="163" height="44" class="divtz">职位名称：</td>
			<td width="217"><input type="text" class="input normal"  name="jobName"/></td>
			<td class="divtz" width="77">招聘人数：</td>
			<td width="233"><input type="text" class="input normal" name="jobRecruitmentNumber " /></td>
		  </tr>
		  
		  <tr>
			<td height="44" class="divtz">学历要求：</td>
			<td><input type="text" class="input normal" name="jobEducationRequire" />	</td>
			<td class="divtz">经验要求：</td>
			<td><input type="text" class="input normal" name="jobExperience"/>	</td>
		  </tr>
		  
		   <tr>
			<td height="44" class="divtz">出发地点：</td>
			<td><input type="text" class="input normal" name="jobFromPlaces" /></td>
			<td class="divtz">目的地：</td>
			<td>
				<input type="text" class="input normal" name="jobDestination" />			</td>
		  </tr>
		   
		   <tr>
			<td height="44" class="divtz">出发时间：</td>
			<td><input type="date" class="input normal"  name="jobStartdate" />			</td>
			<td height="44" class="divtz">到达时间：</td>
			<td>
			 <input type="date" class="input normal" name="jobMaxdate"/>			</td>
		  </tr>
		  
		   <tr>
			<td height="44" class="divtz">薪水：</td>
			<td colspan="3">
			 <input type="text" class="input normal" name="jobSalary" />			</td>
		  </tr>
		    <tr>
			<td height="86" class="divtz">详细描述：</td>
			<td colspan="3"><textarea  cols="" rows=""  class="input normal" name="jobDescribe"></textarea>			</td>
		  </tr>
		  <tr>
			<td class="divtz">&nbsp;</td>
			<td colspan="3"><input type="submit" class="btn" value="确认发布"  />	</td>
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
