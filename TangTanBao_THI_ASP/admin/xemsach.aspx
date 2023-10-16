<%@ Page Title="" Language="C#" MasterPageFile="~/macdinh.Master" AutoEventWireup="true" CodeBehind="xemsach.aspx.cs" Inherits="TangTanBao_THI_ASP.admin.xemsach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 70%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="con">
    <table align="center" class="auto-style1">
    <tr>
        <td>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MaSach" DataSourceID="SqlDataSource1" Height="112px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemInserting="DetailsView1_ItemInserting" Width="162px">
                <Fields>
                    <asp:BoundField DataField="MaSach" HeaderText="MaSach" ReadOnly="True" SortExpression="MaSach" />
                    <asp:BoundField DataField="TenSach" HeaderText="TenSach" SortExpression="TenSach" />
                    <asp:BoundField DataField="TacGia" HeaderText="TacGia" SortExpression="TacGia" />
                    <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                    <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                    <asp:TemplateField HeaderText="Anh" SortExpression="TenFileAnh">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TenFileAnh") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:Image ID="Image2" runat="server" Height="122px" Width="96px" />
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="121px" ImageUrl='<%# Eval("TenFileAnh", "/image/{0}") %>' Width="98px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SachOnlineConnectionString %>" DeleteCommand="DELETE FROM [Sach] WHERE [MaSach] = @MaSach" InsertCommand="INSERT INTO [Sach] ([MaSach], [TenSach], [TacGia], [Gia], [SoLuong], [MoTa], [TenFileAnh], [MaLoai]) VALUES (@MaSach, @TenSach, @TacGia, @Gia, @SoLuong, @MoTa, @TenFileAnh, @MaLoai)" SelectCommand="SELECT * FROM [Sach] WHERE ([MaSach] = @MaSach)" UpdateCommand="UPDATE [Sach] SET [TenSach] = @TenSach, [TacGia] = @TacGia, [Gia] = @Gia, [SoLuong] = @SoLuong, [MoTa] = @MoTa, [TenFileAnh] = @TenFileAnh, [MaLoai] = @MaLoai WHERE [MaSach] = @MaSach">
                <DeleteParameters>
                    <asp:Parameter Name="MaSach" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSach" Type="Int32" />
                    <asp:Parameter Name="TenSach" Type="String" />
                    <asp:Parameter Name="TacGia" Type="String" />
                    <asp:Parameter Name="Gia" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="TenFileAnh" Type="String" />
                    <asp:Parameter Name="MaLoai" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="MaSach" QueryStringField="MaSach" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenSach" Type="String" />
                    <asp:Parameter Name="TacGia" Type="String" />
                    <asp:Parameter Name="Gia" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="TenFileAnh" Type="String" />
                    <asp:Parameter Name="MaLoai" Type="Int32" />
                    <asp:Parameter Name="MaSach" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>

    </div>
</asp:Content>
