<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="viewbids.aspx.cs" Inherits="Admin_viewbids" Title="Untitled Page" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                            GridLines="None" AutoGenerateColumns ="false" AllowPaging="True" 
                            onpageindexchanging="GridView1_PageIndexChanging" PageSize="4" >
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="#EFF3FB" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <AlternatingRowStyle BackColor="White" />
                            <Columns >
                            <asp:BoundField HeaderText ="Bid ID" DataField ="BidId" />
                            <asp:ImageField HeaderText ="Image" DataImageUrlField ="BidImage" ControlStyle-Height ="70" ControlStyle-Width ="100">
                                <ControlStyle Height="70px" Width="100px" />
                                </asp:ImageField> 
                            <asp:BoundField HeaderText ="Description" DataField ="BidInfo" />
                            <asp:BoundField HeaderText="Bid Value" DataField ="BidCost" />
                            <asp:BoundField HeaderText ="Last date" DataField ="BidEndDate" />
                            <asp:BoundField HeaderText="Bid Deadline" DataField ="BidState" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
        <table align="center" class="style3">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </asp:Panel>
</asp:Content>

