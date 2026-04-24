using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Logins
{
    public partial class ADOLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SURESH\\MSSQLSERVER1;Initial Catalog=ADO;Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into ADOLogin values('"+ txtUsername.Text +"','" + txtPassword.Text +"')",con);
            cmd.ExecuteNonQuery();
            Response.Write("Login Succesful");
            con.Close();


        }
    }
}