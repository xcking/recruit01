//comm js
/**    
 * 对Date的扩展，将 Date 转化为指定格式的String    
 * 月(M)、日(d)、12小时(h)、24小时(H)、分(m)、秒(s)、周(E)、季度(q) 可以用 1-2 个占位符    
 * 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)    
 * eg:    
 * (new Date()).pattern("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423    
 * (new Date()).pattern("yyyy-MM-dd E HH:mm:ss") ==> 2009-03-10 二 20:09:04    
 * (new Date()).pattern("yyyy-MM-dd EE hh:mm:ss") ==> 2009-03-10 周二 08:09:04    
 * (new Date()).pattern("yyyy-MM-dd EEE hh:mm:ss") ==> 2009-03-10 星期二 08:09:04    
 * (new Date()).pattern("yyyy-M-d h:m:s.S") ==> 2006-7-2 8:9:4.18    
 */
Date.prototype.pattern = function(fmt) {
	var o = {
		"M+" : this.getMonth() + 1, //月份      
		"d+" : this.getDate(), //日      
		"h+" : this.getHours() % 12 == 0 ? 12 : this.getHours() % 12, //小时      
		                                 "H+" : this.getHours(), //小时      
		                                 "m+" : this.getMinutes(), //分      
		                                 "s+" : this.getSeconds(), //秒      
		                                 "q+" : Math.floor((this.getMonth() + 3) / 3), //季度      
		                                 "S" : this.getMilliseconds()
		                                 //毫秒      
	};
	var week = {
		"0" : "\日",
		"1" : "\一",
		"2" : "\二",
		"3" : "\三",
		"4" : "\四",
		"5" : "\五",
		"6" : "\六"
	};
	if (/(y+)/.test(fmt)) {
		fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "")
			.substr(4 - RegExp.$1.length));
	}
	if (/(E+)/.test(fmt)) {
		fmt = fmt
		.replace(
			RegExp.$1,
			((RegExp.$1.length > 1) ? (RegExp.$1.length > 2 ? "\星\期"
			                                                  : "\周")
			                                                  : "")
			                                                  + week[this.getDay() + ""]);
	}
	for ( var k in o) {
		if (new RegExp("(" + k + ")").test(fmt)) {
			fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k])
			                                                     : (("00" + o[k]).substr(("" + o[k]).length)));
		}
	}
	return fmt;
}

String.prototype.isIp = function() {
	var check = function(v) {
		try {
			return (v <= 255 && v >= 0);
		} catch (x) {
			return false;
		}
	};
	var re = this.split(".");
	return (re.length == 4) ? (check(re[0]) && check(re[1]) && check(re[2]) && check(re[3]))
	                        : false;
};
String.prototype.isEmail = function() {
	var emailRegExp = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
	if (this.length < 8) {
		return false;
	}
	if (!emailRegExp.test(this)) {
		return false;
	}
	return true;
};
String.prototype.isNummer = function() {
	var numRegExp = /^\d*$/;
	if (this.length == 0) {
		return false;
	}
	if (!numRegExp.test(this)) {
		return false;
	}
	return true;
};
String.prototype.charLength = function() {
	var j = 0;
	var s = this;
	for ( var i = 0; i < s.length; i++) {
		if (s.substr(i, 1).charCodeAt(0) > 255) {
			j = j + 2;
		} else {
			j++;
		}
	}
	return j;
};
String.prototype.isDate = function() {
	var reg = /^((((((0[48])|([13579][26])|([2468][048]))00)|([0-9][0-9]((0[48])|([13579][26])|([2468][048])))).02(.29)?)|(((000[1-9])|(00[1-9][0-9])|(0[1-9][0-9][0-9])|([1-9][0-9][0-9][0-9])).((((0[13578])|(1[02]))(.31)?)|(((0[1,3-9])|(1[0-2]))(.(29|30))?)|(((0[1-9])|(1[0-2])).((0[1-9])|(1[0-9])|(2[0-8]))))))$/;
	return reg.test(this);
};

function valCharLength(Value) {
	var j = 0;
	var s = Value;
	for ( var i = 0; i < s.length; i++) {
		if (s.substr(i, 1).charCodeAt(0) > 255) {
			j = j + 2;
		} else {
			j++;
		}
	}
	return j;
}
//给String类array类注入一些常用方法
//获取输入的真实长度
String.prototype.realLength = function() {
	return this.replace(/[^\x00-\xff]/g, "***").length;
};
// 去掉空格
String.prototype.trim = function() {
	// 用正则表达式将前后空格
	// 用空字符串替代。
	return this.replace(/(^\s*)|(\s*$)/g, "");
};
// 判断是否为数字
String.prototype.isNumber = function() {
	var numRegExp = /^\d*$/;
	if (!numRegExp.test(this)) {
		return false;
	} else {
		return true;
	}
};
// 判断是否为数字包括小数
String.prototype.isNumberOrFloat = function() {
	var floatRegExp = /^\d+(.\d+)?$/;
	if (!floatRegExp.test(this)) {
		return false;
	} else {
		return true;
	}
};
// 判断是否为金钱
// @param intLength 前面几位
// @param pointLength 后面几位
String.prototype.isMoney = function(intLength, pointLength) {
	var floatRegExp = "^\\d{1," + intLength + "}(\\.\\d{1," + pointLength
	+ "})?$";
	floatRegExp = new RegExp(floatRegExp);
	if (!floatRegExp.test(this)) {
		return false;
	} else {
		return true;
	}
};
// 判断是否为数字
String.prototype.isDouble = function() {
	var numRegExp = /(^\d*)|(^\d+\.d+)$/;
	if (!numRegExp.test(this)) {
		return false;
	} else {
		return true;
	}
};
// 判断是否为公里数
String.prototype.isKm = function() {
	var isKmRegExp = /^\d{1,10}(.\d{1,2})?$/;
	if (!isKmRegExp.test(this)) {
		return false;
	} else {
		return true;
	}
};
// 验证是否为EMAIL
String.prototype.isEmail = function() {
	var emailRegExp = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
	if (this.length < 8) {
		return false;
	}
	if (!emailRegExp.test(this)) {
		return false;
	}
	return true;
};

// 验证是否为美国电话号码
// 111-222-3333
String.prototype.isPhone = function() {
	var phoneReg = /^((?:\d{9})|(?:\d{3}-\d{4})|(?:\d{3}-\d{3}-\d{4}))$/;
	if (!phoneReg.test(this)) {
		return false;
	}
	return true;
};
// 验证是否为美国区号
// 11111
String.prototype.isZipCode = function() {
	var phoneReg = /^\d{5}$/;
	if (!phoneReg.test(this)) {
		return false;
	}
	return true;
};
// 验证是否为国内手机号码
String.prototype.isChinaPhone = function() {
	///^0?(13[0-9]|15[012356789]|18[0236789]|14[57])[0-9]{8}$/;
	var phoneReg = /^0(([1,2]\d)|([3-9]\d{2}))\d{8}|1[3,5,8]\d{9}$/;
	if (!phoneReg.test(this)) {
		return false;
	}
	return true;
};
// 验证是否为国内电话号码
String.prototype.isTel = function() {
	var telReg = /^[[0-9]{4}-|\[0-9]{4}-]?([0-9]{8}|[0-9]{7})?$/;
	if (!telReg.test(this)) {
		return false;
	}
	return true;
};
String.prototype.isCommPhone = function(phoneRegStr) {
	phoneRegStr = new RegExp(phoneRegStr);
	if (!phoneRegStr.test(this)) {
		return false;
	}
	return true;
};
// 四舍五入
function ForDight(Dight, How) {
	Dight = Math.round(Dight * Math.pow(10, How)) / Math.pow(10, How);
	return Dight;
}
/**
 * 格式化数字
 * 
 * @param obj
 */
function getNumberFmt(objVal) {
	var digitIndex, digitVal, flag, string;
	// 如果有小数位
	if (objVal.indexOf(".") != -1) {
		digitIndex = objVal.indexOf(".");
		flag = true;
		digitVal = objVal.substring(digitIndex + 1, objVal.length);
		string = objVal.substring(0, digitIndex);
	} else {
		string = objVal;
	}
	var s = string.replace(/,/g, "");
	var length = s.length;
	var len = parseInt(length / 3);
	var len_y = length % 3;
	if (len_y == 0) {
		len--;
		len_y = 3;
	}
	var rs = "";
	for (i = 0; i <= len; i++) {
		if (i == 0) {
			rs = s.substring(0, len_y);
		} else {
			if (rs != "") {
				rs = rs + ",";
			}
			rs = rs + s.substring(len_y + (i - 1) * 3, i * 3 + len_y);
		}
	}
	if (flag) {
		rs += "." + digitVal;
	}
	return rs;
}

// 根据ID获取对象
function getObj(oid) {
	return document.getElementById(oid);
}
// 判断数组元素是否重复
Array.prototype.isRepeat = function() {
	return /(\x0f[^\x0f]+\x0f)[\s\S]*\1/.test("\x0f" + this.join("\x0f\x0f")
		+ "\x0f");
};
// 根据下标删除数组元素
Array.prototype.remove = function(dx) {
	if (isNaN(dx) || dx > this.length) {
		return false;
	}
	for ( var i = 0, n = 0; i < this.length; i++) {
		if (this[i] != this[dx]) {
			this[n++] = this[i];
		}
	}
	this.length -= 1;
	return true;
};
// 消息提示
// infoType:1 信息窗口,2:警告窗口,3:确认窗口,4:错误窗口
function infoHint(infoType, msg) {
	var res = false;
	switch (infoType) {
	case "1":
		alert(msg);
		res = true;
		break;
	case "2":
		alert(msg);
		res = true;
		break;
	case "3":
		if (confirm(msg)) {
			res = true;
		} else {
			res = false;
		}
		break;
	case "4":
		alert(msg);
		res = true;
		break;
	default:
		res = false;
	break;
	}
	return res;
}

// JQUERY动态创建一个DIV 去LOAD一个页面
function createDivAndLoad(url, title, dyDivId, pheight, pwidth) {
	var height = pheight ? pheight : document.documentElement.clientHeight;
	var width = pwidth ? pwidth : document.documentElement.clientWidth;
	var divId = "dynamicDiv";
	if (dyDivId) {
		divId = dyDivId;
	}
	$("body")
	.append(
		"<div id=\""
		+ divId
		+ "\" class=\"dynamicDiv\"><div class=\"contentDiv\" id=\"contentDiv\"></div></div>");
	var jquerydivId = "#" + divId;
	$(jquerydivId).css( {
		width : width + "px",
		height : height + "px"
	});
	$(jquerydivId).css( {
		left : "0px",
		top : "0px"
	});
	// 在div中加载页面
	$("#contentDiv").load(url);
	// 显示DIV
	$(jquerydivId).show();
	$("select").hide();
}
// JQUERY动态移除div
function removeDynamicDiv(dyDivId) {
	$("select").show();
	var divId = "dynamicDiv";
	if (dyDivId) {
		divId = dyDivId;
	}
	var jquerydivId = "#" + divId;
	$(jquerydivId).remove();
}
function closeOpenWin() {
	window.close();
}


function getAbsoluteTop(objectId) {
	o = document.getElementById(objectId);
	oTop = o.offsetTop;
	while (o.offsetParent != null) {
		oParent = o.offsetParent;
		oTop += oParent.offsetTop;
		o = oParent;
	}
	return oTop;
}

function getAbsoluteLeft(objectId) {
	o = document.getElementById(objectId);
	oLeft = o.offsetLeft;
	while (o.offsetParent != null) {
		oParent = o.offsetParent;
		oLeft += oParent.offsetLeft;
		o = oParent;
	}
	return oLeft;
}

function getObjWidth(objectId) {
	o = document.getElementById(objectId);
	oWidth = o.offsetWidth;
	return oWidth;
}

function getClientHeight() {
	var cHeight = document.documentElement.clientHeight - 35;//页面浏览器宽度
	return cHeight;
}

function getClientHeightNoPage() {
	var cHeight = document.documentElement.clientHeight;//页面浏览器宽度
	return cHeight;
}

function getClientWidth() {
	var cWidth = document.documentElement.clientWidth;//页面浏览器宽度
	return cWidth;
}

//检查输入的字/字母长度 
function checkNameLenth(str,len){
	if(str==""){
		return true;
	}
	if(str.length>len){
		return false;
	}
	return true;
}
//检查是否为数字
function checkIsNum(tip,str){
	if(str.trim()!=""){
		var   type="^[0-9]*[1-9][0-9]*$";  
		var   re   =   new   RegExp(type);  
		if(str.trim().match(re)==null)  
		{  
			alert( tip+",请输入大于零的整数!");  
			return false; 
		}  
	}
	return true;
}
//检查请假天数
function checkHolidayNum(val){
	var days=99;
	if(/[^\d]/.test(val)) {
		alert("输入的请假时长不为数字!");
		return false;
	}
	if(val<=0 ){
		alert("请假时长应该大于0天！");
		return false;
	}
	if(val>days ){
		alert("请假时长不应该超过"+days+"天！");
		return false;
	}

	return true;
} 
//检查地址
function 	checkWord(val,tip){
	var str=val.value;
	if(str==""){
		return;
	}
	//验证是否是纯英文和数字
	regEn=/^[a-zA-Z0-9_]+$/; 
	if(regEn.test(str)){
		alert(tip+"不能纯为字母和数字，应包含汉字！");
		val.focus();
		return;
	}
	var regChar = /.*[\u4e00-\u9fa5]+.*$/; //含有一个或多个汉字
	if(!regChar.test(str)){
		alert(tip+"不能纯为字母、数字或符号，应包含汉字！");
		val.focus();
		return;
	}
	if(str.length>30){
		alert(tip+"长度不能超过30个字符！");
		val.focus();
		return;
	}
}
//域名验证
function IsURL(str_url){
	var strRegex = "^((https|http|ftp|rtsp|mms)?://)"
		+ "?(([0-9a-z_!~*'().&=+$%-]+: )?[0-9a-z_!~*'().&=+$%-]+@)?" //ftp的user@
		+ "(([0-9]{1,3}\.){3}[0-9]{1,3}" // IP形式的URL- 199.194.52.184
		+ "|" // 允许IP和DOMAIN（域名）
		+ "([0-9a-z_!~*'()-]+\.)*" // 域名- www.
		+ "([0-9a-z][0-9a-z-]{0,61})?[0-9a-z]\." // 二级域名
		+ "[a-z]{2,6})" // first level domain- .com or .museum
		+ "(:[0-9]{1,4})?" // 端口- :80
		+ "((/?)|" // a slash isn't required if there is no file name
		+ "(/[0-9a-z_!~*'().;?:@&=+$,%#-]+)+/?)$";
	var re=new RegExp(strRegex);
	//re.test()
	if (re.test(str_url)){
		if(str_url.length>30){
			alert("域名输入过长！");
			return (false);
		}else{
			return (true);
		}

	}else{
		alert("域名输入不合法！");
		return (false);
	}
} 
function formatDatebox(value){
	if (value == null || value == '') {
            return '';
	}
    var dt = new Date(value.time);
	return dt.pattern("yyyy-MM-dd");   //这里用到一个javascript的Date类型的拓展方法，这个是自己添加的拓展方法，在后面的步骤3定义
}


