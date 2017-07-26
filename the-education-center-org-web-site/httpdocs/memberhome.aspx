<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/membermaster.master" AutoEventWireup="true" CodeFile="memberhome.aspx.cs" Inherits="memberhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	
		<script type="text/javascript" src="http://www.theeducationcenter.org/deploy/swfobject.js"></script>
		<script type="text/javascript">
			var flashvars = {};
			flashvars.settingsXML = "http://www.theeducationcenter.org/deploy/assets/xml/settings.xml";
			var params = {};
			params.menu = "false";
			params.quality = "best";
			params.scale = "noscale";
			params.salign = "tl";
			params.wmode = "transparent";
			params.allowfullscreen = "true";
			var attributes = {};
			attributes.align = "middle";
			swfobject.embedSWF("http://www.theeducationcenter.org/deploy/deploy.swf", "componentDiv", "1000", "400", "9.0.0", "http://www.theeducationcenter.org/deploy/expressInstall.swf", flashvars, params, attributes);
		</script>
		
		<style type="text/css" media="screen">
		  html, body, #containerA, #containerB { height:100%; }
		  body { margin:0; padding:0; display:block; background-color:#000000;}
		  
		  #space { height:10px; width:10px;}
		  #space { height:10px; width:10px;}
		  #holder{ padding: 0px 0px 0px 10px; }
		  #holder1{ width: 1000px; height: 400px; }
		</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content">
<img src="Images/welcome_banner.jpg" />

<div>
<div style="float: left; width: 550px;">
<img src="Images/whats_new.jpg" style="padding-top: 10px; padding-left: 10px;" /><br />
<p style="padding-left: 10px;">The mission of The Education Center is to help children and young adults succeed in school - as well as in life - through a unique, individualized life-coaching program.</p>
<img src="Images/featured_testimonials.jpg" style="padding-left: 10px;" /><br />
<p style="padding-left: 10px;"><i>"I was diagnosed with a learning disability when I was in junior high school.  The Education Center was a Godsend to me.  I was a teenager that needed a miracle, and I found one.  Today, I own a successful print shop in Downers Grove.  I also mentor other kids who attend the Center and need my help.  A new goal is that I am starting college at the age of 33!"</i><br /><br />-Jonathan</p>
</div>
<div style="float: right; width: 420px; padding-top: 10px; ">
<b style="font-size: 12pt;">Best Friend Benefit and Awards Dinner</b><br /><br />
This year's event will take place on Friday, November 18, 2011.  Please check back soon for more details.
</div>
<div class="clear"></div>
</div>
<div style="padding-left: 150px; padding-top: 20px;">
<script type="text/javascript"><!--
google_ad_client = "ca-pub-1020476035926530";
/* Watch &amp; Listen */
google_ad_slot = "9025136644";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
</div>

</div>
</asp:Content>

