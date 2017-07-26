// Created by iWeb 3.0.1 local-build-20100830

function createMediaStream_id8()
{return IWCreatePhotocast("http://www.theeducationcenter.org/pages/slideshow_files/rss.xml",true);}
function initializeMediaStream_id8()
{createMediaStream_id8().load('http://www.theeducationcenter.org/pages',function(imageStream)
{var entryCount=imageStream.length;var headerView=widgets['widget1'];headerView.setPreferenceForKey(imageStream.length,'entryCount');NotificationCenter.postNotification(new IWNotification('SetPage','id8',{pageIndex:0}));});}
function layoutMediaGrid_id8(range)
{createMediaStream_id8().load('http://www.theeducationcenter.org/pages',function(imageStream)
{if(range==null)
{range=new IWRange(0,imageStream.length);}
IWLayoutPhotoGrid('id8',new IWPhotoGridLayout(6,new IWSize(92,92),new IWSize(92,32),new IWSize(116,139),27,27,0,new IWSize(10,10)),new IWPhotoFrame([IWCreateImage('slideshow_files/Headlines_01.png'),IWCreateImage('slideshow_files/Headlines_02.png'),IWCreateImage('slideshow_files/Headlines_03.png'),IWCreateImage('slideshow_files/Headlines_06.png'),IWCreateImage('slideshow_files/Headlines_09.png'),IWCreateImage('slideshow_files/Headlines_08.png'),IWCreateImage('slideshow_files/Headlines_07.png'),IWCreateImage('slideshow_files/Headlines_04.png')],null,0,1.000000,-3.000000,-3.000000,-3.000000,-3.000000,2.000000,2.000000,2.000000,2.000000,4.000000,4.000000,4.000000,4.000000,null,null,null,0.100000),imageStream,range,null,null,1.000000,{backgroundColor:'rgb(0, 0, 0)',reflectionHeight:100,reflectionOffset:2,captionHeight:100,fullScreen:0,transitionIndex:2},'Media/slideshow.html','widget1','widget2','widget3')});}
function relayoutMediaGrid_id8(notification)
{var userInfo=notification.userInfo();var range=userInfo['range'];layoutMediaGrid_id8(range);}
setTransparentGifURL('Media/transparent.gif');function applyEffects()
{var registry=IWCreateEffectRegistry();registry.registerEffects({stroke_0:new IWEmptyStroke()});registry.applyEffects();}
function hostedOnDM()
{return false;}
function onPageLoad()
{IWRegisterNamedImage('comment overlay','Media/Photo-Overlay-Comment.png')
IWRegisterNamedImage('movie overlay','Media/Photo-Overlay-Movie.png')
loadMozillaCSS('slideshow_files/slideshowMoz.css')
adjustLineHeightIfTooBig('id1');adjustFontSizeIfTooBig('id1');adjustLineHeightIfTooBig('id2');adjustFontSizeIfTooBig('id2');adjustLineHeightIfTooBig('id3');adjustFontSizeIfTooBig('id3');detectBrowser();adjustLineHeightIfTooBig('id4');adjustFontSizeIfTooBig('id4');adjustLineHeightIfTooBig('id5');adjustFontSizeIfTooBig('id5');adjustLineHeightIfTooBig('id6');adjustFontSizeIfTooBig('id6');adjustLineHeightIfTooBig('id7');adjustFontSizeIfTooBig('id7');NotificationCenter.addObserver(null,relayoutMediaGrid_id8,'RangeChanged','id8')
adjustLineHeightIfTooBig('id9');adjustFontSizeIfTooBig('id9');adjustLineHeightIfTooBig('id10');adjustFontSizeIfTooBig('id10');adjustLineHeightIfTooBig('id11');adjustFontSizeIfTooBig('id11');adjustLineHeightIfTooBig('id12');adjustFontSizeIfTooBig('id12');adjustLineHeightIfTooBig('id13');adjustFontSizeIfTooBig('id13');adjustLineHeightIfTooBig('id14');adjustFontSizeIfTooBig('id14');adjustLineHeightIfTooBig('id15');adjustFontSizeIfTooBig('id15');adjustLineHeightIfTooBig('id16');adjustFontSizeIfTooBig('id16');fixAllIEPNGs('Media/transparent.gif');fixupAllIEPNGBGs();Widget.onload();applyEffects()
initializeMediaStream_id8()}
function onPageUnload()
{Widget.onunload();}
