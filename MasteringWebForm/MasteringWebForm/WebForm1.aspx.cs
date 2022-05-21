using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasteringWebForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int s = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                TextBox1.Text = "0";
            }
            Button1.Click += delegate
            {
                if (Session["click"] != null)
                {
                    s = (int)Session["click"] + 1;
                }

                TextBox1.Text = s.ToString();

                Session["click"] = s;
            };

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("Button Click");
        }
    }
}