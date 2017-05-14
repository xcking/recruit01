// 布局脚本
function focusSpan(id,taxt){
	if($("#"+id).val() == "") {
		$("#"+id+"Span").html(taxt);
		$("#"+id).addClass("Validform_error");
		$("#"+id+"Span").addClass("Validform_wrong");
		return false;
	}else{
		$("#"+id+"Span").html("");
		$("#"+id).removeClass("Validform_error");
		$("#"+id+"Span").removeClass("Validform_wrong");
		$("#"+id+"Span").addClass("Validform_right");
		return true;
	}
}

function PassWordSpan(id){
	var passs=$("#"+id).val();
	if(passs == "") {
		$("#"+id+"Span").html("密码不能为空!");
		$("#"+id).addClass("Validform_error");
		$("#"+id+"Span").addClass("Validform_wrong");
		return false;
	}else if(passs.length<6){
		$("#"+id+"Span").html("密码长度小于6位数!");
		$("#"+id).addClass("Validform_error");
		$("#"+id+"Span").addClass("Validform_wrong");
		return false;
	}else{
		$("#"+id+"Span").html("");
		$("#"+id).removeClass("Validform_error");
		$("#"+id+"Span").removeClass("Validform_wrong");
		$("#"+id+"Span").addClass("Validform_right");
		return true;
	}
}

function newPassWordto(id,idto){
	var passs=$("#"+id).val();
	var passsto=$("#"+idto).val();
	if(passsto ==""){
		$("#"+idto+"Span").html("确认密码不能为空!");
		$("#"+idto).addClass("Validform_error");
		$("#"+idto+"Span").addClass("Validform_wrong");
		return false;
	}else if(passs != passsto){
		$("#"+idto+"Span").html("两次密码不一致!");
		$("#"+idto).addClass("Validform_error");
		$("#"+idto+"Span").addClass("Validform_wrong");
		return false;
	}else{
		$("#"+idto+"Span").html("");
		$("#"+idto).removeClass("Validform_error");
		$("#"+idto+"Span").removeClass("Validform_wrong");
		$("#"+idto+"Span").addClass("Validform_right");
		return true;
	}
}
function insertTr(data,eqCount){
	$(".recordCount").html(data["recordCount"]);
	var totalPages = Math.ceil(parseInt(data["recordCount"])/$(".pageSize").val());
	$(".totalPages").html(totalPages==0?1:totalPages);
	$(".currentIndex").html(data["pageNo"]);
	var result = data["result"];
	var trs = $("#datas tr");
	for(var i = eqCount+1;i < trs.length;i++){
		$(trs[i]).remove();
	}
	//console.log(result);
	if(result.length > 0){
		for(var i = 0; i < result.length; i++){
	        var tr = $("#datas tr").eq(eqCount).clone();
	        tr.removeClass("trW");
	        tr.addClass("trClass");
	        
			tr.appendTo("#datas");
			var td = $(tr).find("td");
			td.each(function(){
				var recodeName = $(this).attr("name");
				$(this).html("");
				if(recodeName == "id"){
					//<input type="button" class="btn" value="查询"  onclick="cxXueshi(1)" />&nbsp;<input type="button" class="btn yellow" value="验证"  onclick="dxYanz()" /> &nbsp;<input type="button" class="btn green" value="添加"  onclick="tianjiaxs()" /> &nbsp;<input type="button" class="btn violet" value="问题"  onclick="tianwenti()" />
					var idss=result[i]["ids"];
					var adrId=result[i]["adrId"];
					if(adrId==1006){
						$(this).html("&nbsp;<input type='button' class='btn yellow' value='验证'  onclick='dxYanz("+idss+");' /> &nbsp;");
					}else{
						$(this).html("<input type='button' class='btn' value='查询'  onclick='cxXueshi("+idss+");' />&nbsp;<input type='button' class='btn yellow' value='验证'  onclick='dxYanz("+idss+");' /> &nbsp;<input type='button' class='btn green' value='问题'  onclick='tianwenti("+idss+");' />");
					}
					
				}else if(recodeName == "adId"){
					var idss=result[i]["ids"];
					$(this).html("<input type='button' class='btn' value='角色'  onclick='jiaoseget("+idss+");' />&nbsp;");
				}else if(recodeName == "hfid"){
					var idss=result[i]["ids"];
					$(this).html("<input type='button' class='btn' value='详细'  onclick='xiangxiJd("+idss+");' />&nbsp;");
				}else if(recodeName == "kfglid"){
					var idss=result[i]["ids"];
					//<input type="button" class="btn" value="评价"  onclick="cxXueshi(1)" />&nbsp;<input type="button" class="btn yellow" value="总结"  onclick="dxYanz()" /> 
					$(this).html("<input type='button' class='btn' value='评价'  onclick='pingjia("+idss+");' />&nbsp;<input type='button' class='btn yellow' value='总结'  onclick='zongjie("+idss+");' />");
				}else{
					var a = $(result[i]).attr(recodeName);
					if(a != null){
						$(this).html($(result[i]).attr(recodeName));
					}
				}
			});
		}
	}else{
        var tr = $("#datas tr").eq(eqCount).clone();
        tr.removeClass("trW");
        tr.addClass("trClass");
        tr.addClass("trClass2");
		tr.appendTo("#datas");
		var tttd = $(tr).find("td");
		$(tr).html("<td colspan='"+tttd.length+"' style='text-align:center;color:blue;'>无搜索结果</td>");
	}
}

function insertTr2(data,eqCount){
	var result = data["result"];
	var trs = $("#datas tr");
	for(var i = eqCount+1;i < trs.length;i++){
		$(trs[i]).remove();
	}
	if(result.length > 0){
		for(var i = 0; i < result.length; i++){
	        var tr = $("#datas tr").eq(eqCount).clone();
	        tr.removeClass("trW");
	        tr.addClass("trClass");
			tr.appendTo("#datas");
			var td = $(tr).find("td");
			td.each(function(){
				var recodeName = $(this).attr("name");
				$(this).html("");
				if(recodeName == "jiaoId"){
					var xuanz=result[i]["xuanz"];
					if(xuanz==1){
						$(this).html("已选择");
					}else{
						$(this).html("未选择");
					}
				}else{
					var a = $(result[i]).attr(recodeName);
					if(a != null){
						$(this).html($(result[i]).attr(recodeName));
					}
				}
				
			});
		}
	}else{
        var tr = $("#datas tr").eq(eqCount).clone();
        tr.removeClass("trW");
        tr.addClass("trClass");
        tr.addClass("trClass2");
		tr.appendTo("#datas");
		var tttd = $(tr).find("td");
		$(tr).html("<td colspan='"+tttd.length+"' style='text-align:center;color:blue;'>无搜索结果</td>");
	}
}
//首页
function pageStart(){
	var currentIndex = parseInt($(".currentIndex").html());
	var pageSize = $(".pageSize").val();
	if(currentIndex == 1){
		return;
	}else{
		$(".currentIndex").html(1);
		searchPage(1,pageSize);
	}
};

//下一页
function pageNext(){
	var currentIndex = parseInt($(".currentIndex").html());
	var totalPages = parseInt($(".totalPages").html());
	var pageSize = $(".pageSize").val();
	if(currentIndex+1 > totalPages){
		return;
	}else{
		currentIndex = currentIndex+1;
		$(".currentIndex").html(currentIndex);
		searchPage(currentIndex,pageSize);
	}
};
//上一页
function pageBack(){
	var currentIndex = $(".currentIndex").html();
	var totalPages = $(".totalPages").html();
	var pageSize = $(".pageSize").val();
	if(currentIndex-1 == totalPages || currentIndex-1 < 1){
		return;
	}else{
		currentIndex = currentIndex-1;
		$(".currentIndex").html(currentIndex);
		searchPage(currentIndex,pageSize);
	}
};

//末页
function pageEnd(){
	var currentIndex = parseInt($(".currentIndex").html());
	var totalPages = parseInt($(".totalPages").html());
	var pageSize = $(".pageSize").val();
	if(totalPages == currentIndex){
		return;
	}else{
		$(".currentIndex").html(totalPages);
		searchPage(totalPages,pageSize);
	}
};