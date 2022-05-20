using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace WebForm1
{
    public partial class RegestrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reg_Click(object sender, EventArgs e)
        {
            OleDbConnection f = new OleDbConnection(ConfigurationManager.ConnectionStrings["Name"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand("insert into [Users]([UserName], [Password], [ConfirmPassword], [Email]) Values('"+user.Text+ "','" + password.Text + "','" + conpass.Text + "','" + email.Text + "')", f);
            f.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("HomePage.aspx");
            f.Close();
        }
    }
}