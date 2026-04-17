<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logins.aspx.cs" Inherits="Logins.Logins" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblQuestion" runat="server" Text="What is Capital of India?"></asp:Label><br />
            <asp:RadioButton ID="rbtDelhi" runat="server" GroupName="Capital" Text="Delhi" AutoPostBack="true" OnCheckedChanged="rbtDelhi_CheckedChanged" /><br />
            <asp:RadioButton ID="rbtMumbai" runat="server" GroupName="Capital" Text="Mumbai" AutoPostBack="true" OnCheckedChanged="rbtMumbai_CheckedChanged"  /><br />
            <asp:RadioButton ID="rbtChennai" runat="server" GroupName="Capital" Text="Chennai" AutoPostBack="true" OnCheckedChanged="rbtChennai_CheckedChanged"  /><br />
            <asp:RadioButton ID="rbtKolkata" runat="server" GroupName="Capital" Text="Kolkata" AutoPostBack="true" OnCheckedChanged="rbtKolkata_CheckedChanged" /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><br />  
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>