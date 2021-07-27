<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ShowMembers.aspx.cs" Inherits="Admin_ShowMembers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 95%;
            border-style: solid;
            border-width: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" BackColor="White">
        <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        </asp:ScriptManagerProxy>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" GridLines="Vertical" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="MemberName" HeaderText="Name" />
                <asp:BoundField DataField ="UserName" HeaderText ="UserID" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="Date Of Birth" />
                <asp:BoundField DataField="Email" HeaderText="Mail Id" />
                <asp:BoundField DataField="Mobile" HeaderText="Contact No." />
                <asp:BoundField DataField="Designation" HeaderText="Designation" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
                <asp:TemplateField HeaderText ="Active/Deactive">
                <ItemTemplate >
                <asp:DropDownList ID="d1" runat ="server" >
                <asp:ListItem Text ="A"></asp:ListItem>
                <asp:ListItem Text ="D"></asp:ListItem>
                </asp:DropDownList>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Link" SelectText="Change" 
                    ShowSelectButton="true" />
            </Columns>
        </asp:GridView>
        <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>--%>
            
                <table align="center" class="style5">
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
          <%--  </ContentTemplate>
        </asp:UpdatePanel>--%>
    <br />
        <br />
    </asp:Panel>
</asp:Content>

