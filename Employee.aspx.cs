using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Logins
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lbl_EmpID.Text = "Employee ID: " + txtEmpID.Text;
            lbl_EmpName.Text = "Employee Name: " + txtEmpName.Text;
            lbl_EmpSalary.Text = "Employee Salary: " + txtEmpSalary.Text;
        }
            
    }
}