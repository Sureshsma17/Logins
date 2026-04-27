using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Logins
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SURESH\\MSSQLSERVER1;Initial Catalog=ADO;Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Registration Values('" + txtFirstname.Text + "','" + txtLast.Text + "' ,'" + txtPassword.Text + "'," +
                "'" + txtConfirm.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "','" + txtAge.Text + "')",con);
            cmd.ExecuteNonQuery();
            Response.Write("Registration Succesful");
            con.Close();
        }
    }
}