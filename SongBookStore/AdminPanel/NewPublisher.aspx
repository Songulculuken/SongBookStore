<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="NewPublisher.aspx.cs" Inherits="SongBookStore.AdminPanel.NewPublisher" %>
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
            <h1 class="m-0 text-dark">Yayinevleri</h1>
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
    <h4 style="margin-left:20px">Yeni Yayinevi Ekleme Sayfasi</h4>
    <br />
    <table class="table table-bordered" style="margin-left:20px; margin-right:20px">
      <tr>
<td><asp:Label ID="Label1" runat="server" Text="Yayinevi Ad Soyad"></asp:Label></td>
<td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
<td><asp:Label ID="Label3" runat="server" Text="Yayinevi Adres"></asp:Label></td>
<td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
      <tr>
<td><asp:Label ID="Label4" runat="server" Text="Ulke"></asp:Label></td>
<td>
  <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
        </tr>
       <tr>
<td><asp:Label ID="Label8" runat="server" Text="Sehir"></asp:Label></td>
<td> <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList></td>
        </tr>
       <tr>
<td><asp:Label ID="Label5" runat="server" Text="Ilce"></asp:Label></td>
<td> <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList></td>
        </tr>
         <tr>
<td><asp:Label ID="Label6" runat="server" Text="Yayinevi Telefon"></asp:Label></td>
<td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
<td><asp:Label ID="Label7" runat="server" Text="Yayinevi Yetkili Ad Soyad"></asp:Label></td>
<td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
<td><asp:Label ID="Label10" runat="server" Text="Yayinevi Eposta"></asp:Label></td>
<td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
<td><asp:Label ID="Label2" runat="server" Text="Yayinevi Aktif Mi?"></asp:Label></td>
<td>
  <asp:CheckBox ID="CheckBox1" runat="server" Text="Evet" /></td>
        </tr>
             <tr>
<td><asp:Label ID="Label9" runat="server" Text="Aciklama"></asp:Label></td>
<td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
<td><asp:Label ID="Label11" runat="server" Text="Yayinevi Posta Kod"></asp:Label></td>
<td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
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
