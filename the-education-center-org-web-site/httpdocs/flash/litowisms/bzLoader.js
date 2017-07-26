if( !_urlBZA157D079FF434498BDCE ) {
	var _urlBZA157D079FF434498BDCE = null;
	var scripts = document.getElementsByTagName("script");
	for( var i=0;i<scripts.length;i++ ) {
		var s = scripts[i];
		if( s.src && s.src.match(/bzLoader\.js/) ) {
			if (s.src.length>11) {
				_urlBZA157D079FF434498BDCE = s.src.substring(0,s.src.length-11);
			} else {
				_urlBZA157D079FF434498BDCE = "./";
			}
		}
	}
}
var _scriptsBZA157D079FF434498BDCE = new Array();
_scriptsBZA157D079FF434498BDCE[0] = 'swfobject.js';
_scriptsBZA157D079FF434498BDCE[1] = 'bz.js';
for( var i=0;i<_scriptsBZA157D079FF434498BDCE.length;i++ ) {
	var urlC = _urlBZA157D079FF434498BDCE+_scriptsBZA157D079FF434498BDCE[i];
	document.write('<script type="text/javascript" src="'+ urlC +'"><\/script>');
}