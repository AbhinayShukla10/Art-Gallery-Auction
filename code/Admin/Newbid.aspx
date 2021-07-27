<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Newbid.aspx.cs" Inherits="Admin_Newbid" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 558px;
            height: 413px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
                    </asp:ScriptManagerProxy>
    <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="419px">
    <br />
    
        <table class="style4" align="center" border="2" cellpadding="2" cellspacing="2" 
            bgcolor="#CCCCCC">
            </tr __designer:mapid="bf">
            <tr>
                 <td class="style5" bgcolor="White">
                     <br />
                     <asp:Panel ID="Panel2" runat="server" Height="111px">
                         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                             <ContentTemplate>
                                 <b>Add New Catagory<br />
                                 <asp:TextBox ID="txt_cat" runat="server" ValidationGroup="v2"></asp:TextBox>
                                 &nbsp;&nbsp;&nbsp;
                                 <asp:ImageButton ID="ImageButton2" runat="server" Height="41px" 
                                     ImageUrl="~/Images/add-image.jpg" onclick="ImageButton2_Click" 
                                     ValidationGroup="v2" Width="62px" />
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                                 <br />
                                 <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                 <br />
                                 <br />
                                 <br />
                             </ContentTemplate>
                         </asp:UpdatePanel>
                         <br />
                         <br />
                         <br />
                     </asp:Panel>
                </td>
                
               
                <td align="left">
                    &nbsp;
                            <asp:Panel ID="pan2" runat="server">
                                <table class="style4">
                                    <tr>
                                        <td>
                                            Bid ID*</td>
                                        <td>
                                            <asp:TextBox ID="txt_bid" runat="server" ValidationGroup="v1"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Catagory*</td>
                                        <td>
                                            <asp:DropDownList ID="ddl_cat" runat="server" ValidationGroup="v1">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Bid Image*</td>
                                        <td>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Description</td>
                                        <td>
                                            <asp:TextBox ID="txt_desc" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Bid Cost*</td>
                                        <td>
                                            <asp:TextBox ID="txt_cost" runat="server" ValidationGroup="v1"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Start Date*</td>
                                        <td>
                                            <asp:TextBox ID="txt_sdate" runat="server" ValidationGroup="v1"></asp:TextBox>
                                            <cc1:CalendarExtender ID="txt_sdate_CalendarExtender" runat="server" 
                                                Enabled="True" TargetControlID="txt_sdate">
                                            </cc1:CalendarExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            End Date*</td>
                                        <td>
                                            <asp:TextBox ID="txt_edate" runat="server" ValidationGroup="v1"></asp:TextBox>
                                            <cc1:CalendarExtender ID="txt_edate_CalendarExtender" runat="server" 
                                                Enabled="True" TargetControlID="txt_edate">
                                            </cc1:CalendarExtender>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Statatus*</td>
                                        <td>
                                            <asp:DropDownList ID="ddl_status" runat="server">
                                                <asp:ListItem>Active</asp:ListItem>
                                                <asp:ListItem>DeActive</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <br />
                                            <asp:ImageButton ID="ImageButton3" runat="server" Height="22px" 
                                                ImageUrl="~/Images/insertbutton.JPG" onclick="ImageButton3_Click" />
                                            <cc1:AnimationExtender ID="ImageButton3_AnimationExtender" runat="server" 
                                                Enabled="True" TargetControlID="ImageButton3">
                                                <Animations>
                                                <OnClick>
                                                <Sequence>
                                                <FadeOut Duration="1" Fps="20"></FadeOut>
                                                <FadeIn Duration="1" Fps="20"></FadeIn>
                                                </Sequence>
                                                </OnClick>
                                                </Animations>
                                            </cc1:AnimationExtender>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Insert 
                                            New Bid</asp:LinkButton>
                                            <br />
                                            <br />
                                            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br />
    </asp:Panel>
</asp:Content>

