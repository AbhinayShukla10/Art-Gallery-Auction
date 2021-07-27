<%@ Page Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000080;
        }
        .style5
        {
            width: 80%;
        }
        .style6
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" BackColor="White">
        <span class="style2"><span class="style6">New Member 
        Registration&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="12pt" 
            onclick="LinkButton5_Click">Login</asp:LinkButton>
        </span><br />
        </span><b>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <table align="center" class="style5" border="2">
            <tr>
                <td>
                    <asp:Panel ID="Panel3" runat="server" BackColor="#99CCFF">
                        <b>
                        <table align="center" class="style5"  border="2" cellpadding="2" 
                            cellspacing="2">
                            <tr>
                                <td>
                                    Name*</td>
                                <td>
                                    <b>
                                    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                                    </b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    UserName*</td>
                                <td>
                                    <b>
                                    <asp:TextBox ID="txt_uname" runat="server"></asp:TextBox>
                                    </b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Password*</td>
                                <td>
                                    <b>
                                    <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
                                    <cc1:PasswordStrength ID="txt_pwd_PasswordStrength" runat="server" 
                                        Enabled="True" MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" 
                                        MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1" 
                                        PreferredPasswordLength="6" TargetControlID="txt_pwd">
                                    </cc1:PasswordStrength>
                                    </b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Retype Password*</td>
                                <td>
                                    <b>
                                    <asp:TextBox ID="txt_retypepwd" runat="server" TextMode="Password"></asp:TextBox>
                                    </b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Date of Birth</td>
                                <td>
                                    <b>
                                    <asp:TextBox ID="txt_dob" runat="server"></asp:TextBox>
                                    <cc1:CalendarExtender ID="txt_dob_CalendarExtender" runat="server" 
                                        Enabled="True" TargetControlID="txt_dob">
                                    </cc1:CalendarExtender>
                                    </b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    EMail*</td>
                                <td>
                                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Mobile*</td>
                                <td>
                                    <asp:TextBox ID="txt_mobile" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Designation</td>
                                <td>
                                    <b>
                                    <asp:TextBox ID="txt_designation" runat="server"></asp:TextBox>
                                    </b>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="23px" 
                                        ImageUrl="~/Images/register.jpg" Width="97px" 
                                        onclick="ImageButton1_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        </b>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <b>
        <br />
        </b>
    </asp:Panel>
</asp:Content>

