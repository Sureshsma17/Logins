<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cascading.aspx.cs" Inherits="Logins.Cascading" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
            </asp:DropDownList>

            <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
            </asp:DropDownList>

            <asp:DropDownList ID="ddlCity" runat="server">
            </asp:DropDownList>

        </div>
    </form>
</body>
</html>
