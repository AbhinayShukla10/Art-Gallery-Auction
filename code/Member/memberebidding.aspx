<%@ Page Language="C#" MasterPageFile="~/Member/Member.master"AutoEventWireup="true" CodeFile="memberebidding.aspx.cs" Inherits="Admin_viewbids" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 70%;
        }
    .style4
    {
        width: 100%;
    }
        .style6
        {
            width: 666px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
    </asp:ScriptManagerProxy>
    <asp:Panel ID="Panel1" runat="server" BackColor="White">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style4">
                <tr>
                    <td bgcolor="#0099CC">
                        <b>Select Category </b>&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                            AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Text="select"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                    <asp:Panel ID="p2" runat ="server" >
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="4" ForeColor="#333333" GridLines="None" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged">
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="#EFF3FB" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Bidid" HeaderText="Bid ID" />
                                <asp:ImageField ControlStyle-Height="70" ControlStyle-Width="100" 
                                    DataImageUrlField="BidImage" HeaderText="Preview">
                                    <ControlStyle Height="70px" Width="100px" />
                                </asp:ImageField>
                                <asp:BoundField DataField="BidStartDate" HeaderText="Bid Start Date" />
                                <asp:BoundField DataField="BidCost" HeaderText="Cost" />
                                
                                
                                <asp:HyperLinkField HeaderText ="Click on the link to Bid"  DataNavigateUrlFields="BidId" DataNavigateUrlFormatString="GiveQt.aspx?BidId={0}" DataTextField="BidId"/>
                            </Columns>
                        </asp:GridView>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
    <table>
        <tr>
            <td class="style6">
                &nbsp;</td>
        </tr>
    </table>
        </asp:Panel>
    
   

    
</asp:Content>

