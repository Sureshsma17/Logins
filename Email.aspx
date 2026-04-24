<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="Logins.Email" %>

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
                        Send Mail using asp.net
                    </td>
                </tr>
            </table>
            <table align="center" style="height: 436px; width: 535px">
                <tr>
                    <td>
                        <asp:Label ID="lblFrom" runat="server" Text="From"></asp:Label>     
                    </td>
                    <td>
                        <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Subject" runat="server" Text="Subject"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTo" runat="server" Text="To"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblBody" runat="server" Text="Body"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Height="237px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="lblSend" runat="server" Text="Send"></asp:Button>
                    </td>
                     
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
