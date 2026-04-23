using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Logins
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ClickCount"]==null)
            {
                Session["ClickCount"] = 0;
            }
            lblCount.Text= "Click Count " + Session["ClickCount"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Count = (int)Session["ClickCount"];
            Count++;
            Session["ClickCount"] = Count;
            lblCount.Text = "Click Count " + Session["ClickCount"].ToString();

        }
    }
}