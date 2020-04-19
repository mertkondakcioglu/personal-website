<%@ Page Title="" Language="C#" MasterPageFile="~/adminda/MP_Admin.master" AutoEventWireup="true" ValidateRequest="false"
    CodeFile="YaziDuzenle.aspx.cs" Inherits="adminda_YaziDuzenle" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel runat="server" ID="pnlDuzenle">
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
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:CalendarExtender runat="server" TargetControlID="txtKayitTarihi" Format="d-MM-yyyy">
                    </asp:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnDuzenle" runat="server" Text="Değiştir" OnClick="Duzenle" />
                </td>
                <td>
                    <asp:Button ID="btnVazgec" runat="server" Text="Vazgeç" 
                        onclick="btnVazgec_Click" />
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
