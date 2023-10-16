<%@ Page Title="" Language="C#" MasterPageFile="~/macdinh.Master" AutoEventWireup="true" CodeBehind="sach.aspx.cs" Inherits="TangTanBao_THI_ASP.admin.sach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 70%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="consach">
    <table align="center" class="auto-style1">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSach" DataSourceID="SqlDataSource1" Height="164px" Width="476px" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="MaSach" HeaderText="MaSach" ReadOnly="True" SortExpression="MaSach" />
                    <asp:BoundField DataField="TenSach" HeaderText="TenSach" SortExpression="TenSach" />
                    <asp:BoundField DataField="TacGia" HeaderText="TacGia" SortExpression="TacGia" />
                    <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                    <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                    <asp:BoundField DataField="TenFileAnh" HeaderText="TenFileAnh" SortExpression="TenFileAnh" />
                    <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
                    <asp:HyperLinkField DataNavigateUrlFields="MaSach" DataNavigateUrlFormatString="xemsach.aspx?MaSach={0}" HeaderText="ChiTiet" Text="Xem" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SachOnlineConnectionString %>" SelectCommand="SELECT * FROM [Sach]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
    </div>
</asp:Content>
