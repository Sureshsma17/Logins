<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkbox_fee_c_cpp_dotnet.aspx.cs" Inherits="Logins.checkbox_fee_c_cpp_dotnet" %>

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
                        <asp:CheckBox ID="ChkC" runat="server" Text="C(3000)" AutoPostBack="true" OnCheckedChanged="ChkC_CheckedChanged"  />

                    </td>
                  </tr>
                    <tr>
                        <td>
                        <asp:CheckBox ID="ChkCPP" runat="server" Text="CPP(5000)" AutoPostBack="true" OnCheckedChanged="ChkC_CheckedChanged"  />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:CheckBox ID="ChkDotNet" runat="server" Text="DotNet(10000)" AutoPostBack="true" OnCheckedChanged="ChkC_CheckedChanged"  />
                        </td>
                   </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltotal" runat="server" Text="Total"> </asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtResult" runat="server" Enabled="false"> </asp:TextBox>
                    </td>
                </tr>
                
                    
            </table>
        </div>
    </form>
</body>
</html>
















