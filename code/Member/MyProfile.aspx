<%@ Page Language="C#" MasterPageFile="~/Member/Member.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="Member_MyProfile" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 90%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" BackColor="White">
        <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        </asp:ScriptManagerProxy>
        <br />
        <table align="center" class="style5">
            <tr>
                <td>
                    Member Id</td>
                <td>
                    <asp:TextBox ID="txt_mid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Date Of Birth</td>
                <td>
                    <asp:TextBox ID="txt_dob" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="txt_dob_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txt_dob">
                    </cc1:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td>
                    EMail ID</td>
                <td>
                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    &nbsp;Ex: abc@xyz.com</td>
            </tr>
            <tr>
                <td>
                    Contact</td>
                <td>
                    <asp:TextBox ID="txt_contact" runat="server"></asp:TextBox>
                    <cc1:MaskedEditExtender ID="txt_contact_MaskedEditExtender" runat="server" 
                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                        CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                        CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                        Mask="9{10}" MaskType="Number" TargetControlID="txt_contact">
                    </cc1:MaskedEditExtender>
                </td>
            </tr>
            <tr>
                <td>
                    Designation</td>
                <td>
                    <asp:TextBox ID="txt_desig" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    </asp:Panel>
</asp:Content>

