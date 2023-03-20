<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore/MainPage.Master" AutoEventWireup="true" CodeBehind="return.aspx.cs" Inherits="SongBookStore.BookStore._return" %>
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
                      <%--  <ul class="nav nav-tabs" role="tablist">
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
                        </ul>--%>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Satış ve İade Hakkında</h6>
                                    <p>
   Nasıl sipariş verebilirim?

Ana sayfanın sağ üst köşesindeki arama satırından kitap adı, yazar, ISBN, anahtar kelime seçerek aramayı gerçekleştirdiğinizde sonuçlar tarih sırasına göre sıralanmaktadır.
Kitabın detay bölümünden sepete ekleyip alışverişe devam edebilir veya alışverişi tamamlayıp ödeme sayfasına gidebilirsiniz.
Üye iseniz üyeliğiniz üzerinden, değilseniz üye olmadan devam edebilirsiniz.
Teslimat Bilgileri bölümünde Kişisel Bilgilerinizi doldurup ödeme aşamasına geçebilir, kredi kartı ya da havale seçeneklerinden size uygun olanı seçip siparişinizi tamamlayabilirsiniz.
Havale / EFT Bilgilerimiz;
İsim – Soyisim: KÜLTÜR YAYINLARI İŞ TÜRK A.Ş.
Banka – Şube: 1011 1752620Hesap no.-IBAN:TR120006400000110111752620 
Hediye olarak göndermek isterseniz; Kişisel Bilgiler bölümüne göndermek istediğiniz kişi bilgilerini, faturamı farklı adrese gönder seçeneğini seçip kendi bilgilerinizi girip ödeme aşamasına geçebilir, kredi kartı ya da havale seçeneklerinden size uygun olanı seçip siparişinizi tamamlayabilirsiniz.
Hafta İçi Saat 12:00’a kadar verdiğiniz siparişleriniz 2-3 iş günü içerisinde teslim edilip, kargo takip numaranız maille size iletilir. Lütfen www.araskargo.com.tr veya www.yurticikargo.com adresinden size iletilen takip numaranızla siparişinizi takip ediniz.
Hafta İçi Saat : 09:00 – 18:00 saatleri arasında 0212 243 56 00 numaralı telefondan ulaşabilirsiniz.
Hatalı sipariş verdiğiniz taktirde;

İade süresi 7 gündür. Kargo gönderimi müşteriye aittir. Ürün Faturası, asıl nüshanın ön yüzünde yer alan Ürün İade Formu doldurularak, ürün ile birlikte KÜLTÜR YAYINLARI İŞ TÜRK A.Ş. depo adresine gönderilmelidir.
    Teslimattan kaynaklanan problemler;

Kargo teslimat sırasında ürün kontrolü yapılıp fiziki hasar mevcut ise paket Kargo Firmasından teslim alınmamalıdır.  Kargo Firmasından ürün teslim alındıktan sonra fiziki hasarlı ürün iadesi işlemi yapılamamaktadır.
Paket kabul edilmemiş ve tutanak tutulmuş ise, tutanağın sizde kalan kopyasıyla birlikte en kısa zamanda KÜLTÜR YAYINLARI İŞ TÜRK A.Ş.’ye bildirilmelidir. KÜLTÜR YAYINLARI İŞ TÜRK A.Ş. en kısa sürede yeni bir teslimatın gerçekleşmesini sağlayacaktır.
     Üretim-Basım Hatası varsa;

Kargo gönderimi KÜLTÜR YAYINLARI İŞ TÜRK A.Ş.’ye aittir. Ürün Faturası, asıl nüshanın ön yüzünde yer alan Ürün İade Formu doldurularak, ürün ile birlikte KÜLTÜR YAYINLARI İŞ TÜRK A.Ş depo adresine gönderilmelidir. İade ürün KÜLTÜR YAYINLARI İŞ TÜRK A.Ş adresine ulaştığında, hatasız bir kopyası ile değiştirilecek veya 7 gün içerisinde ödeme iadesi gerçekleştirilecektir.
Bulunduğunuz ilde size yakın mağazalarımızdan da değişim yapabilirsiniz.
Cayma hakkının istisnaları

MADDE 15 – (1) Taraflarca aksi kararlaştırılmadıkça, tüketici aşağıdaki sözleşmelerde cayma hakkını kullanamaz:

a) Fiyatı finansal piyasalardaki dalgalanmalara bağlı olarak değişen ve satıcı veya sağlayıcının kontrolünde olmayan mal veya hizmetlere ilişkin sözleşmeler.

b) Tüketicinin istekleri veya kişisel ihtiyaçları doğrultusunda hazırlanan mallara ilişkin sözleşmeler.

c) Çabuk bozulabilen veya son kullanma tarihi geçebilecek malların teslimine ilişkin sözleşmeler.

ç) Tesliminden sonra ambalaj, bant, mühür, paket gibi koruyucu unsurları açılmış olan mallardan; iadesi sağlık ve hijyen açısından uygun olmayanların teslimine ilişkin sözleşmeler.

d) Tesliminden sonra başka ürünlerle karışan ve doğası gereği ayrıştırılması mümkün olmayan mallara ilişkin sözleşmeler.

e) Malın tesliminden sonra ambalaj, bant, mühür, paket gibi koruyucu unsurları açılmış olması halinde maddi ortamda sunulan kitap, dijital içerik ve bilgisayar sarf malzemelerine ilişkin sözleşmeler.

f) Abonelik sözleşmesi kapsamında sağlananlar dışında, gazete ve dergi gibi süreli yayınların teslimine ilişkin sözleşmeler.

g) Belirli bir tarihte veya dönemde yapılması gereken, konaklama, eşya taşıma, araba kiralama, yiyecek-içecek tedariki ve eğlence veya dinlenme amacıyla yapılan boş zamanın değerlendirilmesine ilişkin sözleşmeler.

ğ) Elektronik ortamda anında ifa edilen hizmetler veya tüketiciye anında teslim edilen gayrimaddi mallara ilişkin sözleşmeler.

h) Cayma hakkı süresi sona ermeden önce, tüketicinin onayı ile ifasına başlanan hizmetlere ilişkin sözleşmeler.<br />

İade için depo adresimiz;<br />

Adres: Depo – Turgut Özal Caddesi Emek İş Merkezi No: 32 B Blok Kat: 1  İkitelli / İstanbul<br />
Cayma Hakkına Dair Bildirimin yapılacağı İletişim Bilgileri;

SONG BOOK STORE <br />

Adres: Sultantepe, Selmani Pak Cd. No:61/B Üsküdar/İstanbul<br />

Telefon: +90-535-233-10-82<br />

Email:   songbookstore@gmail.com<br />
                                        
 


 




 


 


                                    </p>
                                    <p>
                                        

                                    </p>
                                </div>
                            </div>
                          <%--       <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Editörler</h6>
                                    <p>

Ali Berktay (Baş Editör / İnceleme, Araştırma) (ali.berktay@iskultur.com.tr)<br />
Rûken Kızıler (Edebiyat) (ruken.kiziler@iskultur.com.tr)<br />
Hacer Er (Türk Edebiyatı Klasikleri Dizisi) (hacer.er@iskultur.com.tr)<br />
Ömer Aslan (Türk Edebiyatı Klasikleri Dizisi) (omer.aslan@iskultur.com.tr)<br />
Gamze Varım (Modern Klasikler) (gamze.varim@iskultur.com.tr)<br />
Barış Zeren (Modern Klasikler) (baris.zeren@iskultur.com.tr)<br />
Pınar Güven (Tarih – Anı) (pinar.guven@iskultur.com.tr)<br />
Kansu Şarman (Tarih) (kansu.sarman@iskultur.com.tr)<br />
Koray Karasulu (Hasan Âli Yücel Klasikler Dizisi) (koray.karasulu@iskultur.com.tr)<br />
Deniz Resul (Hasan Âli Yücel Klasikler Dizisi) (deniz.resul@iskultur.com.tr)<br />
Devrim Çetinkasap (Sosyal Bilimler) (devrim.cetinkasap@iskultur.com.tr)<br />                                                                                                                                                                                                                          Başak Güntekin (Çağdaş Yabancı Edebiyat) (basak.guntekin@iskultur.com.tr)                                                                                                                                                                                                                    Barış Gönülşen (Bilim Dizisi) (baris.gonulsen@iskultur.com.tr)

Ahu Ayan (Çocuk ve Gençlik) (ahu.ayan@iskultur.com.tr)<br />
Aylin Gergin (Çocuk ve Gençlik) (aylin.gergin@iskultur.com.tr)<br />
Gamze Tuncel Demir (Çocuk ve Gençlik) ( gamze.tuncel@iskultur.com.tr)<br />
</p>
                                    <p></p>
                                </div>
                            </div>
                                                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Dağıtım ve Satış Bölümü</h6>
                                    <p>

Hasan Aksoy (Müşteri Temsilcisi) (hasan.aksoy@iskultur.com.tr)<br />
Kadir Güven (Müşteri Temsilcisi) (kadir.guven@iskultur.com.tr)<br />
Murat Öksüz (Müşteri Temsilcisi) (murat.oksuz@iskultur.com.tr)<br />
Ali Çatal (Müşteri Temsilcisi) (ali.catal@iskultur.com.tr)<br />
Şaheser Bolel (Müşteri Temsilcisi) (saheser.bolel@iskultur.com.tr)<br />
Canan Armutcuoğlu Bayram (İnternet-Müşteri Temsilcisi) (canan.armutcuoglu@iskultur.com.tr)<br />
Burcu Belentepe Öksüz (İnternet-Müşteri Temsilcisi) (burcu.oksuz@iskultur.com.tr)<br />

Hafta İçi Saat : 10:00 – 23:00 saatleri arasında 0 535 233 10 82 numaralı telefondan ulaşabilirsiniz.</p>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->
</asp:Content>
