using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string SqlCmd = null, cng = null;
        cng = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MCP_DB.mdf;Integrated Security=True;User Instance=True";
        SqlCmd = "Insert INTO adminlogin(Username,Password)Values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
        SqlConnection ccc = new SqlConnection(cng);
        SqlCommand Cmd = new SqlCommand(SqlCmd, ccc);
        int x = 0;
        try
        {
            ccc.Open();
            x = Cmd.ExecuteNonQuery();
        }
        catch (Exception eee)
        {
            Label1.Text = "Error-" + eee.Message;
        }
        finally
        {
            Session["CNAME"] = TextBox1.Text;
            ccc.Close();
        }

        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[""dbconnection"].ConnectionString);
        SqlCommand cmd = new SqlCommand("select * from adminregister where UserName =@username and Password=@password", ccc);

        cmd.Parameters.AddWithValue("@username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("http://localhost:13589/MCP/Admin/admin_index.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }
    }
}