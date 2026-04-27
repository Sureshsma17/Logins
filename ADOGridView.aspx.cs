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
    public partial class ADOGridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindGridData();

        }
        private void BindGridData()
        {
            SqlConnection con = new SqlConnection("Data Source=SURESH\\MSSQLSERVER1;Initial Catalog=ADO;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from LOGIN_BINDGRID", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grdData.DataSource = ds;
            grdData.DataBind();
            con.Close();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SURESH\\MSSQLSERVER1;Initial Catalog=ADO;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into LOGIN_BINDGRID values('" + txtUsername.Text + "','" + txtPassword.Text + "')", con);

            cmd.ExecuteNonQuery();
            Response.Write("login details submitted Successfully");
            con.Close();
            BindGridData();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SURESH\\MSSQLSERVER1;Initial Catalog=ADO;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from LOGIN_BINDGRID where Username='" + txtUsername.Text + "'", con);
            cmd.ExecuteNonQuery();
            Response.Write("Login details deleted successfully");
            con.Close();
            BindGridData();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SURESH\\MSSQLSERVER1;Initial Catalog=ADO;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update LOGIN_BINDGRID set Password='" + txtPassword.Text + "' " +
                "where username='" + txtUsername.Text + "'", con);
            cmd.ExecuteNonQuery();
            Response.Write("Login details updated successfully");
            con.Close();
            BindGridData();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=SURESH\\MSSQLSERVER1;Initial Catalog=ADO;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from LOGIN_BINDGRID where Username LIKE '%" + txtUsername.Text + "%'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grdData.DataSource = ds;
            grdData.DataBind();
            con.Close();

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
            string username = ((TextBox)grd.FindControl("txtUsername")).Text;
            string password = ((TextBox)grd.FindControl("txtPassword")).Text;
            SqlCommand cmd = new SqlCommand("Update LOGIN_BINDGRID set Username=@username,Password=@password where UID=@uid", con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
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
            SqlCommand cmd = new SqlCommand("Delete from LOGIN_BINDGRID where UID=@uid", con);
            cmd.Parameters.AddWithValue("@uid", UID);
            cmd.ExecuteNonQuery();
            con.Close();
            BindGridData();
        }
    }
}