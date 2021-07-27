<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Approvebids.aspx.cs" Inherits="Admin_viewbids" Title="Untitled Page" %>

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
    <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="320px">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate >
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
                            GridLines="None" AutoGenerateColumns ="false" 
                            
                            style="top: 229px; left: 41px; position: absolute; height: 162px; width: 405px" 
                            AllowPaging="True" >
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="#EFF3FB" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <AlternatingRowStyle BackColor="White" />
                            <Columns >
                            <asp:BoundField HeaderText="Bid ID" DataField ="BidId" />
                            <asp:BoundField HeaderText="Member ID" DataField ="MemberId" />
                            <asp:BoundField HeaderText ="Bid Value" DataField ="GivenCost" />
                            <asp:BoundField HeaderText ="Bid Date" DataField ="BidDate" />
                            <asp:BoundField HeaderText ="Approve Bid" DataField ="BidStatus" />
                            </Columns>
                        </asp:GridView>
                        
                    </td>
                </tr>
            </table>
       
        <asp:Button ID="Button2" runat="server" BorderColor="#CC0099" Enabled="False" 
                Font-Bold="True" onclick="Button2_Click" 
            style="top: 233px; left: 469px; position: absolute; height: 26px; width: 142px" 
            Text="Click to Approve" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
        
        <br />
        <asp:Label ID="Label2" runat="server" 
            style="position :absolute; top: 281px; left: 481px;" Text="Member Id"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" DataTextField ="MemberId"
            style="position :absolute; top: 309px; left: 538px;" AutoPostBack="True">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" 
            style="top: 360px; left: 521px; position: absolute; width: 56px" 
            Text="Approve" BorderColor="#CC0099" onclick="Button1_Click" />
            </ContentTemplate>
                        </asp:UpdatePanel>
    </asp:Panel>
</asp:Content>

