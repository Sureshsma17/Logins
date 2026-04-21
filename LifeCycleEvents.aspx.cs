using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Logins
{
    public partial class LifeCycleEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = "Hi , I am in Page Load Event";
            btnsubmit.Visible = false;
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            lblmesg.Text = "Hi , I am in Page PreInit Event";
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            Label1.Text = "Hi , I am in Page Init Event";
        }

        protected void Page_InitComplete(object sender, EventArgs e)
        {
            Label2.Text = "Hi , I am in Page InitComplete Event";
        }

        protected void Page_PageComplete(object sender, EventArgs e)
        {
            Label4.Text = "Hi , I am in Page PageComplete Event";
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (rbtTelugu.Checked)
            {
                lblTelugu.Text = "   "  + " Selected Language is Telugu";

            }
            else if (rbtHindi.Checked)
            {
                lblHindi.Text = "   Selected Language is Hindi";
            }
            else if (rbtEnglish.Checked)
            {
                lblEnglish.Text = "  Selected Language is English";
            }

        }
        protected void txtusername_TextChanged(object sender, EventArgs e)
        {
            if(txtusername.Text.Length>3)
            {
               btnsubmit.Visible = true;
            }

        }

        protected void rbtTelugu_CheckedChanged(object sender, EventArgs e)
        {
            if(rbtTelugu.Checked)
            {
                lblTelugu.Text = "Selected Language is Telugu";
            }
        }

        protected void rbtHindi_CheckedChanged(object sender, EventArgs e)
        {
            if(rbtHindi.Checked)
            {
                lblHindi.Text = "Selected Language is Hindi";
            }
        }

        protected void rbtEnglish_CheckedChanged(object sender, EventArgs e)
        {
            if(rbtEnglish.Checked)
            {
                lblEnglish.Text = "Selected Language is English";
            }
        }

        protected void chkChess_CheckedChanged(object sender, EventArgs e)
        {
            if(chkChess.Checked)
            {
                lblChess.Text = "You have selected Chess";
            }
        }

        protected void chkTennis_CheckedChanged(object sender, EventArgs e)
        {
            if(chkTennis.Checked)
            {
                lblTennis.Text = "You have selected Tennis";
            }
        }

        protected void chkCricket_CheckedChanged(object sender, EventArgs e)
        {
            if(chkCricket.Checked)
            {
                lblCricket.Text = "You have selected Cricket";
            }
        }
    }
}