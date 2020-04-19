<%@ Page Title="" Language="C#" MasterPageFile="~/MP_Ana.master" AutoEventWireup="true"
    CodeFile="Soru-Cevap.aspx.cs" Inherits="Soru_Cevap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_title" runat="Server">
    <title>Soru / Cevap | Devrim ALTINKURT</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_banner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">
    <div id="main">
        <h1>
            Son Eklenenler</h1>
        <div>
            <div class="sayfalama">
                <span><a href="javascript:void(0);">1</a> .. <a href="javascript:void(0);">-10</a> ..
                    <a href="javascript:void(0);">18</a><a href="javascript:void(0);">19</a><a href="javascript:void(0);">20</a><a
                        href="javascript:void(0);">21</a><a href="javascript:void(0);">22</a><a class="secili">23</a></span>
            </div>
            <table cellspacing="0" border="0" style="width: 100%; border-collapse: collapse;">
                <tr>
                    <td>
                        <h2>
                            <a href="javascript:void(0);">Viewstate ile dizi değerleri saklama</a>
                        </h2>
                        <div>
                            <span style="float: right;">
                                <img src="/images/evet.gif" align="absmiddle" style="border-width: 0px;" />
                                <span style="font-size: Smaller; font-weight: bold;">0</span>
                                <img src="/images/hayir.gif" align="absmiddle" style="border-width: 0px;" />
                                <span style="font-size: Smaller; font-weight: bold;">0</span>
                                <div style="padding-bottom: 5px; padding-top: 5px;">
                                    <span style="font-size: Smaller;">21 defa okundu.</span>
                                </div>
                            </span>
                            <img src="/images/kategori.png" alt="Kategori" align="absmiddle" style="border-width: 0px;" />
                            <a href="javascript:void(0);" style="padding-right: 10px;">ASP.NET</a>
                            <img src="/images/yazar.png" alt="Yazar" align="absmiddle" style="border-width: 0px;" />
                            <span>Mesut GÜLEÇYÜZ</span>
                            <img src="/images/takvim.png" alt="Tarih" align="absmiddle" style="border-width: 0px;
                                padding-left: 10px;" />
                            <span style="padding-right: 10px;">09.02.2013</span>
                            <br />
                            <img src="/images/cevap.gif" alt="Tarih" align="absmiddle" style="border-width: 0px;
                                padding-right: 2px;" />
                            <span>Henüz cevaplanmadı.</span>
                        </div>
                        <br />
                    </td>
                </tr>
            </table>
            <div class="sayfalama">
                <span><a href="javascript:void(0);">1</a> .. <a href="javascript:void(0);">-10</a> ..
                    <a href="javascript:void(0);">18</a><a href="javascript:void(0);">19</a><a href="javascript:void(0);">20</a><a
                        href="javascript:void(0);">21</a><a href="javascript:void(0);">22</a><a class="secili">23</a></span>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_rightbar" runat="Server">
    <div class="rightbar">
        <h3>
            Soru Sor</h3>
        <img src="/images/soru.gif" alt="Yeni Mesaj" style="vertical-align: middle; border: 0px;" />
        <a href="javascript:void(0);"><b>Soru sor</b></a>
        <div>
            Yeni soru eklemek için tıklayınız.</div>
        <br />
        <h3>
            Soru Kategorileri</h3>
        <table cellspacing="0" border="0" style="width: 100%; border-collapse: collapse;">
            <tr>
                <td>
                    <img src="../images/point.gif" align="absmiddle" style="border-width: 0px;" />
                    <a href="javascript:void(0);">ASP.NET</a>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="../images/point.gif" align="absmiddle" style="border-width: 0px;" />
                    <a href="javascript:void(0);">C#</a>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="../images/point.gif" align="absmiddle" style="border-width: 0px;" />
                    <a href="javascript:void(0);">ADO.NET</a>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="../images/point.gif" align="absmiddle" style="border-width: 0px;" />
                    <a href="javascript:void(0);">Algoritma</a>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="../images/point.gif" align="absmiddle" style="border-width: 0px;" />
                    <a href="javascript:void(0);">Kitap Tavsiyeleri</a>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="../images/point.gif" align="absmiddle" style="border-width: 0px;" />
                    <a href="javascript:void(0);">Diğer</a>
                </td>
            </tr>
        </table>
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
