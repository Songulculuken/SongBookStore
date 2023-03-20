<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="SongBookStore.AdminPanel.kategoriler" %>
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
            <h1 class="m-0 text-dark">Kategoriler</h1>
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
    <table class="table table-bordered" style="margin-left:20px; margin-right:20px">
      <tr>
        <th>ID</th>
        <th>Kategori Ad</th>
        <th>Kategori Aciklama</th>
        <th>Kategori Aktif Mi?</th>
        <th>SIL</th>
        <th>GUNCELLE</th>
      </tr>
<asp:Repeater ID="Repeater1" runat="server">
  <ItemTemplate>
    <tr>
      <td><%#Eval ("categoryID")%></td>
      <td><%#Eval ("categoryName")%></td>
      <td><%#Eval ("categoryDescription")%></td>
      <td><%#Eval ("isTheCategoryActive")%></td>
      <td>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"CategoryDelete.aspx?id=" + Eval("categoryID")%>' CssClass="btn btn-danger">Sil</asp:HyperLink ></td>
      <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"categoryUpdate.aspx?id=" + Eval("categoryID")%>' CssClass="btn btn-success">Guncelle</asp:HyperLink ></td>
</td>
    </tr>
  </ItemTemplate>
</asp:Repeater>
      </table>
    <a href="NewCategory.aspx" class="btn btn-primary" style="margin-left:20px">Yeni Kategori Ekle</a>
  </body>
</asp:Content>
