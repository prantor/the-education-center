<%@ Page Language="C#" MasterPageFile="~/MasterPages/main.master" AutoEventWireup="true" CodeFile="signupsuccess.aspx.cs" Inherits="signupsuccess" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content">
<div style="background-image: url(Images/member_signup_successful.jpg); min-height: 600px; background-repeat: no-repeat; margin-top:20px;">
<table style="margin-top: 170px; margin-left: 580px;" cellpadding="5">
<tr><td>&nbsp;</td><td><asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"></asp:Label></td></tr>
<tr><td>Username: </td><td><asp:TextBox ID="txtUsername" runat="server" style="width: 307px;"></asp:TextBox></td></tr>
<tr><td>Password: </td><td><asp:TextBox ID="txtPassword" runat="server" style="width: 307px;" TextMode="Password"></asp:TextBox></td></tr>
<tr><td>&nbsp;</td><td style="text-align: right;"><asp:LinkButton ID="lnkLogin" 
        runat="server" onclick="lnkLogin_Click"><img src="Images/sign_in_button.jpg" border="0" /></asp:LinkButton></td></tr>
</table>

</div>

</div>
</asp:Content>

