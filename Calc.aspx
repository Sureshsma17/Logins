<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calc.aspx.cs" Inherits="Logins.WebForm2" %>

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
                        <asp:Label ID="lblNum1" runat="server" Text="Number1"></asp:Label>   
                    </td>
                    <td>
                        <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
                    </td>  
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblNum2" runat="server" Text="Number2"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblResult" runat="server" Text="Result"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtResult" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                        <asp:Button ID="btnSub" runat="server" Text="Subtract" OnClick="btnSub_Click" />
                        <asp:Button ID="btnMul" runat="server" Text="Multiply" OnClick="btnMul_Click" />
                        <asp:Button ID="btnDiv" runat="server" Text="Divide" OnClick="btnDiv_Click" />
                    </td>
                </tr>


            </table>
        </div>
    </form>
</body>
</html>
