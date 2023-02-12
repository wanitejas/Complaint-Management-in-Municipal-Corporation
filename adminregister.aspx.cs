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


public partial class adminregister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
         
        if (txtpwd.Text == txtcnmpwd.Text)
        {
            string SqlCmd = null, cng = null;
            cng = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MCP_NEW.mdf;Integrated Security=True;User Instance=True";
            SqlCmd = "Insert INTO adminregister(Username,Password,Firstname,Lastname,Email,Phoneno,Location)Values('" + txtuser.Text + "','" + txtpwd.Text + "','" + txtfname.Text + "','" + txtlname.Text + "','" + txtEmail.Text + "','" + txtphone.Text + "','" + txtlocation.Text + "')";
            SqlConnection ccc = new SqlConnection(cng);
            SqlCommand Cmd = new SqlCommand(SqlCmd, ccc);
            int x = 0;
            try
            {
                ccc.Open();
                x = Cmd.ExecuteNonQuery();
                Label1.Text = "YOUR DATA SAVED" + x.ToString();
               // Response.Redirect("citizen_login.aspx");

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
    }
}