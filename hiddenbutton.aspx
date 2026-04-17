<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hiddenbutton.aspx.cs" Inherits="Logins.hiddenbutton" %>

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
            <asp:Label ID="lblServerName" runat="server" Text="ServerName"></asp:Label>   
                </td>
        <td>
            <asp:TextBox ID="txtServer" runat="server" OnTextChanged="txtServer_TextChanged"></asp:TextBox>
        </td>  
    </tr>
                <tr>
    <td></td>
    <td>
        <asp:Button ID="btConnect" runat="server" Text="Connect" OnClick="btnConnect_Click" />
       
    </td>
</tr>
                </table>
        </div>
    </form>
</body>
</html>
