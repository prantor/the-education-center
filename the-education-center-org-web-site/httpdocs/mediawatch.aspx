<%@ Page Language="C#" MasterPageFile="~/MasterPages/membermaster.master" AutoEventWireup="true" CodeFile="mediawatch.aspx.cs" Inherits="mediawatch" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content" style="min-height: 600px;">

<div style="padding-left: 20px; padding-top: 10px;">
    <h1><asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></h1>
    <p><asp:Label ID="lblDesc" runat="server" Text=""></asp:Label></p>
    </div>
<div style="background-color: #000000; text-align: center; margin-top: 20px;">
<div style="margin-left: 175px;">
    <asp:Label ID="lblMovie" runat="server" Text=""></asp:Label>
    </div>
    
   
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

