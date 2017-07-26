function bzGetFlashPlayerBZA157D079FF434498BDCE() {
	var div = document.getElementById('SWBZA157D079FF434498BDCE');
	if (div) {
		div.innerHTML = '<p style="background-color:#ffffff;color:#000000;padding:1em;">You have an old version of Flash Player. <a href="http://www.adobe.com/go/getflash/" target="_top">Get the latest Flash player.</a></p>';
	} else {
		alert("no SWBZA157D079FF434498BDCE div");
	}
}
function checkLocalWarning() {
	var path = _urlBZA157D079FF434498BDCE.substring(0,8);
	if (path.match('file:\/\/\/')) {
		var element = document.getElementById('local-warning');
		element.style.display = '';
	}
}
function bzEmbedSWFBZA157D079FF434498BDCE() {
	if (swfobject.hasFlashPlayerVersion("9.0.45")) {
		var flashvars = {
			swfId: "SWBZA157D079FF434498BDCE",
			xmlPath: _urlBZA157D079FF434498BDCE + "bz.xml",
			imgPath: _urlBZA157D079FF434498BDCE + "img",
			urlType: "_blank",
			showInfo: "0",
			themeMode: "2"
		};
		var params = {
			wmode: "transparent",
			allowscriptaccess: "always"
		};
		var attributes = {};
		swfobject.embedSWF(_urlBZA157D079FF434498BDCE + "bzAnimation.swf", "SWBZA157D079FF434498BDCE", "600", "250", "9.0.45", false, flashvars, params, attributes);
		swfobject.addDomLoadEvent(checkLocalWarning);
	} else {
		swfobject.addDomLoadEvent(bzGetFlashPlayerBZA157D079FF434498BDCE);
	}
}
bzEmbedSWFBZA157D079FF434498BDCE();
