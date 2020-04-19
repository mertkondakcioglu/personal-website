<%@ Page Title="" Language="C#" MasterPageFile="~/MP_Ana.master" AutoEventWireup="true"
    CodeFile="Hakkimda.aspx.cs" Inherits="Hakkimda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_title" runat="Server">
    <title>Hakkımda | Devrim ALTINKURT</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_banner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">
    <div id="main">
        <h2>
            <span>Hakkımda</span></h2>
        <ul class="sidemenulink">
            <asp:Repeater ID="rptHakkimdaİçerik" runat="server">
                <ItemTemplate>
                    <li>
                        <asp:HyperLink runat="server" NavigateUrl='<%#string.Format("Hakkimda-Icerik.aspx?Id={0}",Eval("ID")) %>' Text='<%#Eval("hakkimdaicerik")%>' />
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_rightbar" runat="Server">
    <div class="rightbar">
        <div style="text-align: center;">
            <img src="/images/ankara_kugulupark_Haziran20.gif" alt="" style="border-style: none;" />
            <br />
        </div>
        <br />
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
