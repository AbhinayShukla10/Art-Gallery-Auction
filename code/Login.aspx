<%@ Page Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
    {
        width: 92%;
            height: 26px;
        }
        .style3
        {
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style2">
    <tr>
        
        <td>
            <asp:Panel ID="Panel2" runat="server" BackColor="White">
                <table align="center" class="style3">
                    <tr>
                        <td align="left">
                            User Name</td>
                        <td>
                            <asp:TextBox ID="txt_uname" runat="server" Wrap="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Password</td>
                        <td>
                            <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="51px" 
                                ImageUrl="~/Images/login_button_01.jpg" onclick="ImageButton1_Click" 
                                Width="106px" />
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Register as</td>
                        <td>
                            <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click1">New Member</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <cc1:DropShadowExtender ID="Panel2_DropShadowExtender" runat="server" 
                Enabled="True" Opacity="0.3" Rounded="True" TargetControlID="Panel2">
            </cc1:DropShadowExtender>
        </td>
    </tr>
</table>
</asp:Content>

