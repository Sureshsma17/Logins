<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Logins.Register" %>

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
                        <asp:Label ID="lblFirst" runat="server" Text="Firstname"></asp:Label>
                    </td>
                     
                    <td>
                        <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirst" runat="server" ForeColor="Red" ErrorMessage="Plesr Enter Firstname" ControlToValidate="txtFirstname">
                        </asp:RequiredFieldValidator>
                    
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLast" runat="server" Text="Lastname"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Lastname" 
                            ControlToValidate="txtLast" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password" 
                            ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblConfirm" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Confirm Password" 
                            ControlToValidate="txtConfirm" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValodator1" runat="server" ControlToValidate="txtConfirm" 
                            ControlToCompare="txtPassword" ErrorMessage="Password and Confirm Password should be same"
                            ForeColor="Red"></asp:CompareValidator>
                           
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Valid Mobile Number" ControlToValidate="txtMobile" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="txtEmail" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="Please Enter Valid Email" 
                            ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">

                        </asp:RegularExpressionValidator>  
                    </td>
                    </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit"  />
                    </td>
                    
                </tr>
                

            </table>
                "
        </div>
    </form>
</body>
</html>
