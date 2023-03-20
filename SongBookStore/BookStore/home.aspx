<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore/MainPage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="SongBookStore.BookStore.home" %>

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
                                <button type="submit" class="site-btn">
                                    ARA</button>
                                
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
                    <div class="hero__item set-bg" data-setbg="img/hero/banner.jpg">
                        <div class="hero__text">
                            <%--<span>FRUIT FRESH</span>
                            <h2>Vegetable <br />100% Organic</h2>
                            <p>Free Pickup and Delivery Available</p>--%>
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
                            <a href="#" class="primary-btn">SHOP NOW</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div class="col-lg-3">
                                <div class="categories__item set-bg" data-setbg="img/categories/cat-1.jpg">
                                    <h5><a href="#"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/BookStore/shop.aspx?id=" + Eval("categoryID").ToString()%>' Text='<%#Eval("categoryName")%>'></asp:HyperLink></li></a></h5>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                    <%--   <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-2.jpg">
                            <h5><a href="#">Dried Fruit</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-3.jpg">
                            <h5><a href="#">Vegetables</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-4.jpg">
                            <h5><a href="#">drink fruits</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-5.jpg">
                            <h5><a href="#">drink fruits</a></h5>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->
    <br />
    <br />
    <br />
    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="img/banner/banner-1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="img/banner/banner-2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Çok Satanlar </h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource3">
                                <ItemTemplate>
                                    <%--     li class="active" data-filter="*">All</li>--%>
                                    <%--<li data-filter=".oranges"></li>--%>
                                           <%--   <li data-filter=".fresh-meat">Fresh Meat</li>--%>
                                    <li data-filter=".vegetables"><a href="#"><asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black" AutoPostBack="false" NavigateUrl='<%#"~/BookStore/home.aspx?id=" + Eval("categoryID").ToString()%>' Text='<%#Eval("categoryName")%>'></asp:HyperLink></li></a></li>
                                   <%-- <li data-filter=".fastfood">Fastfood</li>--%>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DB_BookStore2ConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>

            </div>
           <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" RenderMode="Inline"  UpdateMode="Always">
                <ContentTemplate>--%>
            <div class="row featured__filter">
                <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                            <div class="featured__item">
                                <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-2.jpg">
                                    <ul class="featured__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="featured__item__text">
                                    <h6><a href="#"><%#Eval("bookName") %></a></h6>
                                    <h5><%#Eval("bookPrice")%> &#8378 </h5>
                                </div>
                            </div>
                        </div>
                        
                    </ItemTemplate>
                    <%--<AlternatingItemTemplate>
                        <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                            <div class="featured__item">
                                <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-2.jpg">
                                    <ul class="featured__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="featured__item__text">
                                    <h6><a href="#">Crab Pool Security</a></h6>
                                    <h5>$30.00</h5>
                                </div>
                            </div>
                        </div>
                    </AlternatingItemTemplate>--%>
                </asp:Repeater>
              <%--  </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="HyperLink1" EventName="Click"/>
                </Triggers>
            </asp:UpdatePanel>--%>
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB_BookStore2ConnectionString2 %>" SelectCommand="sp_getBestSellerListCategoryID" SelectCommandType="StoredProcedure">
                  <SelectParameters>
        <asp:QueryStringParameter DefaultValue="0" Name="id" QueryStringField="id" Type="Int32" />
    </SelectParameters>
            </asp:SqlDataSource>

            <%--<div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-2.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-3.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-4.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-5.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-6.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-7.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-8.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5>$30.00</h5>
                        </div>
                    </div>
                </div>--%>
        </div>

        </div>

    </section>
    <!-- Featured Section End -->

    </section>

</asp:Content>
