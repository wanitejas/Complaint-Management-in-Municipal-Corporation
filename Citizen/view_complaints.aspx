<%@ Page Title="" Language="C#" MasterPageFile="~/Citizen/Citizen_Master.master" AutoEventWireup="true" CodeFile="view_complaints.aspx.cs" Inherits="Citizen_view_complaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        INBOX
    </h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
        
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
 				<Columns>
					<asp:BoundField DataField="C_Name" HeaderText="Citizen Name" />
					<asp:BoundField DataField="C_EMAIL" HeaderText="MY ID" />
					<asp:BoundField DataField="Reply" HeaderText="Messsage" />
					               
				</Columns>
             
       </asp:GridView>
       <br />
</asp:Content>

