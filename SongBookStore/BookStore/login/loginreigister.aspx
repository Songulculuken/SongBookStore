﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginreigister.aspx.cs" Inherits="SongBookStore.BookStore.login.loginreigister" %>

<!doctype html>
<html lang="en">
  <head>
  	<title>Giriş</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	</head>
	<body>
	<section class="ftco-section" runat="server">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Giriş</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last">
							<div class="text w-100">
								<h2>Hoşgeldin</h2>
								<p>Hesabın yok mu?</p>
								<a href="register.aspx" class="btn btn-white btn-outline-white">Kaydol</a>
							</div>
			      </div>
						<div class="login-wrap p-4 p-lg-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4">Giris Yap</h3>
			      		</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
									<%--	<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a>--%>
									</p>
								</div>
			      	</div>
							<form action="#" class="signin-form" runat="server">
			      		<div class="form-group mb-3">
			      			<label class="label" for="name">Kullanıcı Adı</label>
			      			<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			      		</div>
		            <div class="form-group mb-3">
		            	<label class="label" for="password" >Şifre</label> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
		             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
		            </div>
		            <div class="form-group">
		            	<asp:Button ID="Button1" runat="server" Text="Giriş" class="form-control btn btn-primary submit px-3" OnClick="Button1_Click"/><br /><br />
						<asp:Button ID="Button2" runat="server" Text="Çıkış" class="form-control btn btn-primary submit px-3" OnClick="Button2_Click"/>
<asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>

		            </div>
		            <div class="form-group d-md-flex">
		            	<div class="w-50 text-left">
			            	<%--<label class="checkbox-wrap checkbox-primary mb-0">Remember Me--%>
									  <%--<input type="checkbox" checked>
									  <span class="checkmark"></span>--%>
										<%--</label>--%>
									</div>
									<div class="w-50 text-md-right">
										<%--<a href="#">Forgot Password</a>--%>
									</div>
		            </div>
		          </form>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>