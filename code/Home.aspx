<%@ Page Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    .style3
    {
        text-decoration: none;
    }
    .style4
    {
        color: #000000;
    }
        .style7
        {
            color: #0066CC;
            font-weight: bold;
            font-size: large;
        }
        .style8
        {
            width: 70%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
    </asp:ScriptManagerProxy>
 <div style="height: 344px" >
    <asp:Panel ID="Panel2" runat="server" BackColor="White" Height="345px">
        <table class="style2">
            <tr>
                <td>
                    
                    
                    <p align="left" style="width: 655px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style4">&nbsp;</span><span class="style7"> <em>A</em></span><em><span 
                            class="style4">n auction is a process of </span></em>
                        <a class="style3" href="http://en.wikipedia.org/wiki/Trade" title="Trade">
                        <span class="style4"><em>buying and selling</em></span></a> <a class="style3" 
                            href="http://en.wikipedia.org/wiki/Good_(economics%2529" 
                            title="Good (economics)"><span class="style4"><em>goods</em></span></a><span 
                            class="style4"><em> or </em> </span><a class="style3" 
                            href="http://en.wikipedia.org/wiki/Service_(economics%2529" 
                            title="Service (economics)"><span class="style4"><em>services</em></span></a><span 
                            class="style4"><em> by offering them up for bid, taking bids, and then 
                        selling the item to the highest bidder. In </em> </span><a class="style3" 
                            href="http://en.wikipedia.org/wiki/Economic_theory" title="Economic theory">
                        <span class="style4"><em>economic theory</em></span></a><span class="style4"><em>, 
                        an auction may refer to any mechanism or set of trading rules for exchange.</em></span></p>
                    <table align="center" class="style8">
                        <tr>
                            <td>
                            
                                <asp:Image ID="Image1" runat="server" Height="80px" 
                                    ImageUrl="~/Images/auction1.jpg" Width="150px" />
                                <cc1:AnimationExtender ID="i1" runat ="server" TargetControlID ="Image1">
                                <Animations>
                                <OnLoad>
                                <Sequence>
                                <FadeOut Duration="1" Fps="20"></FadeOut>
                                <FadeIn Duration="1" Fps="20"></FadeIn>
                                </Sequence>
                                </OnLoad>
                                <OnClick>
                                <Sequence>
                                <FadeOut Duration="1" Fps="20"></FadeOut>
                                <FadeIn Duration="1" Fps="20"></FadeIn>
                                </Sequence>
                                </OnClick>
                                </Animations>
                                </cc1:AnimationExtender>
                            </td>
                            <td>
                                <asp:Image ID="Image2" runat="server" Height="80px" 
                                    ImageUrl="~/Images/auction2.jpg" Width="150px" />
                                <cc1:AnimationExtender ID="Image2_AnimationExtender" runat="server" 
                                    Enabled="True" TargetControlID="Image2">
                                    <Animations>
                                    <OnLoad>
                                <Sequence>
                                <FadeOut Duration="2" Fps="20"></FadeOut>
                                <FadeIn Duration="2" Fps="20"></FadeIn>
                                </Sequence>
                                </OnLoad>
                                <OnClick>
                                <Sequence>
                                <FadeOut Duration="1" Fps="20"></FadeOut>
                                <FadeIn Duration="1" Fps="20"></FadeIn>
                                </Sequence>
                                </OnClick>
                                </Animations>
                                </cc1:AnimationExtender>
                            </td>
                        </tr>
                    </table>
                    <p style="width: 655px">
                        <em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em><span class="style7"><em>T</em></span><em>here are 
                        several variations on the basic auction form, including time limits, minimum or 
                        maximum limits on bid prices, and special rules for determining the winning 
                        bidder(s) and sale price(s). Participants in an auction may or may not know the 
                        identities or actions of other participants. Depending on the auction, bidders 
                        may participate in person or remotely through a variety of means, including 
                        telephone and the internet. The seller usually pays a </em><a class="style3" 
                            href="http://en.wikipedia.org/wiki/Commission_(remuneration%2529" 
                            title="Commission (remuneration)"><span class="style4"><em>commission</em></span></a><em> 
                        to the auctioneer or auction company based on a percentage of the final sale 
                        price.</em></p>
                    
                    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <br />

</div>
</asp:Content>

