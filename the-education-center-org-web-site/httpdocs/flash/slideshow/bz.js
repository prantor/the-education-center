function bzGetFlashPlayerBZ7F218CBC1D4545C0AC73() {
	var div = document.getElementById('SWBZ7F218CBC1D4545C0AC73');
	if (div) {
		div.innerHTML = '<div id="showBZ7F218CBC1D4545C0AC73" class="slideshow"><img src="'+_urlBZ7F218CBC1D4545C0AC73+'slideshow/images/48B8A785-EBAB-4109-8F63.jpg" alt="1" /></div>';
		var data = {
			'48B8A785-EBAB-4109-8F63.jpg': { caption: '1' },
			'531FAB06-98CD-475C-9193.jpg': { caption: '2' },
			'3B451563-7E98-40D3-9856.jpg': { caption: '3' },
			'F9DB4DF7-39D9-4AD0-B6C9.jpg': { caption: '4' },
			'6494A0F7-E741-4EAE-875E.jpg': { caption: '7' },
			'748F7D1D-AFD6-4A9D-94F3.jpg': { caption: '15' },
			'610923A2-43BF-4B22-9425.jpg': { caption: '21' },
			'EB43476D-19F1-497A-96F8.jpg': { caption: '26' },
			'228F13BC-639B-4D29-A8F6.jpg': { caption: '28' },
			'88864B52-4B4E-4250-B87F.jpg': { caption: '31' },
			'56529D3F-7AE6-4E75-9C1B.jpg': { caption: '32' },
			'18B5D19A-6ECC-4476-8CB7.jpg': { caption: '33' },
			'0E8453ED-A8DF-4ACA-9B12.jpg': { caption: '35' },
			'6D48764B-4E1E-4708-B983.jpg': { caption: '43' },
			'FEC5D51D-6F7E-4CB1-8ED7.jpg': { caption: '49' },
			'F46CC9FB-8265-48FB-ADA8.jpg': { caption: '52' },
			'FCC895B5-5EC8-4589-9FED.jpg': { caption: '57' },
			'97B222DC-549B-4357-843E.jpg': { caption: '58' }
		};
		if (typeof Slideshow != "undefined") {
			var myHu = _urlBZ7F218CBC1D4545C0AC73+'slideshow/images/';
			var myLoader = {'animate': [_urlBZ7F218CBC1D4545C0AC73+'slideshow/css/loader-#.png', 12]};
			var myShow = new Slideshow('showBZ7F218CBC1D4545C0AC73',data, {controller: false, width: 950, height: 420, thumbnails: false, hu: myHu, loader: myLoader});
		} else {
			alert("Slideshow not loaded");
		}
	} else {
		alert("no SWBZ7F218CBC1D4545C0AC73 div");
	}
}
function checkLocalWarning() {
	if (typeof checkLocalWarningFlag != "undefined") {
		var path = _urlBZ7F218CBC1D4545C0AC73.substring(0,8);
		if (path.match('file:\/\/')) {
			var element = document.getElementById('local-warning');
			element.style.display = '';
		}
	}
}
function bzEmbedSWFBZ7F218CBC1D4545C0AC73() {
	if (swfobject.hasFlashPlayerVersion(requiredFlashPlayerVersion)) {
		var flashvars = {
			xmlPath: _urlBZ7F218CBC1D4545C0AC73 + "bz.xml",
			imgPath: _urlBZ7F218CBC1D4545C0AC73 + "img",
			soundPath: false,
			themeMode: "2"
		};
		var params = {
			wmode: "transparent",
			allowscriptaccess: "always"
		};
		var attributes = {};
		swfobject.embedSWF(_urlBZ7F218CBC1D4545C0AC73 + "bzAnimation.swf", "SWBZ7F218CBC1D4545C0AC73", "950", "420", requiredFlashPlayerVersion, false, flashvars, params, attributes);
		swfobject.addDomLoadEvent(checkLocalWarning);
	} else {
		swfobject.addDomLoadEvent(bzGetFlashPlayerBZ7F218CBC1D4545C0AC73);
	}
}
