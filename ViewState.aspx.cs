using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Logins
{
    public partial class ViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ViewState["Clickscount"] = 0;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //int Count = 0;
            //Count++;
            //Label1.Text = "Click Count " + Count ;
            int Count = (int)ViewState["Clickscount"];
            Count++;
            ViewState["Clickscount"] = Count;
            Label1.Text = "Click Count " + Count ;
        }
    }
}