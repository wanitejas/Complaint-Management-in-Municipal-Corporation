<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.master" AutoEventWireup="true" CodeFile="citizen_login.aspx.cs" Inherits="Citizen_citizen_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<title>Login Form</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  

<div>
<center>
<table>
<tr>
<td>
Username:
</td>
<td>
<asp:TextBox ID="txtUserName" runat="server"/>
<asp:RequiredFieldValidator ID="rfvUser" ErrorMessage="Please enter Username" ControlToValidate="txtUserName" runat="server" />
</td>
</tr>
<tr>
<td>
Password:
</td>
<td>
<asp:TextBox ID="txtPWD" runat="server" TextMode="Password"/>
<asp:RequiredFieldValidator ID="rfvPWD" runat="server" ControlToValidate="txtPWD" ErrorMessage="Please enter Password"/>
</td>
</tr>
<tr>
<td>
</td>
<td>
<asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />
    <asp:Label ID="Label1" runat="server" Text=".."></asp:Label>
    <p>Not logged in?You can register<a href="Citizen_registeration.aspx">here</a></p>
</td>
</tr>
</table>
</center>
</div>



</asp:Content>

