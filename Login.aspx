<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><table border="0">
<tr><td>User ID</td><td class="style1">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>
<tr><td>PASSWORD</td><td class="style1">
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ></asp:TextBox></td></tr>
    <tr><td colspan="2" class="style1">
       <asp:Button 
            ID="Button1" runat="server" Text="Login" Width="75px" onclick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text=".."></asp:Label>
        </td></tr>
</table></center>
<br />
    

</asp:Content>

