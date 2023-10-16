<%@ Page Title="" Language="C#" MasterPageFile="~/macdinh.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TANGTANBAO_FULLOK.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 884px;
        }
        .auto-style2 {
            height: 23px;
        }
        #menu2 td:hover {
    background-color: cyan;
    padding: 5px;
}
 
        .auto-style3 {
            height: 23px;
            width: 66px;
        }
 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="con">
        <table align="left" class="auto-style1">
        <tr>
            <td class="auto-style3">
            <div id ="menu2">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="MaLoai" DataSourceID="SqlDataSource1" Height="138px" style="background-color: #CCFFFF" Width="75px">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("MaLoai", "index.aspx?MaLoai={0}") %>' Text='<%# Eval("TenLoai") %>'></asp:HyperLink>
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BanQuanAoConnectionString %>" SelectCommand="SELECT * FROM [LoaiHang]"></asp:SqlDataSource>
            </div>
            </td>
            <td class="auto-style2">
                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" RepeatDirection="Horizontal" Width="589px">
                    <ItemTemplate>
                        TenSP:
                        <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' />
                        <br />
                        Giá:
                        <asp:Label ID="GiaLabel" runat="server" Text='<%# Eval("Gia") %>' />
                        VND<br />
                        <asp:Image ID="Image1" runat="server" Height="102px" ImageUrl='<%# Eval("TenFileAnh", "/image/{0}") %>' Width="129px" />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BanQuanAoConnectionString %>" SelectCommand="SELECT [TenSP], [Gia], [TenFileAnh] FROM [SanPham] WHERE ([MaLoai] = @MaLoai)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="MaLoai" QueryStringField="MaLoai" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
        </div>
</asp:Content>
