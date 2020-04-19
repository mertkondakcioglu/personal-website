<%@ Page Title="" Language="C#" MasterPageFile="~/MP_Ana.master" AutoEventWireup="true"
    CodeFile="Yazılarım-Kategori.aspx.cs" Inherits="Kategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_title" runat="Server">
    <title>
        <asp:Repeater ID="rptTitleAd" runat="server">
            <headertemplate>
                </headertemplate>
            <itemtemplate>
                    <%#Eval("TitleAd") %>
                </itemtemplate>
            <footertemplate>
                </footertemplate>
        </asp:Repeater>
        | Yazılarım | Devrim ALTINKURT </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_banner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">
    <div id="main">
        <h1>
            <asp:Repeater ID="rptKategoriAd" runat="server">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("KategoriAd") %>' />
                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:Repeater>
            Kategorisindeki Yazılar</h1>
        <asp:Repeater runat="server" ID="rptYazilar">
            <HeaderTemplate>
            </HeaderTemplate>
            <FooterTemplate>
            </FooterTemplate>
            <ItemTemplate>
                <h3>
                    <br />
                    <img src="/images/point.gif" alt="" style="vertical-align: middle; border-style: none;
                        border: 0px;" />
                    <a runat="server" style="font-weight: bold;" id="hlYazi" href='<%#string.Format("Yazılarım-Icerik.aspx?Id={0}",Eval("Id")) %>'>
                        <asp:Label runat="server" ID="lblBaslik" Text='<%#Eval("Baslik") %>' />
                    </a>
                </h3>
                <div style="padding: 5px 0px 5px 0px;">
                    <asp:Label runat="server" ID="lblOzet" Text='<%#Eval("Ozet") %>' />
                </div>
                <div class="pasif" style="width: 100%; clear: both; font-size: smaller; text-align: right;">
                    <span style="padding-left: 3px;">
                        <asp:HyperLink runat="server" ID="lblKategori" Text='<%#Eval("KategoriLink") %>'
                            NavigateUrl='<%#string.Format("Yazılarım-Kategori.aspx?Id={0}",Eval("KategoriID")) %>'></asp:HyperLink>
                        -
                        <asp:Label runat="server" ID="lblKayit" Text='<%#Eval("kayitTarihi") %>'></asp:Label>
                    </span>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_rightbar" runat="Server">
    <div class="rightbar">
        <h3>
            Yazılarım</h3>
        <asp:Repeater runat="server" ID="rptKategoriler">
            <HeaderTemplate>
                <ul class="sidemenulink">
            </HeaderTemplate>
            <FooterTemplate>
                </ul></FooterTemplate>
            <ItemTemplate>
                <li><a href='<%#string.Format("Yazılarım-Kategori.aspx?Id={0}",Eval("Id")) %>'>
                    <%#Eval("Adi") %></a> <span class="pasif" style="font-size: Smaller;">(<%#Eval("Adet") %>)</span>
                </li>
            </ItemTemplate>
        </asp:Repeater>
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
