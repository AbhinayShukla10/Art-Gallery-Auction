<%@ Page Title="" Language="C#" MasterPageFile="~/Member/Member.master" AutoEventWireup="true" CodeFile="myBiddings.aspx.cs" Inherits="myBiddings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        width: 80%;
    }
    .style6
    {
        font-size: x-large;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" BackColor="White">
    <br />
    <table align="center" class="style5">
        <tr>
            <td class="style6">
                My Bid Details......</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" Width="341px" AllowPaging="True" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="4"  
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <RowStyle BackColor="#E3EAEB" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="MemberId" HeaderText="MemberId" 
                            SortExpression="MemberId" />
                        <asp:BoundField DataField="GivenCost" HeaderText="GivenCost" 
                            SortExpression="GivenCost" />
                        <asp:BoundField DataField="BidDate" HeaderText="BidDate" 
                            SortExpression="BidDate" />
                        <asp:BoundField DataField="BidStatus" HeaderText="BidStatus" 
                            SortExpression="BidStatus" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AuctionConnectionString %>" 
                    SelectCommand="SELECT [MemberId], [GivenCost], [BidDate], [BidStatus] FROM [memberbids]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
</asp:Panel>
</asp:Content>

