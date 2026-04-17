using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Logins
{
    public partial class hiddenbutton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btConnect.Visible = false;
        }
        protected void btnConnect_Click(object sender, EventArgs e)
        {
            lblServerName.Text = "ServerName ID: " + txtServer.Text;
        }

        protected void txtServer_TextChanged(object sender, EventArgs e)
        {
            if(txtServer.Text.Length>0)
            {
                btConnect.Visible = true;
            }
            
        }
    }
}