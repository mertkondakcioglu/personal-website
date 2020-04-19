<%@ Page Title="" Language="C#" MasterPageFile="~/MP_Ana.master" AutoEventWireup="true"
    CodeFile="Yazilarim.aspx.cs" Inherits="Yazilarim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_title" runat="Server">
    <title>Yazılarım | Devrim ALTINKURT</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_banner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">
    <div id="main">
        <h1>
            Yazılarım Kategorisindeki Yazılar</h1>
        <asp:Repeater runat="server" ID="rptKategoriler">
            <HeaderTemplate>
                <ul class="sidemenulink">
            </HeaderTemplate>
            <FooterTemplate>
                </ul></FooterTemplate>
            <ItemTemplate>
                <li><a href='<%#string.Format("Yazılarım-Kategori.aspx?Id={0}",Eval("Id")) %>'>
                    <%#Eval("Adi") %></a> <span class="pasif" style="font-size: Smaller;">
                        (<%#Eval("Adet") %>)</span> </li>
            </ItemTemplate>
        </asp:Repeater>
        <br />
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_rightbar" runat="Server">
    <div class="rightbar">
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
