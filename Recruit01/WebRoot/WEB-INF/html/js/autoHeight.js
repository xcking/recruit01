function setHeight(o,vheight) {
	$(o).css("height",vheight);
}

function setAutoHeight(o) {
	$(o).css("height",$(window).height());
}

function setWidth(o,vWidth) {
	$(o).css("width",vWidth);
}

function setAutoWidth(o) {
	$(o).css("width",$(window).width());
}

function getPageHeight() {
	return $(window).height();
}

function getDomHeight(oid) {
	return $(oid).height();
}

function getPageWidth() {
	return $(window).width();
}

function getDomWidth() {
	return $(oid).width();
}
