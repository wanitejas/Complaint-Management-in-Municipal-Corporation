<%@ Page Title="" Language="C#" MasterPageFile="~/Citizen/Citizen_Master.master" AutoEventWireup="true" CodeFile="citizen_Complaints_frm.aspx.cs" Inherits="Complaints_frm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
    
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
   
}

td, th {
    border: 1px solid #808080;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />

<center><h1>Complaint form</h1><table border="0">
<tr><td>NAME:</td><td class="style1">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>
<tr><td>Email:</td><td class="style1">
    <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox></td></tr>
<tr><td>Mobile No:</td><td class="style1">
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td></tr>
<tr><td>Address:</td><td class="style1">
    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox></td></tr>
    <tr><td>Complaints:</td><td class="style1">
    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox></td></tr>
    <tr><td colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button1" runat="server" Text="Send" Width="75px" onclick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text=".."></asp:Label>
        </td></tr>
</table></center>
<br />
</asp:Content>

