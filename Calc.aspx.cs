using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Logins
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        public int num1, num2,result;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int num1 = Convert.ToInt32(txtNum1.Text);
            int num2 = Convert.ToInt32(txtNum2.Text);
            int result = num1 + num2;
            txtResult.Text = result.ToString();
        }
        protected void btnSub_Click(object sender, EventArgs e)
        {
            int num1 = Convert.ToInt32(txtNum1.Text);
            int num2 = Convert.ToInt32(txtNum2.Text);
            int result = num1 - num2;
            txtResult.Text = result.ToString();
        }
        protected void btnMul_Click(object sender, EventArgs e)
        {
            int num1 = Convert.ToInt32(txtNum1.Text);
            int num2 = Convert.ToInt32(txtNum2.Text);
            int result = num1 * num2;
            txtResult.Text = result.ToString();
        }
        protected void btnDiv_Click(object sender, EventArgs e)
        {
            int num1 = Convert.ToInt32(txtNum1.Text);
            int num2 = Convert.ToInt32(txtNum2.Text);
            if (num2 != 0)
            {
                int result = num1 / num2;
                txtResult.Text = result.ToString();
            }
            else
            {
                txtResult.Text = "Cannot divide by zero";
            }

        }
    }
}