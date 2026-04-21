using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Logins
{
    public partial class JobApllicationForm : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblResult.Text = "First Name : " + txtFirstName.Text + "<br>" +
                            "Last Name : " + txtLastName.Text + "<br>" +
                            "Date Of Birth : " + txtDateofBirth.Text + "<br>" + 
                            "Email : " + txtEmailId.Text + "<br>" +
                            "Contact Number : " + txtContactNumber.Text + "<br>" +
                            "Emailid : " + txtEmailId.Text + "<br>" +
                            "Address : " + txtAddress.Text + "<br>" +
                            //"SSC: " + txtSSC.Text + "<br>" +
                            "School Name : " + txtSchoolName.Text + "<br>" +
                            "Passed Year : " + txtPassedYear.Text + "<br>" +
                            "Percentage of Marks: " + txtPercentage.Text + "<br>" +
                            "Intermediate: " + lblIntermediate.Text + "<br>" +
                            "College Name : " + txtInterCollegeName.Text + "<br>" +
                            "Year of Passing : " + txtPassedYear1.Text + "<br>" +
                            "Percentage of Marks: " + txtPercentage1.Text + "<br>" +
                            "Graduation: " + lblGraduation.Text + "<br>" + "<br>" +
                            "College Name : " + txtCollegeName1.Text + "<br>" +
                            "University Name : " + txtUniversityName.Text + "<br>" +
                            "Year of Passing : " + txtPassedYear2.Text + "<br>" +
                            "Percentage of Marks: " + txtPercentage2.Text + "<br>" +
                            "Post Graduation: " + txtPostGrad.Text + "<br>" + "<br>" +
                            "College Name : " + txtPostGradCollegeName.Text + "<br>" +
                            "University Name : " + txtPostGradUniversityName.Text + "<br>" +
                            "Year of Passing : " + txtPassedYear3.Text + "<br>" +
                            "Percentage of Marks: " + txtPercentage3.Text + "<br>" +
                            "Operating System : " + txtOperatingSystems.Text + "<br>" +
                            "Programming Language : " + txtProgrammingLanguages.Text + "<br>" +
                            "Database : " + txtDatabase.Text + "<br>" +
                            "Networks : " + txtNetworks.Text + "<br>" +
                            "Other Skills : " + txtOtherSkills.Text;
                            



            lblgender.Visible = false;

        }

        protected void rbtnMale_CheckedChanged(object sender, EventArgs e)
        {
            string gender = lblgender.Text;
            if (rbtnMale.Checked)
            {
                lblgender.Text = "Male";
            }
            else if (rbtnFemale.Checked)
            {
                lblgender.Text = "Female";

            }
        }

        protected void ddlInter_SelectedIndexChanged(object sender, EventArgs e)
        {
            string inter = lblInter.Text;
            if (ddlInter.SelectedItem.Value == "Science")
            {
                lblInter.Text = "Science";
            }
            else if (ddlInter.SelectedItem.Value == "Commerce")
            {
                lblInter.Text = "Commerce";
            }
            else if (ddlInter.SelectedItem.Value == "Arts")
            {
                lblInter.Text = "Arts";
            }

        }

        protected void ddlGrad_SelectedIndexChanged(object sender, EventArgs e)
        {
            string grad = lblGrad.Text;
            if (ddlGrad.SelectedItem.Value == "BSc")
            {
                lblGrad.Text = "BSc";
            }
            else if (ddlGrad.SelectedItem.Value == "BCom")
            {
                lblGrad.Text = "BCom";
            }
            else if (ddlGrad.SelectedItem.Value == "BA")
            {
                lblGrad.Text = "BA";
            }

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

            lblResult.Text = " ";

        }
    }
}