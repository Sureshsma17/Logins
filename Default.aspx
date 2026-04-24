<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="YourApp.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Send Mail</title>
    <style>
        .mail-table { width: 400px; border: 1px dotted #ccc; font-family: Arial; }
        .label-cell { width: 100px; padding: 5px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="mail-table">
            <tr>
                <td colspan="2" style="text-align:center">
                    <h3>Send Mail using asp.net</h3>
                </td>
            </tr>
            <tr>
                <td class="label-cell">From</td>
                <td><asp:TextBox ID="txtFrom" runat="server" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="label-cell">Subject</td>
                <td><asp:TextBox ID="txtSubject" runat="server" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="label-cell">To</td>
                <td><asp:TextBox ID="txtTo" runat="server" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="label-cell" style="vertical-align:top">Body</td>
                <td>
                    <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Rows="10" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>