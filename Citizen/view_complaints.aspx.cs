using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Citizen_view_complaints : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string sql = null;
        string CNAME_session = Session["CNAME"].ToString();
        //string connetionString = "Data Source=.;Initial Catalog=pubs;User ID=sa;Password=*****";
        string connetionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MCP_DB.mdf;Integrated Security=True;User Instance=True";
        sql = "select * from comp_reply WHERE C_Name='"+CNAME_session+"'";
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
}