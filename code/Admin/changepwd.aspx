<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="changepwd.aspx.cs" Inherits="Admin_changepwd" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 90%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Panel2" runat="server" BackColor="White">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table align="center" class="style5">
                    <tr>
                        <td bgcolor="#006699">
                            <asp:Panel ID="Panel3" runat="server" BackColor="#99CCFF">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        Enter User Name&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        <br />
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server"  
                                            Text="Submit" onclick="Button1_Click2" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </asp:Panel>
                        </td>
                        <td>
                            <asp:Panel ID="Panel4" runat="server" BackColor="#99CCFF" Enabled="False">
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>
                                        <br />
                                        New&nbsp; Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        <br />
                                        Retype New Password&nbsp;
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Change" />
                                        &nbsp;
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
                <br />
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

