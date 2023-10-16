<%@ Page Title="" Language="C#" MasterPageFile="~/macdinh.Master" AutoEventWireup="true" CodeBehind="danhmuc.aspx.cs" Inherits="TANGTANBAO_FULLOK.danhmuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 174px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            
             <td class="auto-style6">
                 <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                 <asp:Button ID="Button1" runat="server" Text="Tìm" OnClick="Button1_Click" />
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BanQuanAoConnectionString2 %>" SelectCommand="SELECT * FROM [SanPham] WHERE ([TenSP] like '%'+@TenSP +'%' )">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="TextBox1" Name="TenSP" PropertyName="Text" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>
            </td>
             <td>
                 <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource2" BackColor="#FFFF99" HorizontalAlign="Center" Width="584px">
                     <Columns>
                         <asp:BoundField DataField="MaSP" HeaderText="MaSP" InsertVisible="False" ReadOnly="True" SortExpression="MaSP" />
                         <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                         <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                         <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                         <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                         <asp:BoundField DataField="TenFileAnh" HeaderText="TenFileAnh" SortExpression="TenFileAnh" />
                         <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
                         <asp:HyperLinkField DataNavigateUrlFields="MaSP" DataNavigateUrlFormatString="~/admin/chitietquanao.aspx?MaSP={0}" HeaderText="ChiTiet" Text="Xem" />
                     </Columns>
                 </asp:GridView>
                 </td>
        </tr>
        <tr>
            <td class="auto-style6" >
               
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BanQuanAoConnectionString %>" SelectCommand="SELECT * FROM [SanPham]"></asp:SqlDataSource>
               
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" HorizontalAlign="Center" BackColor="#CCFFFF" BorderColor="Black" Width="573px">
                    <Columns>
                        <asp:BoundField DataField="MaSP" HeaderText="MaSP" InsertVisible="False" ReadOnly="True" SortExpression="MaSP" />
                        <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                        <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                        <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                        <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                        <asp:BoundField DataField="TenFileAnh" HeaderText="TenFileAnh" SortExpression="TenFileAnh" />
                        <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
                        <asp:HyperLinkField DataNavigateUrlFields="MaSP" DataNavigateUrlFormatString="~/admin/chitietquanao.aspx?MaSP={0}" HeaderText="Chi Tiết" Text="Xem" />
                    </Columns>
                </asp:GridView>
            </td>
         
        </tr>
    </table>
</asp:Content>
