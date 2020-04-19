<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sifre.aspx.cs" Inherits="adminda_sifre" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Devrim Altınkurt » Resmi Web Sitesi</title>
    <link href="../BrightSide.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 100%; height: 100%;">
        <tr>
            <td align="center" valign="middle" style="height: 600px;">
                <table cellpadding="3" cellspacing="3" style="width: 500px; background-color: #ffffff;
                    border: 1px solid #c0c0c0;">
                    <tr style="background-image: url(/images/button.jpg); background-repeat: repeat-x;
                        font-weight: bold; color: #4580C1; text-align: left;">
                        <td colspan="3" align="center">
                            Yönetici Girişi
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="4">
                            <img src="/adminda/images/key.gif" style="border: 0px;" />
                        </td>
                        <td align="left">
                            Yönetici Kodu
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtKullaniciAdi" runat="server" ErrorMessage="!"
                                Style="color: Red; display: inline;"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Şifre
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtSifre" runat="server" ErrorMessage="!"
                                Style="color: Red; display: inline;"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="padding-top: 10px;" valign="top">
                            Resimdeki metni yazınız
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtCaptcha" runat="server" ErrorMessage="!"
                                Style="color: Red; display: inline;"></asp:RequiredFieldValidator>
                            <asp:Label runat="server" ID="lblCaptcha" Visible="false" />
                            <br />
                            <asp:Image ID="imgCaptcha" runat="server" ImageUrl="~/JpegImage.ashx" align="absmiddle"
                                Style="border-width: 0px;" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnGiris" runat="server" Text="Giriş Yap" OnClick="btnGiris_Click"
                                CssClass="buttonASP" />
                        </td>
                        <td align="left">
                            <asp:Label runat="server" ID="lblOnay" ForeColor="#CC0000" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="left">
                            <div style="width: 100%">
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
