<%@ Page Title="" Language="C#" MasterPageFile="~/adminda/MP_Admin.master" AutoEventWireup="true"
    CodeFile="Iletisim.aspx.cs" Inherits="adminda_Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Repeater runat="server" ID="rptIletisim">
        <HeaderTemplate>
            <table border="1">
                <tr>
                    <td>
                        <asp:Label runat="server" ForeColor="Red" Font-Bold="true" style="text-align:center;" >Ad Soyad</asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Bold="true">E-Posta</asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" ForeColor="Red" Font-Bold="true">Telefon</asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" ForeColor="Red" Font-Bold="true">Yorum</asp:Label>
                    </td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label runat="server" Text='<%#Eval("Ad_Soyad") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label runat="server" Text='<%#Eval("E_Posta") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label runat="server" Text='<%#Eval("Telefon") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label runat="server" Text='<%#Eval("Yorum") %>'></asp:Label>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
