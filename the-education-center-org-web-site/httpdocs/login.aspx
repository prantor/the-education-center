<%@ Page Language="C#" MasterPageFile="~/MasterPages/main.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content" style="min-height: 548px;">
<div>
<div style="float: left;">
<div style="padding-top: 100px; padding-left: 75px;">
<img src="Images/login_title.jpg" />
<table style="margin-top: 5px;" cellpadding="5">
<tr><td>&nbsp;</td><td><asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"></asp:Label></td></tr>
<tr><td>Username: </td><td><asp:TextBox ID="txtUsername" runat="server" style="width: 307px;"></asp:TextBox></td></tr>
<tr><td>Password: </td><td><asp:TextBox ID="txtPassword" runat="server" style="width: 307px;" TextMode="Password"></asp:TextBox></td></tr>
<tr><td>&nbsp;</td><td style="text-align: right;"><asp:LinkButton ID="lnkLogin" 
        runat="server" onclick="lnkLogin_Click"><img src="Images/sign_in_button.jpg" border="0" /></asp:LinkButton></td></tr>
</table>
</div>
</div>
<div style="float: right;">
<img src="Images/login_right.jpg" />
</div>
</div>
</div>

</asp:Content>

