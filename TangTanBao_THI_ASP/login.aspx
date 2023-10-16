<%@ Page Title="" Language="C#" MasterPageFile="~/macdinh.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TangTanBao_THI_ASP.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 70%;
        }
      
    .auto-style3 {
        text-align: center;
        height: 23px;
    }
    .auto-style4 {
        height: 22px;
    }
    .auto-style5 {
        text-align: center;
        height: 22px;
    }
    .auto-style6 {
        font-size: large;
    }
    .auto-style7 {
        height: 23px;
    }
    .auto-style8 {
        height: 22px;
        width: 115px;
    }
    .auto-style9 {
        height: 23px;
        width: 115px;
    }
    .auto-style11 {
        text-align: justify;
    }
    .auto-style12 {
        height: 24px;
        width: 115px;
    }
    .auto-style13 {
        height: 24px;
    }
    .auto-style14 {
        text-align: center;
        height: 24px;
    }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="con">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="3">
                <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Đăng  nhập"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label2" runat="server" Text="Tài Khoản"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txttk" runat="server" Width="236px"></asp:TextBox>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Text="Mật khẩu"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtmk" runat="server" Width="232px"></asp:TextBox>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13">
                <asp:Label ID="lbltb" runat="server"></asp:Label>
            </td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Đăng Nhập" Width="649px" />
            </td>
        </tr>
    </table>
       </div>
</asp:Content>
