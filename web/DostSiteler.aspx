<%@ Page Title="" Language="C#" MasterPageFile="~/MP_Ana.master" AutoEventWireup="true"
    CodeFile="DostSiteler.aspx.cs" Inherits="DostSiteler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_title" runat="Server">
<title>Dost Siteler | Devrim ALTINKURT</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_banner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">
    <div id="main">
        <asp:Panel ID="pnlIcerik" runat="server">
            <h2>
                <span>Dost Siteler</span></h2>
            <ul class="sidemenulink">
                <asp:Repeater ID="rptDostSiteler" runat="server">
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink runat="server" NavigateUrl='<%#Eval("url") %>' Target="_blank" Text='<%#Eval("ad")%>' />
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </asp:Panel>
        <asp:Panel ID="pnlEkle" runat="server" Visible="false">
            <h3>
                <span>Dost Sitele Ekle</span></h3>
            Site Adı
            <br />
            <asp:TextBox runat="server" ID="txtAd"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txtAd" runat="server"
                ErrorMessage="!" Style="color: Red; display: inline;"></asp:RequiredFieldValidator>
            <br />
            Site Adresi
            <br />
            <asp:TextBox runat="server" ID="txturl"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="txturl" runat="server" Style="color: Red;
                display: inline;" Display="Dynamic" ErrorMessage="Geçersiz url" ValidationExpression="([\w-]+\.)+[\w-]+(/[\w- ;,./?%&=]*)?"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txturl"
                runat="server" ErrorMessage="!" Style="color: Red; display: inline;"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button runat="server" ID="btnSiteEkle" Text="Siteyi Ekle" CssClass="buttonASP"
                OnClick="btnSiteEkle_Click" />
            <asp:Button runat="server" ID="btnVazgec" Text="Vazgeç" CssClass="buttonASP" OnClick="btnVazgec_Click" />
            <br />
            <asp:Label runat="server" ID="lblImg" Visible="false"><img src="images/okey.gif" alt="onay" style="border:0px;"/></asp:Label>
            <asp:Label ID="lblMesaj" runat="server" Visible="false" Style="color: Green; font-weight: bold;">Siteniz başarı ile gönderildi.</asp:Label>
        </asp:Panel>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_rightbar" runat="Server">
    <div class="rightbar">
        <h3>
            Dost Sitelere Ekle</h3>
        <br />
        <span>Eklenmesini istediğiniz siteyi bana bildirebilirsiniz.</span>
        <br />
        <br />
        <asp:Button runat="server" ID="btnEkle" Text="Ekle" CssClass="buttonASP" OnClick="btnEkle_Click" />
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
