<%@ Page Title="" Language="C#" MasterPageFile="~/MP_Ana.master" AutoEventWireup="true"
    CodeFile="Arama.aspx.cs" Inherits="Arama" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_title" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_banner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">
    <div id="main">
    <h1>
        Arama Sonuçları</h1>
        <asp:Repeater runat="server" ID="rptYazilar">
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
</asp:Content>
