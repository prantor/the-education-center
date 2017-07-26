var requiredFlashPlayerVersion = "9.0.45";
if( !_urlBZ7F218CBC1D4545C0AC73 ) {
	var _urlBZ7F218CBC1D4545C0AC73 = null;
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
					_urlBZ7F218CBC1D4545C0AC73 = ssrc.substring(0,ssrc.length-11);
				} else {
					_urlBZ7F218CBC1D4545C0AC73 = "./";
				}
			}
		}
	}
	_urlBZ7F218CBC1D4545C0AC73 = _urlBZ7F218CBC1D4545C0AC73.replace("&","%26");
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

function mootoolsLoadedBZ7F218CBC1D4545C0AC73() {
   loadScript(_urlBZ7F218CBC1D4545C0AC73+"slideshow/js/slideshow.js",slideshowLoadedBZ7F218CBC1D4545C0AC73);
}
function slideshowLoadedBZ7F218CBC1D4545C0AC73() {
   loadScript(_urlBZ7F218CBC1D4545C0AC73+"bz.js",bzLoadedBZ7F218CBC1D4545C0AC73);
}
function bzLoadedBZ7F218CBC1D4545C0AC73() {
    bzEmbedSWFBZ7F218CBC1D4545C0AC73();
}
function swfobjectLoadedBZ7F218CBC1D4545C0AC73() {
	if (typeof insertHTMLCodeFlag != "undefined") {
        insertHTMLCode();
    }
    if (typeof swfobject != "undefined") {
		if (!swfobject.hasFlashPlayerVersion(requiredFlashPlayerVersion)) {
			includeCSS(_urlBZ7F218CBC1D4545C0AC73+"slideshow/css/slideshow.css");
			includeCSS(_urlBZ7F218CBC1D4545C0AC73+"slideshow/css/bzSlideshow.css");
			loadScript(_urlBZ7F218CBC1D4545C0AC73+"slideshow/js/mootools-1.2.3.1-core-more.js",mootoolsLoadedBZ7F218CBC1D4545C0AC73);
		} else {
			
			loadScript(_urlBZ7F218CBC1D4545C0AC73+"bz.js",bzLoadedBZ7F218CBC1D4545C0AC73);
		}
    }
}
function swfobjectLoaded() {
	swfobjectLoadedBZ7F218CBC1D4545C0AC73();
}
function loadFilesBZ7F218CBC1D4545C0AC73() {
    if (typeof swfobject == "undefined") {
        document.write('<script type="text/javascript" src="'+_urlBZ7F218CBC1D4545C0AC73+"swfobject.js"+'"></script>');
    } else {
        swfobjectLoadedBZ7F218CBC1D4545C0AC73();
    }
}
loadFilesBZ7F218CBC1D4545C0AC73();
