<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore/MainPage.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="SongBookStore.BookStore.about" %>

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
                        <h2>Hakkımızda</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Anasayfa</a>
                            <span>Hakkımızda</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                   <%-- <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="img/product/details/product-details-1.jpg" alt="">
                        </div>--%>
                      <%--  <div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl="img/product/details/product-details-2.jpg"
                                src="img/product/details/thumb-1.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-3.jpg"
                                src="img/product/details/thumb-2.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-5.jpg"
                                src="img/product/details/thumb-3.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-4.jpg"
                                src="img/product/details/thumb-4.jpg" alt="">
                        </div>--%>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                    <%--    <h3>Vetgetable’s Package</h3>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(18 reviews)</span>
                        </div>
                        <div class="product__details__price">$50.00</div>
                        <p>
                            Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam
                            vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Vestibulum ac diam sit amet
                            quam vehicula elementum sed sit amet dui. Proin eget tortor risus.
                        </p>
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>--%>
                        <%--</div>
                        <a href="#" class="primary-btn">ADD TO CARD</a>
                        <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>--%>
                       <%-- <ul>
                            <li><b>Availability</b> <span>In Stock</span></li>
                            <li><b>Shipping</b> <span>01 day shipping.
                                <samp>Free pickup today</samp></span></li>
                            <li><b>Weight</b> <span>0.5 kg</span></li>
                            <li><b>Share on</b>
                                <div class="share">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </div>
                            </li>
                        </ul>--%>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">Hakkımızda</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">Editörler</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">Dağıtım ve Satış Bölümü <span>(1)</span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Hakkımızda</h6>
                                    <p>
                                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                                            <ItemTemplate>
                                       <div style="text-align: justify;"> <%#Eval("aboutDescription")%> </div>
                                               
                                    </p>
       </ItemTemplate>
                                            </asp:Repeater>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB_BookStore2ConnectionString %>" SelectCommand="SELECT * FROM [About]"></asp:SqlDataSource>
                                    <p>
                                        

                                    </p>
                                </div>
                            </div>
                                 <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Editörler</h6>
                                    <p>
                                        <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource2">
                                            <ItemTemplate>
                                        <%#Eval("aboutEditörs") %>
                       
</p>
                                                   </ItemTemplate>
                                            </asp:Repeater>


                                    <p></p>
                                    
                                </div>
                            </div>
                                                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Dağıtım ve Satış Bölümü</h6>
                                    <p>
                                         <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource2">
                                            <ItemTemplate>
                                        <%#Eval("aboutSales") %>
</p>
                                                        </ItemTemplate>
                                            </asp:Repeater>
                                </div>
                            </div>
                        </div>
                  
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->
</asp:Content>
