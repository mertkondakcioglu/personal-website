<%@ Page Title="" Language="C#" MasterPageFile="~/MP_Ana.master" AutoEventWireup="true"
    CodeFile="Hakkimda-Icerik.aspx.cs" Inherits="Hakkimda_Icerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_title" runat="Server">
    <title>Hakkımda |
        <asp:Repeater ID="rptTitleAd" runat="server">
            <headertemplate>
                </headertemplate>
            <itemtemplate>
                    <%#Eval("TitleAd") %>
                </itemtemplate>
            <footertemplate>
                </footertemplate>
        </asp:Repeater>
        | Devrim ALTINKURT </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_banner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">
    <div id="main">
        <asp:Repeater runat="server" ID="rptIcerik">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <asp:Literal runat="server" ID="ltrIcerik" Text='<%#Eval("Detay") %>'></asp:Literal>
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_rightbar" runat="Server">
    <div class="rightbar">
        <h3>
            <span>Hakkımda</span></h3>
        <ul class="sidemenulink">
            <asp:Repeater ID="rptHakkimdaİçerik" runat="server">
                <ItemTemplate>
                    <li>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#string.Format("Hakkimda-Icerik.aspx?Id={0}",Eval("ID")) %>'
                            Text='<%#Eval("hakkimdaicerik")%>' />
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
        <div style="padding: 3px">
            <h3>
            </h3>
        </div>
        <div style="text-align: center; padding-top: 10px;">
            <img src="/images/MCT.png" alt="MCT" style="border: 0px; padding-bottom: 10px;" />
            <br />
            <img src="/images/MCPD.png" alt="MCPD" style="border: 0px; padding-bottom: 10px;" />
            <br />
            <img src="/images/MCP.png" alt="MCP" style="border: 0px;" />
        </div>
        <h2>
            Linkler</h2>
        <ul class="sidemenulink">
            <asp:Repeater runat="server" ID="rptSideMenu">
                <ItemTemplate>
                    <li id="liSideMenu"><a id="A1" target="_blank" runat="server" href='<%#Eval("url") %>'>
                        <%#Eval("linkAd") %>
                    </a></li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
        <br />
    </div>
</asp:Content>
