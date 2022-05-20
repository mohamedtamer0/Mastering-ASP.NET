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
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("BooksPage.aspx");
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            OleDbConnection f = new OleDbConnection(ConfigurationManager.ConnectionStrings["Name"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand("insert into [Books]([BookName], [BookAuth], [BookDate], [BookInDate], [BookPrice], [Reciver]) values('" + Name.Text + "', '" + Auth.Text + "', '" + Date.Text + "', '" + InDate.Text + "', '" + Price.Text + "', '" + Receiver.SelectedItem + "')", f);
            f.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("BooksPage.aspx");
            f.Close();
        }
    }
}  