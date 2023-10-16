<%@ Page Title="" Language="C#" MasterPageFile="~/macdinh.Master" AutoEventWireup="true" CodeBehind="timkiem.aspx.cs" Inherits="TangTanBao_THI_ASP.timkiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 70%;
        }
        .auto-style2 {
            width: 193px;
        }
        .auto-style3 {
            width: 105px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Nhập tên để tìm: "></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" Width="181px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Tìm" BackColor="#66FFFF" Width="82px" />
            </td>
        </tr>
        <tr>
           <td colspan="3">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSach" DataSourceID="SqlDataSource1">
                   <Columns>
                       <asp:BoundField DataField="MaSach" HeaderText="MaSach" ReadOnly="True" SortExpression="MaSach" />
                       <asp:BoundField DataField="TenSach" HeaderText="TenSach" SortExpression="TenSach" />
                       <asp:BoundField DataField="TacGia" HeaderText="TacGia" SortExpression="TacGia" />
                       <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                       <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                       <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                       <asp:BoundField DataField="TenFileAnh" HeaderText="TenFileAnh" SortExpression="TenFileAnh" />
                       <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
                       <asp:HyperLinkField DataNavigateUrlFields=" MaSach" DataNavigateUrlFormatString="~/admin/xemsach.aspx?MaSach={0}" HeaderText="ChiTIet" Text="Xem" />
                   </Columns>
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SachOnlineConnectionString %>" SelectCommand="SELECT * FROM [Sach] WHERE ([TenSach] like '%'+@TenSach+'%' )">
                   <SelectParameters>
                       <asp:ControlParameter ControlID="TextBox1" Name="TenSach" PropertyName="Text" Type="String" DefaultValue=""/>
                   </SelectParameters>
               </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
