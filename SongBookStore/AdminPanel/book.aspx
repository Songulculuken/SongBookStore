<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="book.aspx.cs" Inherits="SongBookStore.AdminPanel.book" %>
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
            <h1 class="m-0 text-dark">Kitaplar</h1>
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
        <th>Kitap Ad</th>
        <th>Basim Yili</th>
        <th>Yayinevi</th>
        <th>Fiyat</th>
        <th>Sayfa Sayisi</th>
        <th>Stok Adet</th>
        <th>Dil</th>
        <th>Aciklama</th>
        <th>Aktif mi?</th>
        <th>Kapak Resmi</th>
        <th>ISBN</th>
        <th>SIL</th>
        <th>GUNCELLE</th>
      </tr>
<asp:Repeater ID="Repeater1" runat="server">
  <ItemTemplate>
    <tr>
      <td><%#Eval ("bookID")%></td>
      <td><%#Eval ("bookName")%></td>
      <td><%#Eval("bookYearOfPublication") %>
      <td><%#Eval("publisherID") %>
      <td><%#Eval("bookPrice") %>
      <td><%#Eval("bookPageCount") %>
      <td><%#Eval("bookStockQty") %>
      <td><%#Eval("languageID") %>
      <td><%#Eval ("bookDescription")%></td>
      <td><%#Eval ("isTheBookActive")%></td>
      <td><%#Eval("bookCoverPhoto") %>
      <td><%#Eval("bookISBN") %>
      <td>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"bookDelete.aspx?id=" + Eval("bookID")%>' CssClass="btn btn-danger">Sil</asp:HyperLink ></td>
      <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"bookUpdate.aspx?id=" + Eval("bookID")%>' CssClass="btn btn-success">Guncelle</asp:HyperLink ></td>
</td>
    </tr>
  </ItemTemplate>
</asp:Repeater>
      <tr>
       
      </tr>
    </table>
    <a href="NewBook.aspx" class="btn btn-primary" style="margin-left:20px">Yeni Kitap Ekle</a>

    </body>
</asp:Content>
