<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobApllicationForm.aspx.cs" Inherits="Logins.JobApllicationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td>
                        <h1>FRESHER JOB APLLICATION FORM</h1>
                    </td>
                    <td></td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <h2>Personal Details</h2>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lbFirstlName" runat="server" Text="FirstName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ForeColor="Red" ErrorMessage="Please Enter FirstName" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please Enter a valid First Name" ForeColor="Red" ValidationExpression="[A-Za-z]+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLastName" runat="server" Text="LastName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ForeColor="Red" ErrorMessage="Please Enter LastName" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please Enter a valid Last Name" ForeColor="Red" ValidationExpression="[A-Za-z]+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDateofBirth" runat="server" Text="DateofBirth" TextMode="Date"></asp:Label>
                    </td>
                    <td>

                        <asp:TextBox ID="txtDateofBirth" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDateofBirth" runat="server" ForeColor="Red" ErrorMessage="Please Enter Date of Birth" ControlToValidate="txtDateofBirth"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtDateofBirth" ErrorMessage="Please Enter a valid Date of Birth" ForeColor="Red" ValidationExpression="\d{2}/\d{2}/\d{4}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButton ID="rbtnMale" runat="server" Text="Male" GroupName="gender" OnCheckedChanged="rbtnMale_CheckedChanged" />
                        <asp:RadioButton ID="rbtnFemale" runat="server" Text="Female" GroupName="gender" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblContactNumber" runat="server" Text="Contact Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtContactNumber" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvContactNumber" runat="server" ForeColor="Red" ErrorMessage="Please Enter Contact Number" ControlToValidate="txtContactNumber"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtContactNumber" ErrorMessage="Please Enter a valid Contact number"
                            ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmailId" runat="server" Text="EmailId"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmailId" runat="server" ForeColor="Red" ErrorMessage="Please Enter Email Id" ControlToValidate="txtEmailId"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmailId" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ForeColor="Red" ErrorMessage="Please Enter Address" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
<%--                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtAddress" ErrorMessage="Please Enter a valid Address" ForeColor="Red" ValidationExpression="[A-Za-z0-9\s]+"></asp:RegularExpressionValidator>--%>
                    </td>
                </tr>
            </table>


            <table align="center">
                <tr>
                    <td>
                        <h2>Educational Details</h2>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <h4>SSC</h4>
                    </td>
                </tr>
            </table>
            <table align="center">
                <%--<tr>
                    <td>
                        <asp:Label ID="SSC" runat="server" Text="SSC"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSSC" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSSC" runat="server" ForeColor="Red" ErrorMessage="Please Enter SSC" ControlToValidate="txtSSC"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                --%>
                <tr>
                <td>
                    <asp:Label ID="lblSchoolName" runat="server" Text="School Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSchoolName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSchoolName" runat="server" ForeColor="Red" ErrorMessage="Please Enter School Name" ControlToValidate="txtSchoolName"></asp:RequiredFieldValidator>

                </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassedYear" runat="server" Text="Passed Year"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassedYear" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassedYear" runat="server" ForeColor="Red" ErrorMessage="Please Enter Passed Year" ControlToValidate="txtPassedYear"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPercentage" runat="server" Text="PercentageofMarks"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPercentage" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPercentage" runat="server" ForeColor="Red" ErrorMessage="Please Enter Percentage of Marks" ControlToValidate="txtPercentage"></asp:RequiredFieldValidator>
                    </td>
                </tr>

            </table>
            <table align="center">
                <tr>
                    <td>
                        <h4>INTERMEDIATE</h4>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblInter" runat="server" Text="Intermediate"></asp:Label>
                    </td>
                    <td>
                        <%--                        <asp:textbox id="txtinter" runat="server"></asp:textbox>--%>
                        <asp:DropDownList ID="ddlInter" runat="server" OnSelectedIndexChanged="ddlInter_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem>Courses</asp:ListItem>
                            <asp:ListItem>MPC</asp:ListItem>
                            <asp:ListItem>MEC</asp:ListItem>
                            <asp:ListItem>CEC</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvInter" runat="server" ForeColor="Red" ErrorMessage="Please Enter Intermediate" ControlToValidate="ddlInter"></asp:RequiredFieldValidator>


                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblInterCollegeName" runat="server" Text="College Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtInterCollegeName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInterCollegeName" runat="server" ForeColor="Red" ErrorMessage="Please Enter College Name" ControlToValidate="txtInterCollegeName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassedYear1" runat="server" Text="Year of Passing"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassedYear1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassedYear1" runat="server" ForeColor="Red" ErrorMessage="Please Enter Year of Passing" ControlToValidate="txtPassedYear1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPercentage1" runat="server" Text="Percentage of Marks"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPercentage1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPercentage1" runat="server" ForeColor="Red" ErrorMessage="Please Enter Percentage of Marks" ControlToValidate="txtPercentage1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <h4>GRADUATION</h4>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblGrad" runat="server" Text="Graduation"></asp:Label>
                    </td>
                    <td>
                        <%--                        <asp:TextBox ID="txtGrad" runat="server"></asp:TextBox>--%>
                        <asp:DropDownList ID="ddlGrad" runat="server" OnSelectedIndexChanged="ddlGrad_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem>Courses</asp:ListItem>
                            <asp:ListItem>B.TECH CSC</asp:ListItem>
                            <asp:ListItem>B.TECH IT</asp:ListItem>
                            <asp:ListItem>B.Com Computers</asp:ListItem>
                            <asp:ListItem>BCA</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvGrad" runat="server" ForeColor="Red" ErrorMessage="Please Enter Graduation" ControlToValidate="ddlGrad"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblGradCollegeName" runat="server" Text="College Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCollegeName1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvGradCollegeName" runat="server" ForeColor="Red" ErrorMessage="Please Enter College Name" ControlToValidate="txtCollegeName1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblUniversityName" runat="server" Text="University Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUniversityName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUniversityName" runat="server" ForeColor="Red" ErrorMessage="Please Enter University Name" ControlToValidate="txtUniversityName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassedYear2" runat="server" Text="Year of Passing"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassedYear2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassedYear2" runat="server" ForeColor="Red" ErrorMessage="Please Enter Year of Passing" ControlToValidate="txtPassedYear2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPercentage2" runat="server" Text="Percentage of Marks"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPercentage2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPercentage2" runat="server" ForeColor="Red" ErrorMessage="Please Enter Percentage of Marks" ControlToValidate="txtPercentage2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <h4>POST GRADUATION(if any)</h4>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblPostGrad" runat="server" Text="Post Graduation"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPostGrad" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPostGradCollegeName" runat="server" Text="College Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPostGradCollegeName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPostGradUniversityName" runat="server" Text="University Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPostGradUniversityName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassedYear3" runat="server" Text="Year of Passing"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassedYear3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPercentage3" runat="server" Text="Percentage of Marks"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPercentage3" runat="server"></asp:TextBox>
                    </td>
                </tr>

            </table>
            <table align="center">
                <tr>
                    <td>
                        <h2>SKILL SET</h2>
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblOperatingSystems" runat="server" Text="Operating Systems"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtOperatingSystems" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblProgrammingLanguages" runat="server" Text="Programming Languages"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProgrammingLanguages" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDatabase" runat="server" Text="Database"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDatabase" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblNetworks" runat="server" Text="Networks"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNetworks" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblOtherSkills" runat="server" Text="Other Skills"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtOtherSkills" runat="server"></asp:TextBox>
                    </td>


                </tr>
                <tr>
                    <td></td>
                    <td>

                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

                        <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />

                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                        <asp:Label ID="lblgender" runat="server" Text=" "></asp:Label>
                        <asp:Label ID="lblIntermediate" runat="server" Text=" "></asp:Label>
                        <asp:Label ID="lblGraduation" runat="server" Text=" "></asp:Label>


                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
