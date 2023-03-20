<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="message.aspx.cs" Inherits="SongBookStore.AdminPanel.message" %>
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
            <h1 class="m-0 text-dark">Mesajlar</h1>
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
        <th>Gonderen Ad Soyad</th>
        <th>Eposta Adresi</th>
        <%--<th>Mesaj</th>--%>
        <th>Konu</th>
        <th>SIL</th>
        <th>GUNCELLE</th>
      </tr>
<asp:Repeater ID="Repeater1" runat="server">
  <ItemTemplate>
    <tr>
      <td><%#Eval ("mailID")%></td>
      <td><%#Eval ("mailNameSurname")%></td>
      <td><%#Eval("mailAddress") %>
      <%--  <td><%#Eval("mailMessage") %>--%>
      <td><%#Eval("mailSubject") %>
 
      <td>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"mailDelete.aspx?id=" + Eval("mailID")%>' CssClass="btn btn-danger">Sil</asp:HyperLink ></td>
      <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"mailDetail.aspx?id=" + Eval("mailID")%>' CssClass="btn btn-warning">Detay</asp:HyperLink ></td>
</td>
    </tr>
  </ItemTemplate>
</asp:Repeater>
      <tr>
       
      </tr>
    </table>
    <%--<a href="NewBook.aspx" class="btn btn-primary" style="margin-left:20px">Yeni Kitap Ekle</a>--%>

    </body>
  

</asp:Content>
