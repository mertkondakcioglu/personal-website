<%@ Page Title="" Language="C#" MasterPageFile="~/MP_Ana.master" AutoEventWireup="true"
    CodeFile="SiteAraclari.aspx.cs" Inherits="SiteAraclari" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_title" runat="Server">
    <title>Site Araçları | Devrim ALTINKURT</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_banner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">
    <div id="main">
        <h1 id="ctl00_h1">
            Site Araçları</h1>
        <table cellpadding="5" cellspacing="0" style="width: 100%;">
            <tr>
                <td>
                    <a href="http://www.daltinkurt.com/PageRank-Checker.aspx" target="_blank"><b>Google
                        PageRank Checker</b></a>
                    <br />
                    <br />
                    <a href="http://www.daltinkurt.com/PageRank-Checker.aspx" target="_blank">
                        <img src="/images/google_pagerank.jpg" alt="Google PageRank Checker" style="border: 0px;" />
                    </a>
                </td>
                <td class="sag">
                    <a href="http://www.daltinkurt.com/Connection-Strings.aspx" target="_blank"><b>Connection
                        Strings</b></a>
                    <br />
                    <br />
                    <a href="http://www.daltinkurt.com/Connection-Strings.aspx" target="_blank">
                        <img src="/images/connectionstrings.jpg" alt="Connection Strings" style="border: 0px;" />
                    </a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="http://www.daltinkurt.com/Whois.aspx" target="_blank"><b>Whois Sorgusu</b></a>
                    <br />
                    <br />
                    <a href="http://www.daltinkurt.com/Whois.aspx" target="_blank">
                        <img src="/images/whois.jpg" alt="Whois sorgusu" style="border: 0px;" />
                    </a>
                </td>
                <td class="sag">
                    <a href="http://www.daltinkurt.com/Ping.aspx" target="_blank"><b>Ping</b></a>
                    <br />
                    <br />
                    <a href="http://www.daltinkurt.com/Ping.aspx" target="_blank">
                        <img src="/images/ping.png" alt="Ping" style="border: 0px;" />
                    </a>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_rightbar" runat="Server">
    <div class="rightbar">
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
