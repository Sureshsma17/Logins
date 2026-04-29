<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADORegisterGridView.aspx.cs" Inherits="Logins.ADORegisterGridView" %>

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
                        <h2>Registration GridView</h2>
                    </td>
                    <td></td>
                </tr>
            </table>
            <table align="center">
                <tr>

                    <td>
                        <asp:Label ID="lblFirst" runat="server" Text="Firstname"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvFirst" runat="server" ForeColor="Red" ErrorMessage="Plesr Enter Firstname" 
                            ControlToValidate="txtFirstname"></asp:RequiredFieldValidator>--%>
                        

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLast" runat="server" Text="Lastname"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvLast" runat="server" ForeColor="Red" ErrorMessage="Please Enter Lastname" 
                            ControlToValidate="txtLast"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvPassword" runat="server" ForeColor="Red" ErrorMessage="Please Enter Password" 
                            ControlToValidate="txtPassword"></asp:RequiredFieldValidator>--%>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblConfirm" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ForeColor="Red" ErrorMessage="Please Enter Confirm Password" 
                            ControlToValidate="txtConfirm"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirm" 
                            ErrorMessage="Password and Confirm Password must be same" ForeColor="Red"></asp:CompareValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Valid Mobile Number" 
                            ControlToValidate="txtMobile" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMobile" 
                            ErrorMessage="Please Enter a valid mobile number"
                            ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                            ErrorMessage="Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                            ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                        </asp:RegularExpressionValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblage" runat="server" Text="Age"></asp:Label>
                    </td>


                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Please Enter Age" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Please Enter Valid Age" 
                            ForeColor="Red" MinimumValue="18" MaximumValue="100" Type="Integer"></asp:RangeValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>


            </table>
            <table align="center">
                <tr>
                    <td>
                        <asp:GridView ID="grdData" runat="server"
                            AutoGenerateColumns="false"
                            DataKeyNames="UID"
                            PageSize="5"
                            AllowPaging="true" 
                            OnPageIndexChanging="grdData_PageIndexChanging" 
                            OnRowEditing="grdData_RowEditing" OnRowCancelingEdit="grdData_RowCancelingEdit" OnRowDeleting="grdData_RowDeleting" OnRowUpdating="grdData_RowUpdating" >
                            <Columns>
                                <asp:TemplateField HeaderText="Firstname">
                                    <ItemTemplate>
                                        <asp:Label ID="lblFirstname" runat="server" Text='<%#Bind("Firstname") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtFirstname" runat="server" Text='<%#Bind("Firstname") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Lastname">
                                    <ItemTemplate>
                                        <asp:Label ID="lblLastname" runat="server" Text='<%#Bind("Lastname") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtLastname" runat="server" Text='<%#Bind("Lastname") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Password">
                                    <ItemTemplate>
                                        <asp:Label ID="lblPassword" runat="server" Text='<%#Bind("Password") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtPassword" runat="server" Text='<%#Bind("Password") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="ConfirmPassword">
                                    <ItemTemplate>
                                        <asp:Label ID="lblConfirmPassword" runat="server" Text='<%#Bind("ConfirmPassword") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtConfirmPassword" runat="server" Text='<%#Bind("ConfirmPassword") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Mobile">
                                    <ItemTemplate>
                                        <asp:Label ID="lblMobile" runat="server" Text='<%#Bind("Mobile") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtMobile" runat="server" Text='<%#Bind("Mobile") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Email">
                                    <ItemTemplate>
                                        <asp:Label ID="lblEmail" runat="server" Text='<%#Bind("Email") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtEmail" runat="server" Text='<%#Bind("Email") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Age">
                                    <ItemTemplate>
                                        <asp:Label ID="lblAge" runat="server" Text='<%#Bind("Age") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtAge" runat="server" Text='<%#Bind("Age") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:Button ID="btnsEdit" runat="server" Text="Edit" CommandName="Edit" />
                                        <asp:Button ID="btnsDelete" runat="server" Text="Delete" CommandName="Delete" />
                                    </ItemTemplate>

                                    <EditItemTemplate>
                                        <asp:Button ID="btnsUpdate" runat="server" Text="Update" CommandName="Update" />
                                        <asp:Button ID="btnsCancel" runat="server" Text="Cancel" CommandName="Cancel" />
                                    </EditItemTemplate>
                                </asp:TemplateField>


                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
