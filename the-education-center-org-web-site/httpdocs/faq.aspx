<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
<script type="text/javascript" language="JavaScript"> 
<!-- Copyright 2006,2007 Bontrager Connection, LLC
// http://bontragerconnection.com/ and http://www.willmaster.com/
// Version: July 28, 2007
var cX = 0; var cY = 0; var rX = 0; var rY = 0;
function UpdateCursorPosition(e){ cX = e.pageX; cY = e.pageY;}
function UpdateCursorPositionDocAll(e){ cX = event.clientX; cY = event.clientY;}
if(document.all) { document.onmousemove = UpdateCursorPositionDocAll; }
else { document.onmousemove = UpdateCursorPosition; }
function AssignPosition(d) {
if(self.pageYOffset) {
	rX = self.pageXOffset;
	rY = self.pageYOffset;
	}
else if(document.documentElement && document.documentElement.scrollTop) {
	rX = document.documentElement.scrollLeft;
	rY = document.documentElement.scrollTop;
	}
else if(document.body) {
	rX = document.body.scrollLeft;
	rY = document.body.scrollTop;
	}
if(document.all) {
	cX += rX; 
	cY += rY;
	}
d.style.left = (cX+10) + "px";
d.style.top = (cY+10) + "px";
}
function HideContent(d) {
if(d.length < 1) { return; }
document.getElementById(d).style.display = "none";
}
function ShowContent(d) {
if(d.length < 1) { return; }
var dd = document.getElementById(d);
AssignPosition(dd);
dd.style.display = "block";
}
function ReverseContentDisplay(d) {
if(d.length < 1) { return; }
var dd = document.getElementById(d);
AssignPosition(dd);
if(dd.style.display == "none") { dd.style.display = "block"; }
else { dd.style.display = "none"; }
}
//-->
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content">
<div class="contentleft2" style="width: 300px;">
<img src="Images/creating_their_future.jpg" /><br />
<p style="font-size: 10pt;">We help kids open the doors they want opened with professionally administerd programs that <strong>offer respect and realism. </strong></p>
<img src="Images/faq_title.jpg" />

<p style="font-size: 10pt;"></p>

</div>
<div class="contentright2" style="margin-top: -2px; width: 600px;">
<img src="Images/faq_image.jpg" usemap="#faqmap" border="0" />
<map id="faqmap" name="faqmap">
<area shape="rect" alt="" title="" coords="42,70,336,90" href="faq1.aspx" target="" />
<area shape="rect" alt="" title="" coords="45,105,458,131" href="faq2.aspx" target="" />
<area shape="rect" alt="" title="" coords="43,141,512,169" href="faq3.aspx" target="" />
<area shape="rect" alt="" title="" coords="42,178,480,206" href="faq4.aspx" target="" />
<area shape="rect" alt="" title="" coords="45,212,480,237" href="faq5.aspx" target="" />
<area shape="rect" alt="" title="" coords="40,246,268,274" href="faq6.aspx" target="" />
<area shape="rect" alt="" title="" coords="43,283,346,311" href="faq7.aspx" target="" />
<area shape="rect" alt="" title="" coords="43,319,385,346" href="faq8.aspx" target="" />
<area shape="rect" alt="" title="" coords="41,354,455,386" href="faq9.aspx" target="" />
<area shape="rect" alt="" title="" coords="42,393,418,421" href="faq10.aspx" target="" />
<area shape="rect" alt="" title="" coords="42,426,322,453" href="faq11.aspx" target="" />
<area shape="rect" alt="" title="" coords="40,461,386,493" href="faq12.aspx" target="" />
<area shape="rect" alt="" title="" coords="40,497,434,534" href="faq13.aspx" target="" />
<area shape="rect" alt="" title="" coords="43,537,544,562" href="faq14.aspx" target="" />
<area shape="rect" alt="" title="" coords="41,570,512,619" href="faq15.aspx" target="" />
<area shape="rect" alt="" title="" coords="42,624,531,654" href="faq16.aspx" target="" />
<area shape="rect" alt="" title="" coords="38,662,514,692" href="faq17.aspx" target="" />
</map>
<br /><br />

</div>
<div class="clear"></div>
</div>
</asp:Content>

