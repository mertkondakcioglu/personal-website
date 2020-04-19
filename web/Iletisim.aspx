<%@ Page Title="" Language="C#" MasterPageFile="~/MP_Ana.master" AutoEventWireup="true"
    CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_title" runat="Server">
    <title>İletişim | Devrim ALTINKURT</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_banner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">
    <div id="main">
        <h1>
            İletişim</h1>
        <p>
            Mesajınızı aşağıdaki formu doldurarak bana iletebilirsiniz.</p>
        <hr class="pasif" noshade="noshade" size="1" />
        <asp:Panel runat="server" Style="text-align: center;" ID="pnlonay" Visible="false">
            <asp:Label runat="server" ID="okeyImg"><img src="images/okey.gif" alt="onay" style="border:0px;"/></asp:Label>
            <asp:Label ID="lblMesaj" runat="server" Style="color: Green; font-weight: bold;">Mesajınız başarı ile gönderildi. Teşekkürler.</asp:Label>
        </asp:Panel>
        <br />
        <div style="width: 100%; padding-top: 10px;">
            <div style="color: Red; background-color: #FCFCA7; border-color: Silver; border-width: 1px;
                border-style: Solid; width: 100%; display: none;">
            </div>
            <asp:Panel runat="server" ID="pnliletisim">
                <table border="0" cellpadding="4" cellspacing="4" style="width: 100%">
                    <tr>
                        <td>
                            Adınız Soyadınız
                        </td>
                        <td>
                            <asp:TextBox ID="txtAdSoyad" runat="server" Style="width: 250px;" />
                            <asp:RequiredFieldValidator ControlToValidate="txtAdSoyad" runat="server" ErrorMessage="!"
                                Style="color: Red; display: inline;"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            E-Posta Adresiniz
                        </td>
                        <td>
                            <asp:TextBox ID="txtEposta" runat="server" Style="width: 250px;"></asp:TextBox>
                            <asp:RegularExpressionValidator ControlToValidate="txtEposta" runat="server" Style="color: Red;
                                display: inline;" Display="Dynamic" ErrorMessage="Geçersiz e-posta" ValidationExpression="^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$">
                            </asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txtEposta" runat="server" ErrorMessage="!"
                                Style="color: Red; display: inline;"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Telefonunuz
                        </td>
                        <td>
                            <asp:ScriptManager runat="server">
                            </asp:ScriptManager>
                            <asp:MaskedEditExtender TargetControlID="txtTelefon" Mask="0 (999) 999 99 99" runat="server"
                                MaskType="Number" InputDirection="LeftToRight" AcceptNegative="Left" AutoComplete="false" />
                            <asp:TextBox ID="txtTelefon" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:RequiredFieldValidator ControlToValidate="txtYorum" runat="server" ErrorMessage="!"
                                Style="color: Red; display: inline;"></asp:RequiredFieldValidator>
                            <asp:TextBox runat="server" ID="txtYorum" TextMode="MultiLine" Style="width: 470px;
                                height: 170px;" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                <tr>
                                    <td>
                                        Resimdeki metni yazınız :<br />
                                        <asp:TextBox ID="txtCaptcha" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="txtCaptcha" runat="server" ErrorMessage="!"
                                            Style="color: Red; display: inline;"></asp:RequiredFieldValidator>
                                        <asp:Label runat="server" ID="lblCaptcha" Visible="false" />
                                        <br />
                                        <asp:Image ID="imgCaptcha" Style="border: 0px;" runat="server" ImageUrl="~/JpegImage.ashx" />
                                    </td>
                                    <td align="right">
                                        <asp:Button ID="btnDevamEt" runat="server" Text="Mesaj Gönder >>" OnClick="btnDevamEt_Click"
                                            CssClass="buttonASP" Style="color: Black;" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
        <br />
        <br />
        <hr />
        <br />
        <table style="width: 100%;" cellpadding="5" cellspacing="10">
            <tr>
                <td valign="top" align="center" style="width: 33%;">
                    <b>Windows Live Messenger</b>
                    <br />
                    <br />
                    <a href="msnim:add?contact=daltinkurt@hotmail.com" style="font-size: 10px; color: #3B5998;">
                        <img src="/images/windows-live-messenger-daltinkurt.png" alt="Windows Live Messenger"
                            title="Windows Live Messenger'a ekle" style="border: 0px; vertical-align: middle;" /></a>
                </td>
                <td style="width: 1px; background-color: #d0d0d0;">
                    <img src="/images/bos.png" style="width: 1px;" alt="" />
                </td>
                <td valign="top" align="center" style="width: 33%;">
                    <b>Facebook</b>
                    <br />
                    <br />
                    <a href="http://www.facebook.com/daltinkurt" title="Devrim Altınkurt" target="_blank">
                        <img src="http://badge.facebook.com/badge/718668574.168.1188516437.png" alt="Facebook"
                            style="border: 0px;" /></a>
                </td>
                <td style="width: 1px; background-color: #d0d0d0;">
                    <img src="/images/bos.png" style="width: 1px;" alt="" />
                </td>
                <td valign="top" align="center" style="width: 33%;">
                    <b>Twitter</b>
                    <br />
                    <br />
                    <a href="http://twitter.com/daltinkurt" title="Devrim Altınkurt" target="_blank">
                        <img src="/images/twitter-daltinkurt-follow_me.png" alt="Twitter" style="border: 0px;" /></a>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">
                    <a href="msnim:add?contact=daltinkurt@hotmail.com" style="font-size: 10px; color: #3B5998;"
                        title="Windows Live Messenger">daltinkurt@hotmail.com</a>
                </td>
                <td>
                </td>
                <td style="text-align: center;">
                    <a href="http://www.facebook.com/daltinkurt" title="Devrim Altınkurt" target="_blank"
                        style="font-size: 10px; color: #3B5998;">facebook.com/daltinkurt</a>
                </td>
                <td>
                </td>
                <td style="text-align: center;">
                    <a href="http://http://twitter.com/daltinkurt" title="Devrim Altınkurt" target="_blank"
                        style="font-size: 10px; color: #3B5998;">twitter.com/daltinkurt</a>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td valign="top" align="center" style="width: 33%;">
                    <b>daltinkurt.com RSS</b><br />
                    <br />
                    <a href="http://www.daltinkurt.com/RSS.aspx" title="Devrim Altınkurt RSS" target="_blank">
                        <img src="/images/rss.png" alt="RSS" style="border: 0px;" />
                    </a>
                </td>
                <td style="width: 1px; background-color: #d0d0d0;">
                    <img src="/images/bos.png" style="width: 1px;" alt="" />
                </td>
                <td valign="top" align="center" style="width: 33%;">
                    <b>Facebook RSS</b><br />
                    <br />
                    <a href="http://www.facebook.com/feeds/share_posts.php?id=718668574&viewer=718668574&key=c62a0d2121&format=rss20"
                        title="Devrim Altınkurt Facebook bağlantıları" target="_blank">
                        <img src="/images/rss.png" alt="RSS" style="border: 0px;" />
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
                    <li id="liSideMenu">
                    <a id="A1" target="_blank" runat="server" href='<%#Eval("url") %>'>
                        <%#Eval("linkAd") %>
                        </a>
                        </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
        <br />
    </div>
</asp:Content>
