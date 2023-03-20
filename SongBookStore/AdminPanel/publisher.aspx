<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="publisher.aspx.cs" Inherits="SongBookStore.AdminPanel.publisher" %>
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
     <table class="table table-bordered" style="margin-left:20px; margin-right:20px">
      <tr>
        <th>ID</th>
        <th>Yayinevi Ad</th>
        <th>Yayinevi Adres</th>
        <th>Ulke</th>
        <th>Sehir</th>
        <th>Ilce</th>
        <th>Yayinevi Telefon</th>
        <th>Yayinevi Yetkili Ad Soyad</th>
        <th>Yayinevi Eposta</th>
        <th>Aktif mi?</th>
        <th>Aciklama</th>
        <th>Yayinevi Posta Kod</th>
        <th>SIL</th>
        <th>GUNCELLE</th>
      </tr>
<asp:Repeater ID="Repeater1" runat="server">
  <ItemTemplate>
    <tr>
      <td><%#Eval ("publisherID")%></td>
      <td><%#Eval ("publisherName")%></td>
      <td><%#Eval ("publisherAddress")%></td>
      <td><%#Eval("countryID") %>
      <td><%#Eval("cityID") %>
      <td><%#Eval("districtID") %>
      <td><%#Eval ("publisherPhone")%></td>
      <td><%#Eval ("publisherAuthorizedNameSurname")%></td>
         <td><%#Eval ("publisherEmail")%></td>
      <td><%#Eval ("isThePublisherActive")%></td>
      <td><%#Eval ("publisherDescription")%></td>
        <td><%#Eval ("publisherPostCode")%></td>
      <td>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"publisherDelete.aspx?id=" + Eval("publisherID")%>' CssClass="btn btn-danger">Sil</asp:HyperLink ></td>
      <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"publisherUpdate.aspx?id=" + Eval("publisherID")%>' CssClass="btn btn-success">Guncelle</asp:HyperLink ></td>
</td>
    </tr>
  </ItemTemplate>
</asp:Repeater>
      </table>
    <a href="NewPublisher.aspx" class="btn btn-primary" style="margin-left:20px">Yeni Yayinevi Ekle</a>

    </body>
</asp:Content>
