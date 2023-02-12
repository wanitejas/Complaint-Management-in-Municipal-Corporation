<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="admincomplaints.aspx.cs" Inherits="Admin_admincomplaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><h1>Complaint Details</h1>


    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
        OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged = "OnSelectedIndexChanged">
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
 				<Columns>
					<asp:BoundField DataField="CName" HeaderText="Citizen Name" />
					<asp:BoundField DataField="EMAIL" HeaderText="Mail ID" />
					<asp:BoundField DataField="Mobile_No" HeaderText="Mobile No" />
					<asp:BoundField DataField="Address" HeaderText="Address" />
					<asp:BoundField DataField="Complaints" HeaderText="Message" />
                    <asp:ButtonField Text="Responce" CommandName="Select" ItemStyle-Width="30"  />
				</Columns>
       </asp:GridView>
        <br />
        <asp:Panel ID="Panel1" runat="server">
        
        <table id="Table1">
        
            <tr><td>Citizen Name</td><td> <asp:Label ID="name" runat="server" Text=""></asp:Label></td></tr>
        <tr><td>Email ID</td><td> <asp:Label ID="email" runat="server"></asp:Label></td></tr>
         <tr><td>Message</td><td> <asp:Label ID="msg" runat="server"></asp:Label></td></tr>
        <tr><td>Reply</td><td>
              <asp:TextBox ID="repl_msg" runat="server" Height="78px" TextMode="MultiLine" 
                  Width="201px"></asp:TextBox> </td></tr>
         <tr><td colspan="2" align="center">  <asp:Button ID="send_msg" runat="server" 
                 Text="Send" onclick="send_msg_Click" />
             <br />
             </td></tr>
            </table>
            </asp:Panel>
        <asp:Label ID="msg0" runat="server"></asp:Label>
        <br />
        
        <br />
    </div>

  

    </center>
</asp:Content>

