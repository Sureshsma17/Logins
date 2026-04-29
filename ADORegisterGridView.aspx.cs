using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Logins
{
    public partial class ADORegisterGridView : System.Web.UI.Page
    {
        private object txtLastname;
        private object txtConfirmPassword;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) 
            BindGridData();
        }

        private void BindGridData()
        {
            SqlConnection con = new SqlConnection("Data Source=SURESH\\MSSQLSERVER1;Initial Catalog=ADO;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from GridViewRegistration", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grdData.DataSource = ds;
            grdData.DataBind();
            con.Close();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SURESH\\MSSQLSERVER1;Initial Catalog=ADO;Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into GridViewRegistration Values('" + txtFirstname.Text + "','" + txtLast.Text + "' ,'" + txtPassword.Text + "'," +
                "'" + txtConfirm.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "','" + txtAge.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("Registration Succesful");
            con.Close();
            BindGridData();
        }

        protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdData.PageIndex = e.NewPageIndex;
            BindGridData();
        }

        protected void grdData_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdData.EditIndex = e.NewEditIndex;
            BindGridData();
        }

        protected void grdData_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdData.EditIndex = -1;
            BindGridData();
        }

        protected void grdData_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SURESH\\MSSQLSERVER1;Initial Catalog=ADO;Integrated Security=True");
            con.Open();
            GridViewRow grd = grdData.Rows[e.RowIndex];
            int UID = Convert.ToInt32(grdData.DataKeys[e.RowIndex].Value);
            string firstname = ((TextBox)grd.FindControl("txtFirstname")).Text;
            string lastname = ((TextBox)grd.FindControl("txtLastname")).Text;
            string password = ((TextBox)grd.FindControl("txtPassword")).Text;
            string confpassword = ((TextBox)grd.FindControl("txtConfirmPassword")).Text;
            string mobile = ((TextBox)grd.FindControl("txtMobile")).Text;
            string email = ((TextBox)grd.FindControl("txtEmail")).Text;
            string age = ((TextBox)grd.FindControl("txtAge")).Text;
            SqlCommand cmd = new SqlCommand("Update GridViewRegistration set Firstname=@firstname,Lastname=@lastname,Password=@password," +
                "ConfirmPassword=@confpassword,Mobile=@mobile,Email=@email,Age=@age where UID=@uid", con);
            cmd.Parameters.AddWithValue("@firstname", firstname);
            cmd.Parameters.AddWithValue("@lastname",lastname);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@confpassword", confpassword);
            cmd.Parameters.AddWithValue("@mobile", mobile);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@age", age);
            cmd.Parameters.AddWithValue("@uid", UID);
            cmd.ExecuteNonQuery();
            con.Close();
            BindGridData();
        }

        protected void grdData_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SURESH\\MSSQLSERVER1;Initial Catalog=ADO;Integrated Security=True");
            con.Open();
            GridViewRow grd = grdData.Rows[e.RowIndex];
            int UID = Convert.ToInt32(grdData.DataKeys[e.RowIndex].Value);
            SqlCommand cmd = new SqlCommand("Delete from GridViewRegistration where UID=@uid", con);
            cmd.Parameters.AddWithValue("@uid", UID);
            cmd.ExecuteNonQuery();
            con.Close();
            BindGridData();
        }
    }
}