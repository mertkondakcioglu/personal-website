<%@ Page Title="" Language="C#" MasterPageFile="~/adminda/MP_Admin.master" AutoEventWireup="true"
    CodeFile="SiteEkle.aspx.cs" Inherits="adminda_SiteEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Repeater runat="server" ID="rptGonderilenler">
        <HeaderTemplate>
            <table border="1">
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" ForeColor="Red" Font-Bold="true">Ad</asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" ForeColor="Red" Font-Bold="true">Url</asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" ForeColor="Red" Font-Bold="true">Bölüm</asp:Label>
                    </td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("adi") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("url") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("bolum") %>'></asp:Label>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
