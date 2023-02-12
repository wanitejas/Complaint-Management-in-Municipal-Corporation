using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_admincomplaints : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string sql = null;
        //string connetionString = "Data Source=.;Initial Catalog=pubs;User ID=sa;Password=*****";
        string connetionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MCP_DB.mdf;Integrated Security=True;User Instance=True";
        sql = "select * from Complaints_tbl";
        SqlConnection connection = new SqlConnection(connetionString);
        connection.Open();
        SqlCommand command = new SqlCommand(sql, connection);
        adapter.SelectCommand = command;
        adapter.Fill(ds);
        adapter.Dispose();
        command.Dispose();
        connection.Close();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes["onmouseover"] = "this.style.backgroundColor='aquamarine';";
            e.Row.Attributes["onmouseout"] = "this.style.backgroundColor='white';";
            e.Row.ToolTip = "Click last column for selecting this row.";
        }
    }
    protected void OnSelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string cName = GridView1.SelectedRow.Cells[0].Text;
        string Email = GridView1.SelectedRow.Cells[1].Text;
        string messg = GridView1.SelectedRow.Cells[4].Text;
        name.Text = cName;
        email.Text =Email;
        msg.Text =  messg;
    }

    protected void send_msg_Click(object sender, EventArgs e)
    {
        string SqlCmd = null, cng = null;
        cng = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MCP_DB.mdf;Integrated Security=True;User Instance=True";
        SqlCmd = "Insert INTO comp_reply(C_EMAIL,C_Name,Reply)Values('" + email.Text + "','" + name.Text + "','" + repl_msg.Text + "')";
        SqlConnection ccc = new SqlConnection(cng);
        SqlCommand Cmd = new SqlCommand(SqlCmd, ccc);
        int x = 0;
        try
        {
            ccc.Open();
            x = Cmd.ExecuteNonQuery();
            msg0.Text = "Message sent successfully" + x.ToString();
        }
        catch (Exception eee)
        {
            msg0.Text = "Error-" + eee.Message;
        }
        finally
        {
            ccc.Close();
            msg0.Text = "";
            repl_msg.Text = "";
        }


    }
}