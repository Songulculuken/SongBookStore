<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore/MainPage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="SongBookStore.BookStore.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>Kategoriler</span>

                        </div>
                        <ul>
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <li>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/BookStore/shop.aspx?id=" + Eval("categoryID").ToString()%>' Text='<%#Eval("categoryName")%>'></asp:HyperLink></li>
                                    <%--<li><a href="#">Fresh Meat</a></li>
                            <li><a href="#">Vegetables</a></li>
                            <li><a href="#">Fruit & Nut Gifts</a></li>
                            <li><a href="#">Fresh Berries</a></li>
                            <li><a href="#">Ocean Foods</a></li>
                            <li><a href="#">Butter & Eggs</a></li>
                            <li><a href="#">Fastfood</a></li>
                            <li><a href="#">Fresh Onion</a></li>
                            <li><a href="#">Papayaya & Crisps</a></li>
                            <li><a href="#">Oatmeal</a></li>
                            <li><a href="#">Fresh Bananas</a></li>--%>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_BookStore2ConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>

                        </ul>
                    </div>


                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <div action="#">

                                <div class="hero__search__categories">
                                    <%-- All Categories
                                    <span class="arrow_carrot-down"></span>--%>
                                </div>

                                <input type="text" placeholder="Ne aradınız?">
                                <button type="submit" class="site-btn">ARA</button>

                            </div>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                 <asp:Repeater ID="Repeater5" runat="server" DataSourceID="SqlDataSource4">
                                    <ItemTemplate>
                                <h5><%#Eval("contactNumber") %></h5>
                                <span>7/24 saat sipariş</span>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DB_BookStore2ConnectionString %>" SelectCommand="SELECT * FROM [Contact]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                   <%-- <div class="hero__item set-bg" data-setbg="img/hero/banner.jpg">
                        <div class="hero__text">
                            <%--<span>FRUIT FRESH</span>
                            <h2>Vegetable <br />100% Organic</h2>
                            <p>Free Pickup and Delivery Available</p>--%>
                   <%--         <br />
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
                            <a href="#" class="primary-btn">SHOP NOW</a>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->
   <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>İletişim</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Ana Sayfa</a>
                            <span>İletişim</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
      <!-- Contact Section Begin -->
    <section class="contact spad">
<asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource4">
    <ItemTemplate>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_phone"></span>
                        <h4>Telefon</h4>
                        <p><%#Eval("contactNumber") %></p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_pin_alt"></span>
                        <h4>Adres</h4>
                        <p>Adres: <%#Eval("contactAddress") %></p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_clock_alt"></span>
                        <h4>Açık Saatler</h4>
                        <p>10:00-23:00</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_mail_alt"></span>
                        <h4>Eposta</h4>
                        <p><%#Eval("contactEmail") %></p>
                    </div>
                </div>
            </div>
        </div>
        </ItemTemplate>
    </asp:Repeater>

    </section>
    <!-- Contact Section End -->
      <!-- Map Begin -->
    <div class="map">
        <iframe
             src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3009.9893392279178!2d29.017522815954553!3d41.02548917929898!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cab78c6357d91f%3A0x419e0bc64ce9f71b!2sDesen%20Kitap%20K%C4%B1rtasiye!5e0!3m2!1str!2str!4v1673644355627!5m2!1str!2str" 
            height="500" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        <div class="map-inside">
            <i class="icon_pin"></i>
            <div class="inside-widget">
                <h4>İstanbul</h4>
                <ul>
<asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource4">
    <ItemTemplate>
                    <li>Telefon: <%#Eval("contactNumber") %></li>
                    <li>Adres: <%#Eval("contactAddress") %></li>
                </ul>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
    <!-- Map End -->
   
     <!-- Contact Form Begin -->
    <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>İletişim</h2>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <dix action="#">
                <div class="row">
<table>
     <tr>
        <td><asp:TextBox ID="TextBox4" runat="server" placeholder="Adınız" Width="295px"></asp:TextBox><br /></td>
         
        <td>&nbsp<asp:TextBox ID="TextBox1" runat="server" placeholder="Mail Adres" Width="293px"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:TextBox ID="TextBox2" runat="server" placeholder="Konu" Width="295px"></asp:TextBox><br /></td>
        <tr>
        <td><asp:TextBox ID="TextBox3" runat="server" Height="96px" Width="294px" TextMode="MultiLine" placeholder="Mesaj"></asp:TextBox><br /></td>
        
    </tr>
      <tr>
        <td>
       
           <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" style="background:#7fad39; color:#ffffff; border: none; text-transform: uppercase;font-size: 14px;display: inline-block;
	padding: 13px 30px 12px;"/> &nbsp
         <asp:Button ID="Button2" runat="server" Text="Vazgeç" style="background:#7fad39; color:#ffffff; border: none; text-transform: uppercase;font-size: 14px;display: inline-block;
	padding: 13px 30px 12px;" OnClick="Button2_Click"/></td>
    </tr>
</table>

                    <%--<div class="col-lg-6 col-md-6">
                        <input type="text" placeholder="Your name">
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <input type="text" placeholder="Your Email">
                    </div>
                    <div class="col-lg-12 text-center">
                        <textarea placeholder="Your message"></textarea>
                        <button type="submit" class="site-btn">SEND MESSAGE</button>--%>
                    </div>
                </div>
            </dix>
        </div>
    </div>
    <!-- Contact Form End -->
</asp:Content>
 

