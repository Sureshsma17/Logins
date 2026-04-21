<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LifeCycleEvents.aspx.cs" Inherits="Logins.LifeCycleEvents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblmesg" runat="server" ></asp:Label><br />
            <asp:Label ID="Label1" runat="server"></asp:Label><br />
            <asp:Label ID="Label2" runat="server"></asp:Label><br />
            <asp:Label ID="Label3" runat="server"></asp:Label><br />
            <asp:Label ID="Label4" runat="server"></asp:Label><br />
            <br />

            <asp:TextBox ID="txtusername" runat="server" OnTextChanged="txtusername_TextChanged"></asp:TextBox>
            <asp:Button ID="btnsubmit" runat="server" Text="Submit"  /> <br />

            <asp:RadioButton ID="rbtTelugu" runat="server" GroupName="Language" AutoPostBack="true" OnCheckedChanged="rbtTelugu_CheckedChanged" />Telugu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblTelugu" runat="server"></asp:Label><br />
            
            <asp:RadioButton ID="rbtHindi" runat="server" GroupName="Language" AutoPostBack="true" OnCheckedChanged="rbtHindi_CheckedChanged" />Hindi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblHindi" runat="server"></asp:Label><br />

            <asp:RadioButton ID="rbtEnglish" runat="server" GroupName="Language" AutoPostBack="true" OnCheckedChanged="rbtEnglish_CheckedChanged" />English&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblEnglish" runat="server"></asp:Label><br />

            <asp:CheckBox ID="chkChess" runat="server" AutoPostBack="true" OnCheckedChanged="chkChess_CheckedChanged" />Chess&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblChess" runat="server"></asp:Label><br />

            <asp:CheckBox ID="chkTennis" runat="server" AutoPostBack="true" OnCheckedChanged="chkTennis_CheckedChanged" />Tennis&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblTennis" runat="server"></asp:Label>&nbsp; <br />

            <asp:CheckBox ID="chkCricket" runat="server" AutoPostBack="true" OnCheckedChanged="chkCricket_CheckedChanged" />Cricket&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCricket"   runat="server"></asp:Label>&nbsp; <br />
        </div>
    </form>
</body>
</html>
