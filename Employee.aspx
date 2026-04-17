<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Logins.WebForm1" %>

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
                       <h1>Employee Details</h1>     
                   </td>
               </tr>
            </table>

            <table aign="center">
                <tr>
                    <td>
                        <asp:Label ID="lblEmpID" runat="server" Text="EmployeeID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmpID" runat="server"> </asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmpName" runat="server" Text="EmployeeName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmpName" runat="server"> </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmpSalary" runat="server" Text="EmployeeSalary"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmpSalary" runat="server"> </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" /> 
                    </td>
                    
                </tr>

            </table>

            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lbl_EmpID" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_EmpName" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_EmpSalary" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>



        </div>
    </form>
</body>
</html>
