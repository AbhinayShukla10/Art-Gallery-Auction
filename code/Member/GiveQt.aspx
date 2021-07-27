<%@ Page Language="C#" MasterPageFile="~/Member/Member.master" AutoEventWireup="true" CodeFile="GiveQt.aspx.cs" Inherits="Member_GiveQt" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" BackColor="White" Height="270px">
    <br />
    <br />
        <table align="center" class="style5">
            <tr>
                <td>
                    <asp:Panel ID="Panel3" runat="server" BackColor="#666633" ScrollBars="Both">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" 
                            ForeColor="Red"></asp:Label>
                        <br />
                        <table align="center" border="2" class="style1" bgcolor="#999966">
                            <tr>
                                <td>
                                    BId ID</td>
                                <td>
                                    <asp:TextBox ID="txt_bid" runat="server" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Actual Cost</td>
                                <td>
                                    <asp:TextBox ID="txt_acost" runat="server" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    My Cost</td>
                                <td>
                                    <asp:TextBox ID="txt_mycost" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Bid Date</td>
                                <td>
                                    <asp:TextBox ID="txt_biddate" runat="server" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Height="26px" onclick="Button1_Click" 
                                        Text="Submit" />
                                </td>
                            </tr>
                        </table>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                        <br />
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
    
    <cc1:DropShadowExtender ID="Panel2_DropShadowExtender" runat="server" 
        Enabled="True" Rounded="True" TargetControlID="Panel2">
    </cc1:DropShadowExtender>
    
</asp:Content>

