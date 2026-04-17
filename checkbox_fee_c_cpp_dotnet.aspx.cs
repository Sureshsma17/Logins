using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Logins
{
    public partial class checkbox_fee_c_cpp_dotnet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ChkC_CheckedChanged(object sender, EventArgs e)
        {
            int total = 0;
            if (ChkC.Checked)
            {
                total += 3000;
            }
            if (ChkCPP.Checked)
            {
                total += 5000;
            }
            if (ChkDotNet.Checked)
            {
                total += 10000;
            }
            txtResult.Text =  total.ToString();

        }

       
    }
}