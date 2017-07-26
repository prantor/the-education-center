var requiredFlashPlayerVersion = "9.0.45";
if( !_urlBZ9DCC128E762B4477B5B2 ) {
	var _urlBZ9DCC128E762B4477B5B2 = null;
	var scripts = document.getElementsByTagName("script");
	for( var i=0;i<scripts.length;i++ ) {
		var s = scripts[i];
		var ssrc = "";
		try {
			ssrc = s.src;
		} catch( e ) {
			ssrc = "";
		}
		if (typeof ssrc != "undefined") {
			if( ssrc && ssrc.match(/bzLoader\.js/) ) {
				if (ssrc.length>11) {
					_urlBZ9DCC128E762B4477B5B2 = ssrc.substring(0,ssrc.length-11);
				} else {
					_urlBZ9DCC128E762B4477B5B2 = "./";
				}
			}
		}
	}
	_urlBZ9DCC128E762B4477B5B2 = _urlBZ9DCC128E762B4477B5B2.replace("&","%26");
}
function loadScript(url, callback) {
    var script = document.createElement("script")
    script.type = "text/javascript";
    if (script.readyState) {
        //IE
        script.onreadystatechange = function() {
            if (script.readyState == "loaded" ||
				script.readyState == "complete") {
                script.onreadystatechange = null;
                callback();
            }
        };
    } else {
        //Others
        script.onload = function() {
            callback();
        };
    }
    script.src = url;
    document.getElementsByTagName("head")[0].appendChild(script);
}
function includeJS(filename) {
    var fileref = document.createElement('script');
    fileref.setAttribute("type", "text/javascript");
    fileref.setAttribute("src", filename);
    document.getElementsByTagName('head')[0].appendChild(fileref);
}
function includeCSS(filename) {
    var fileref = document.createElement('link');
    fileref.setAttribute("rel", "stylesheet");
    fileref.setAttribute("type", "text/css");
    fileref.setAttribute("href", filename);
    document.getElementsByTagName('head')[0].appendChild(fileref);
}

function mootoolsLoadedBZ9DCC128E762B4477B5B2() {
   loadScript(_urlBZ9DCC128E762B4477B5B2+"slideshow/js/slideshow.js",slideshowLoadedBZ9DCC128E762B4477B5B2);
}
function slideshowLoadedBZ9DCC128E762B4477B5B2() {
   loadScript(_urlBZ9DCC128E762B4477B5B2+"bz.js",bzLoadedBZ9DCC128E762B4477B5B2);
}
function bzLoadedBZ9DCC128E762B4477B5B2() {
    bzEmbedSWFBZ9DCC128E762B4477B5B2();
}
function swfobjectLoadedBZ9DCC128E762B4477B5B2() {
	if (typeof insertHTMLCodeFlag != "undefined") {
        insertHTMLCode();
    }
    if (typeof swfobject != "undefined") {
		if (!swfobject.hasFlashPlayerVersion(requiredFlashPlayerVersion)) {
			includeCSS(_urlBZ9DCC128E762B4477B5B2+"slideshow/css/slideshow.css");
			includeCSS(_urlBZ9DCC128E762B4477B5B2+"slideshow/css/bzSlideshow.css");
			loadScript(_urlBZ9DCC128E762B4477B5B2+"slideshow/js/mootools-1.2.3.1-core-more.js",mootoolsLoadedBZ9DCC128E762B4477B5B2);
		} else {
			
			loadScript(_urlBZ9DCC128E762B4477B5B2+"bz.js",bzLoadedBZ9DCC128E762B4477B5B2);
		}
    }
}
function swfobjectLoaded() {
	swfobjectLoadedBZ9DCC128E762B4477B5B2();
}
function loadFilesBZ9DCC128E762B4477B5B2() {
    if (typeof swfobject == "undefined") {
        document.write('<script type="text/javascript" src="'+_urlBZ9DCC128E762B4477B5B2+"swfobject.js"+'"></script>');
    } else {
        swfobjectLoadedBZ9DCC128E762B4477B5B2();
    }
}
loadFilesBZ9DCC128E762B4477B5B2();
