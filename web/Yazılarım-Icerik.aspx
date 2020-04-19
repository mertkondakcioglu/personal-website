<%@ Page Title="" Language="C#" MasterPageFile="~/MP_Ana.master" AutoEventWireup="true"
    CodeFile="Yazılarım-Icerik.aspx.cs" Inherits="Icerik" %>

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
        <asp:Repeater runat="server" ID="rptIcerik">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <h1>
                    <asp:Label runat="server" ID="lblBaslik" Text='<%#Eval("Baslik") %>' /></h1>
                <asp:Label runat="server" ID="lblOzet" Text='<%#Eval("Ozet") %>' />
                <br />
                <asp:Label runat="server">Etiketler:</asp:Label>
                <asp:HyperLink runat="server" ID="lblEtiket" Text='<%#Eval("Etiketler") %>'></asp:HyperLink>
                <br />
                <span style="float: right;">
                    <asp:HyperLink runat="server" ID="lblKategori" Text='<%#Eval("KategoriLink") %>'
                        NavigateUrl='<%#string.Format("Yazılarım-Kategori.aspx?Id={0}",Eval("KategoriId")) %>'></asp:HyperLink>
                    -
                    <asp:Label runat="server" ID="lblKayit" Text='<%#Eval("kayitTarihi") %>'></asp:Label>
                </span>
                <br />
                <hr class="pasif" noshade="noshade" size="1"></hr>
                <br />
                <asp:Literal runat="server" ID="ltlIcerik" Text='<%#Eval("Icerikler") %>'></asp:Literal>
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
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
        <br />
        <h3>
            Bu kategorideki diğer yazılar</h3>
        <asp:Repeater runat="server" ID="rptDigerYazilar">
            <HeaderTemplate>
                <ul class="sidemenulink">
            </HeaderTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
            <ItemTemplate>
                <li><a runat="server" style="font-weight: bold;" id="hlYazi" href='<%#string.Format("Yazılarım-Icerik.aspx?Id={0}",Eval("Id")) %>'>
                    <%#Eval("Baslik") %></a> </li>
            </ItemTemplate>
        </asp:Repeater>
        <h3>
            Son eklenenler</h3>
        <asp:Repeater runat="server" ID="rptSonYazilar">
            <HeaderTemplate>
                <ul class="sidemenulink">
            </HeaderTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
            <ItemTemplate>
                <li><a runat="server" style="font-weight: bold;" href='<%#string.Format("Yazılarım-Icerik.aspx?Id={0}",Eval("Id")) %>'>
                    <%#Eval("Baslik") %>
                </a></li>
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
