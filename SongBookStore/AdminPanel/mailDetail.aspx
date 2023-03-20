<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="mailDetail.aspx.cs" Inherits="SongBookStore.AdminPanel.mailDetail" %>
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
    <h4 style="margin-left:20px">Mesaj Detayları</h4>
    <br />
    <table class="table table-bordered" style="margin-left:20px; /*margin-right:20px*/">
      <tr>
        <td><asp:Label ID="Label1" runat="server" Text="Mail Gonderen"></asp:Label></td>
  <td><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td>

        </tr>
      <tr>
        <td><asp:Label ID="Label2" runat="server" Text="Eposta Adresi"></asp:Label></td>
  <td> <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox></td>
 </tr>
      <tr>
        <td><asp:Label ID="Label3" runat="server" Text="Konu"></asp:Label></td>
  <td><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox></td>
  </tr>
      <tr>
        <td><asp:Label ID="Label4" runat="server" Text="Mesaj"></asp:Label></td>
   <td><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100"></asp:TextBox></td>
 </tr>
      </table>
    &nbsp &nbsp <asp:Button ID="Button1" runat="server" Text="Geri Git" CssClass="btn btn-info" OnClick="Button1_Click"/>
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
