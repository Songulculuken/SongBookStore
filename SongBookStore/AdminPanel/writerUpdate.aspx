<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="writerUpdate.aspx.cs" Inherits="SongBookStore.AdminPanel.writerUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Yazarlar</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
           <%--   <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>--%>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
  <body style="background-color:#f8f9fa">
    <h4 style="margin-left:20px">Yazar Güncelleme Sayfasi</h4>
    <br />
    <table class="table table-bordered" style="margin-left:20px; margin-right:20px">
      <tr>
<td><asp:Label ID="Label1" runat="server" Text="Yazar Ad Soyad"></asp:Label></td>
<td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>

      <tr>
<td><asp:Label ID="Label4" runat="server" Text="Ulke"></asp:Label></td>
<td>
  <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
        </tr>
       <tr>
<td><asp:Label ID="Label8" runat="server" Text="Cinsiyet"></asp:Label></td>
<td> <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList></td>
        </tr>
         <tr>
<td><asp:Label ID="Label2" runat="server" Text="Kitap Aktif Mi?"></asp:Label></td>
<td>
  <asp:CheckBox ID="CheckBox1" runat="server" Text="Evet" /></td>
        </tr>
             <tr>
<td><asp:Label ID="Label9" runat="server" Text="Aciklama"></asp:Label></td>
<td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
        </tr>
      </table>
    <br />
   &nbsp &nbsp <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="Button1_Click"/>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
     <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </body>
</asp:Content>
