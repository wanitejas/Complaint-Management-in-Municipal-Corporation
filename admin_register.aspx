﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="admin_register.aspx.cs" Inherits="admin_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>OutPut Pasrameters Sample</title>
</head>
<body>
<form>  
<table align="center">
<tr>
<td></td>
<td align="right" >
</td>
<td align="center">
<b>Registration Form</b>
</td>
</tr>
<tr>
<td></td>
<td align="right" >
<asp:Label ID="lbluser" runat="server" Text="Username"></asp:Label>
</td>
<td>
    &nbsp;</td>
</tr>
<tr>
<td></td>
<td align="right" >
<asp:Label ID="lblpwd" runat="server" Text="Password"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td></td>
<td align="right" >
<asp:Label ID="lblcnfmpwd" runat="server" Text="Confirm Password"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtcnmpwd" runat="server" TextMode="Password"></asp:TextBox>
    </td>
</tr>
<tr>
<td></td>
<td align="right">
<asp:Label ID="lblfname" runat="server" Text="FirstName"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td></td>
<td align="right">
<asp:Label ID="lbllname" runat="server" Text="LastName"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td></td>
<td align="right">
<asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td></td>
<td align="right" >
<asp:Label ID="lblCnt" runat="server" Text="Phone No"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td></td>
<td align="right" >
<asp:Label ID="lbladd" runat="server" Text="Location"></asp:Label>
</td>
<td align="left">
<asp:TextBox ID="txtlocation" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td></td>
<td></td>
<td align="left" ><asp:Button ID="btnsubmit" runat="server" Text="Save"
onclick="btnsubmit_Click" />
<input type="reset" value="Reset" />
</td>
</tr>
<tr>
<td>&nbsp;&nbsp;</td>
<td>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td>
<td>
<span style= "color:Red; font-weight :bold"> <asp:Label ID="lblErrorMsg" runat="server"></asp:Label></span>
</td>
</tr>
</table>
</form>
</body>
</html>
</asp:Content>

