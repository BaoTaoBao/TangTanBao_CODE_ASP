﻿<%@ Page Title="" Language="C#" MasterPageFile="~/macdinh.Master" AutoEventWireup="true" CodeBehind="chitietquanao.aspx.cs" Inherits="TANGTANBAO_FULLOK.admin.chitietquanao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 70%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table align="center" class="auto-style1">
        <tr>
            <td>
                 <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" Height="222px" Width="194px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateInsertButton="True">
                     <Fields>
                         <asp:BoundField DataField="MaSP" HeaderText="MaSP" InsertVisible="False" ReadOnly="True" SortExpression="MaSP" />
                         <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                         <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                         <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                         <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                         <asp:BoundField DataField="TenFileAnh" HeaderText="TenFileAnh" SortExpression="TenFileAnh" />
                         <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
                     </Fields>
                 </asp:DetailsView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BanQuanAoConnectionString3 %>" SelectCommand="SELECT * FROM [SanPham] WHERE ([MaSP] = @MaSP)">
                     <SelectParameters>
                         <asp:QueryStringParameter Name="MaSP" QueryStringField="MaSP" Type="Int32" />
                     </SelectParameters>
                 </asp:SqlDataSource>
            </td>
        </tr>
    </table>
   
</asp:Content>
