using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Logins
{
    public partial class Cascading : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCountry.Items.Add("--Select Country--");
                ddlCountry.Items.Add("USA");
                ddlCountry.Items.Add("India");
                ddlCountry.Items.Add("UK");
            }

        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlState.Items.Clear();
            if (ddlCountry.SelectedItem.Text == "USA")
            {
                ddlState.Items.Add("--Select State--");
                ddlState.Items.Add("California");
                ddlState.Items.Add("Florida");
                ddlState.Items.Add("New York");
            }
            else if (ddlCountry.SelectedItem.Text == "India")
            {
                ddlState.Items.Add("--Select State--");
                ddlState.Items.Add("Maharashtra");
                ddlState.Items.Add("Gujarat");
                ddlState.Items.Add("Rajasthan");
                ddlState.Items.Add("Telangana");
            }
            else if (ddlCountry.SelectedItem.Text == "UK")
            {
                ddlState.Items.Add("--Select State--");
                ddlState.Items.Add("England");
                ddlState.Items.Add("Scotland");
                ddlState.Items.Add("Wales");


            }
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCity.Items.Clear();
            if (ddlState.SelectedItem.Text == "California")
            {
                ddlCity.Items.Add("--Select City--");
                ddlCity.Items.Add("Los Angeles");
                ddlCity.Items.Add("San Francisco");
                ddlCity.Items.Add("San Diego");
            }
            else if(ddlState.SelectedItem.Text == "Florida")
            {
                ddlCity.Items.Add("--Select City--");
                ddlCity.Items.Add("Miami");
                ddlCity.Items.Add("Orlando");
                ddlCity.Items.Add("Tampa");
            }
            else if (ddlState.SelectedItem.Text == "New York")
            {
                ddlCity.Items.Add("--Select City--");
                ddlCity.Items.Add("New York City");
                ddlCity.Items.Add("Buffalo");
                ddlCity.Items.Add("Rochester");
            }
             else if (ddlState.SelectedItem.Text == "Maharashtra")
            {
                ddlCity.Items.Add("--Select City--");
                ddlCity.Items.Add("Mumbai");
                ddlCity.Items.Add("Pune");
                ddlCity.Items.Add("Nagpur");
            }
             else if (ddlState.SelectedItem.Text == "Gujarat")
            {
                ddlCity.Items.Add("--Select City--");
                ddlCity.Items.Add("Ahmedabad");
                ddlCity.Items.Add("Surat");
                ddlCity.Items.Add("Vadodara");
            }
             else if (ddlState.SelectedItem.Text == "Rajasthan")
            {
                ddlCity.Items.Add("--Select City--");
                ddlCity.Items.Add("Jaipur");
                ddlCity.Items.Add("Jodhpur");
                ddlCity.Items.Add("Udaipur");
            }
             else if (ddlState.SelectedItem.Text == "Telangana")
            {
                ddlCity.Items.Add("--Select City--");
                ddlCity.Items.Add("Hyderabad");
                ddlCity.Items.Add("Warangal");
                ddlCity.Items.Add("Nizamabad");
             }
             else if (ddlState.SelectedItem.Text == "England")
            {
                ddlCity.Items.Add("--Select City--");
                ddlCity.Items.Add("London");
                ddlCity.Items.Add("Manchester");
                ddlCity.Items.Add("Birmingham");
            }
             else if (ddlState.SelectedItem.Text == "Scotland")
            {
                ddlCity.Items.Add("--Select City--");
                ddlCity.Items.Add("Edinburgh");
                ddlCity.Items.Add("Glasgow");
                ddlCity.Items.Add("Aberdeen");
            }
             else if (ddlState.SelectedItem.Text == "Wales")
            {
                ddlCity.Items.Add("--Select City--");
                ddlCity.Items.Add("Cardiff");
                ddlCity.Items.Add("Swansea");
                ddlCity.Items.Add("Newport");
            }
        }
    }
}