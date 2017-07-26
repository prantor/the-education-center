<%@ Page Language="C#" MasterPageFile="~/MasterPages/membermaster.master" AutoEventWireup="true" CodeFile="careerforum.aspx.cs" Inherits="careerforum" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content" style="min-height: 400px; padding-bottom: 20px;">
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
<div style="margin-top: 20px; padding-left: 20px; padding-right: 20px;">
<h1>Professionals Corner</h1>
<table style="margin-left: 125px;">
<tr><td style="font-size: 18px;">Select an industry: </td><td><asp:DropDownList ID="ddlCategory" 
        runat="server" Font-Size="18px" Width="476px"></asp:DropDownList></td><td>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click"><img src="Images/display.png" border="0" /></asp:LinkButton></td></tr>


</table>


    <asp:Label ID="lblMedia" runat="server" Text=""></asp:Label>
</div>
</div>
</asp:Content>

