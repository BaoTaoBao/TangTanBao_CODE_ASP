<%@ Page Title="" Language="C#" MasterPageFile="~/macdinh.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TangTanBao_THI_ASP.admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 77%;
        }
        .auto-style2 {
            width: 176px;
        }
        .auto-style3 {
            background-color: #CCFFFF;
        }
        .auto-style4 {
            background-color: #CCCCFF;
        }
    .auto-style5 {
        width: 115px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="con">
    <table align="left" class="auto-style1">
        <tr>
            
            <td class="auto-style2">
                <div id="bgdanhmuc" class="auto-style5">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="MaLoai" DataSourceID="SqlDataSource1" CssClass="auto-style4" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="105px">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl='<%# Eval("MaLoai", "~/admin/index.aspx?MaLoai={0}") %>' Text='<%# Eval("TenLoai") %>'></asp:HyperLink>
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SachOnlineConnectionString %>" SelectCommand="SELECT * FROM [TheLoai]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DataList ID="DataList2" runat="server" CssClass="auto-style3" DataKeyField="MaSach" DataSourceID="SqlDataSource2" RepeatDirection="Horizontal" Height="206px" Width="795px">
                    <ItemTemplate>
                        <br />
                        TenSach:
                        <asp:Label ID="TenSachLabel" runat="server" Text='<%# Eval("TenSach") %>' />
                        <br />
                        TacGia:
                        <asp:Label ID="TacGiaLabel" runat="server" Text='<%# Eval("TacGia") %>' />
                        <br />
                        Gia:
                        <asp:Label ID="GiaLabel" runat="server" Text='<%# Eval("Gia") %>' />
                        <br />
                        SoLuong:
                        <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Eval("SoLuong") %>' />
                        <br />
                        <br />
                        TenFileAnh:
                        <asp:Label ID="TenFileAnhLabel" runat="server" Text='<%# Eval("TenFileAnh") %>' />
                        <br />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SachOnlineConnectionString %>" SelectCommand="SELECT * FROM [Sach] WHERE ([MaLoai] = @MaLoai)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="MaLoai" QueryStringField="MaLoai" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
       </div>
</asp:Content>
