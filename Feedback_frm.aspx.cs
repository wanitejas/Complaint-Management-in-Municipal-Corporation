using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Feedback_frm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string SqlCmd = null, cng=null;
       cng = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MCP_DB.mdf;Integrated Security=True;User Instance=True";
       SqlCmd = "Insert INTO Feedback_dtls(FNmae,Email,Mobile,Address,Feedback)Values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
       SqlConnection ccc = new SqlConnection(cng);
        SqlCommand Cmd = new SqlCommand(SqlCmd, ccc);
        int x = 0;
        try
        {
            ccc.Open();
            x = Cmd.ExecuteNonQuery();
            Label1.Text = "Message sent successfully" + x.ToString();
            

        }
        catch (Exception eee)
        {
            Label1.Text = "Error-" + eee.Message;
        }
        finally
        {
            ccc.Close();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}