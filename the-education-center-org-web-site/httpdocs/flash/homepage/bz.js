function bzGetFlashPlayerBZ9DCC128E762B4477B5B2() {
	var div = document.getElementById('SWBZ9DCC128E762B4477B5B2');
	if (div) {
		div.innerHTML = '<div id="showBZ9DCC128E762B4477B5B2" class="slideshow"><img src="'+_urlBZ9DCC128E762B4477B5B2+'slideshow/images/8AD9AFA3-A74E-49DE-B09A.jpg" alt="5" /></div>';
		var data = {
			'8AD9AFA3-A74E-49DE-B09A.jpg': { caption: '5' },
			'C47270C2-4D1D-4339-A230.jpg': { caption: '6' },
			'A4F07BAF-F107-4A53-BA35.jpg': { caption: '7' },
			'0DA0994A-DD7E-40FA-A74F.jpg': { caption: 'bxp47813h' },
			'3D54A3F7-585F-4A19-A468.jpg': { caption: 'bxp47900h' },
			'F3DE9C62-80A9-4BFE-8C5E.jpg': { caption: 'bxp47858h' },
			'ED830ACC-CB40-438A-A722.jpg': { caption: 'bxp47852h' },
			'0542276E-6740-4693-BFFB.jpg': { caption: 'bxp47884h' },
			'2D5C4776-6703-4E79-A088.jpg': { caption: 'bxp47841h' },
			'0347D92F-F737-4A3F-AA8E.jpg': { caption: 'bxp47888h' },
			'9A86CB1C-6AB7-4525-AF5D.jpg': { caption: 'bxp47835h' },
			'5116A95A-A4B7-4EED-A84C.jpg': { caption: 'Picture14' },
			'0667C6AE-B08A-4339-8242.jpg': { caption: 'bxp47829h' },
			'A460B659-43E7-4EF5-9BA0.jpg': { caption: 'bxp47833h' }
		};
		if (typeof Slideshow != "undefined") {
			var myHu = _urlBZ9DCC128E762B4477B5B2+'slideshow/images/';
			var myLoader = {'animate': [_urlBZ9DCC128E762B4477B5B2+'slideshow/css/loader-#.png', 12]};
			var myShow = new Slideshow('showBZ9DCC128E762B4477B5B2',data, {controller: false, width: 516, height: 225, thumbnails: false, hu: myHu, loader: myLoader});
		} else {
			alert("Slideshow not loaded");
		}
	} else {
		alert("no SWBZ9DCC128E762B4477B5B2 div");
	}
}
function checkLocalWarning() {
	if (typeof checkLocalWarningFlag != "undefined") {
		var path = _urlBZ9DCC128E762B4477B5B2.substring(0,8);
		if (path.match('file:\/\/')) {
			var element = document.getElementById('local-warning');
			element.style.display = '';
		}
	}
}
function bzEmbedSWFBZ9DCC128E762B4477B5B2() {
	if (swfobject.hasFlashPlayerVersion(requiredFlashPlayerVersion)) {
		var flashvars = {
			xmlPath: _urlBZ9DCC128E762B4477B5B2 + "bz.xml",
			imgPath: _urlBZ9DCC128E762B4477B5B2 + "img",
			soundPath: false,
			themeMode: "2"
		};
		var params = {
			wmode: "transparent",
			allowscriptaccess: "always"
		};
		var attributes = {};
		swfobject.embedSWF(_urlBZ9DCC128E762B4477B5B2 + "bzAnimation.swf", "SWBZ9DCC128E762B4477B5B2", "516", "225", requiredFlashPlayerVersion, false, flashvars, params, attributes);
		swfobject.addDomLoadEvent(checkLocalWarning);
	} else {
		swfobject.addDomLoadEvent(bzGetFlashPlayerBZ9DCC128E762B4477B5B2);
	}
}
