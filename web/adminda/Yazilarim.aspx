<%@ Page Title="" Language="C#" MasterPageFile="~/adminda/MP_Admin.master" AutoEventWireup="true"
    ValidateRequest="false" CodeFile="Yazilarim.aspx.cs" Inherits="adminda_Yazilarim" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="pnlIcerik" runat="server">
        <asp:Button runat="server" Text="Yeni Yazı Ekle" OnClick="Unnamed1_Click" />
        <br />
        <br />
        <hr />
        <asp:HiddenField runat="server" Value="0" ID="hfId" />
        <asp:Repeater runat="server" ID="rptYazilar" OnItemCommand="rptYazilar_ItemCommand">
            <HeaderTemplate>
                <table>
            </HeaderTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <h3>
                            <img src="/images/point.gif" alt="" style="vertical-align: middle; border-style: none;
                                border: 0px;" />
                            <a runat="server" style="font-weight: bold;" id="hlYazi">
                                <asp:Label runat="server" ID="lblBaslik" Text='<%#Eval("Baslik") %>' />
                            </a>
                        </h3>
                        <div style="padding: 5px 0px 5px 0px;">
                            <asp:Label runat="server" ID="lblOzet" Text='<%#Eval("Ozet") %>' />
                        </div>
                        <div class="pasif" style="width: 100%; clear: both; font-size: smaller; text-align: right;">
                            <span style="padding-left: 3px;">
                                <asp:HyperLink runat="server" ID="lblKategori" Text='<%#Eval("KategoriLink") %>'></asp:HyperLink>
                                -
                                <asp:Label runat="server" ID="lblKayit" Text='<%#Eval("kayitTarihi") %>'></asp:Label>
                            </span>
                        </div>
                    </td>
                    <td>
                        <asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("ID") %>' />
                        <asp:Button ID="btnDuzenle" runat="server" PostBackUrl='<%#string.Format("YaziDuzenle.aspx?Id={0}",Eval("ID")) %>' Text="Düzenle" />
                    </td>
                    <td>
                        <asp:Button ID="btnSil" runat="server" Text="Sil" CommandName="Sil" CommandArgument='<%#Eval("ID") %>'
                            OnClientClick="return confirm('Secili yazıyı silmek istediğinizden emin misiniz ?');" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </asp:Panel>
    <asp:Panel runat="server" ID="pnlYeni" Visible="false">
        <table>
            <tr>
                <td>
                    Kategori :
                </td>
                <td>
                    <asp:DropDownList runat="server" ID="ddlKategori">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Başlık :
                </td>
                <td>
                    <asp:TextBox runat="server" Style="width: 300px; height: 50px;" ID="txtBaslik" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Özet :
                </td>
                <td>
                    <asp:TextBox runat="server" Style="width: 300px; height: 50px;" ID="txtOzet" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Etiketler :
                </td>
                <td>
                    <asp:TextBox runat="server" Style="width: 300px; height: 50px;" ID="txtEtiketler"
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    İçerik :
                </td>
                <td>
                    <asp:TextBox runat="server" Style="width: 300px; height: 50px;" ID="txtIcerik" TextMode="MultiLine"></asp:TextBox>
                    <script type="text/javascript">

                        window.onload = function () {

                            var editor = CKEDITOR.replace('<% = txtIcerik.ClientID %>');

                        };

                    </script>
                </td>
            </tr>
            <tr>
                <td>
                    Kayit Tarihi :
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtKayitTarihi" TextMode="MultiLine"></asp:TextBox>
                    <asp:ScriptManager runat="server">
                    </asp:ScriptManager>
                    <asp:CalendarExtender runat="server" TargetControlID="txtKayitTarihi" Format="d-MM-yyyy">
                    </asp:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnEkle" runat="server" Text="Ekle" OnClick="btnEkle_Click" />
                </td>
                <td>
                    <asp:Button ID="btnVazgec" runat="server" Text="Vazgeç" OnClick="btnVazgec_Click" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label runat="server" ID="lblImg" Visible="false"><img src="images/okey.gif" alt="onay" style="border:0px;"/></asp:Label>
        <asp:Label ID="lblMesaj" runat="server" Visible="false" Style="color: Green; font-weight: bold;">Yazı başarı ile eklendi.</asp:Label>
        <br />
        <br />
    </asp:Panel>
</asp:Content>
