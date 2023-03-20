﻿<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore/MainPage.Master" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="SongBookStore.BookStore.Information" %>
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
                                    <h6>Ön Bilgilendirme Formu</h6>
                                    <p>
                                        
 ÖN BİLGİLENDİRME FORMU

 

MADDE 1: TARAFLAR

 

SATICI BİLGİLERİ

 

Unvanı           : SONG BOOK STORE

Mersis No      : 0605051409300014

Vergi Kimlik No  : 6050514093

Adresi            : Sultantepe, Selmani Pak Cd. No:61/B Üsküdar/İstanbul

Telefon           : +90-535-233-10-82

Faks                : (0212) 252 39 95

Web Adresi   : www.songbookstore.com

Email              : songbookstore@gmail.com

(Bundan böyle SATICI olarak anılacaktır.)

 

ALICI BİLGİLERİ

 

Ad/Soyad       :

Adresi            :

Telefon           : 

Email              : 

 

(Bundan böyle ALICI olarak anılacaktır.)

 

MADDE 2: KONU

 

İşbu ön bilgilendirme formunun (“Form”) konusu, SATICI’ya ait “www.iskultur.com.tr” internet sitesi üzerinden SATICI tarafından satışa sunulan kitap ve benzeri materyallerin ALICI’ya satışı ve teslimi ile ilgili olarak 6502 sayılı Tüketicinin Korunması Hakkında Kanun ve Mesafeli Sözleşmeler Yönetmeliği (beraber “Mevzuat” olarak anılacaktır.) hükümleri uyarınca tarafların hak ve yükümlülüklerinin belirtilmesidir.

 

ALICI “www.iskultur.com.tr” internet sitesinde sözleşme konusu ürünün temel nitelikleri, satış fiyatı ve ödeme şekli ile teslimata ilişkin ön bilgileri okuyup bilgi sahibi olduğunu ve elektronik ortamda satın almaya ilişkin gerekli teyidi verdiğini kabul, beyan ve taahhüt eder. ALICI bu Ön Bilgilendirmeyi elektronik ortamda teyit etmekle, mesafeli sözleşmelerin akdinden önce, SATICI tarafından ALICI’ya verilmesi gereken adres, siparişi verilen ürünlere ait temel özellikler, ürünlerin vergiler dâhil fiyatı, ödeme ve teslimat bilgilerini de doğru ve eksiksiz olarak edindiğini teyit etmiş olur.

 

MADDE 3: SATIŞA KONU ÜRÜN/ÜRÜNLER, ÖDEME BİLGİLERİ ve TESLİMAT

 

3.1. Ürünün özellikleri (cinsi ve türü, miktarı, rengi) ve KDV dahil Satış Bedeline (adet x birim fiyat) ilişkin bilgiler aşağıda belirtildiği gibi olup, bu bilgiler ALICI tarafından da onaylanmıştır.

 

ÜRÜN ADI            CİNSİ                         ADET                       SATIŞ BEDELİ (KDV Dahil)

……………              Kitap                             1                              ……..-TL

 

Sipariş Tutarı: …….-TL

 

Kargo Ücreti: …..-TL

 

Ödeme Şekli: Kredi Kartı/EFT/Havale

 

3.2.Teslimat, Aras kargo ve Yurt içi kargo firması aracılığı ile ALICI tarafından yukarıda belirtilen adrese yapılacaktır. Kargo Ücreti ALICI tarafından ödenecektir. Yurt içi Kargo 25.00 TL., Aras Kargo Ücreti: 25,00 -TL olup, kargo fiyatı sipariş toplam tutarına eklenmektedir. Teslimat, anlaşmalı Aras kargo ve Yurt içi kargo firması aracılığı ile, ALICI’nın yukarıda belirtilen adresine yapılacaktır. Şu kadar ki, SATICI, satış anında yürüttüğü ve/veya “www.iskultur.com.tr” alan adlı internet sitesinde şartlarını ilan ettiği kampanyaların sonucuna bağlı olarak söz konusu kargo ücretinin tamamını ya da kampanyayla belirlenen bir kısmını ALICI’ya yansıtmayabilir.

 

Teslimat Yapılacak Kişi/Kişiler: ………….

Teslimat Adresi: ………….

Fatura Adresi: ………….

 

ALICI, işbu sözleşme konusu ürün/ürünler, ALICI veya işbu sözleşmede ALICI tarafından belirlenmiş teslim almaya yetkili kişi veya kişilere, ALICI veya ALICI tarafından belirlenmiş teslim almaya yetkili kişi veya kişilerden kaynaklı sebeplerle teslim edilmediği takdirde, söz konusu ürün/ürünlerin ALICI veya ALICI tarafından belirlenmiş teslim almaya yetkili kişi veya kişilere SATICI tarafından yeniden gönderimi nedeniyle oluşacak olan kargo ücretinin her halükarda kendisi tarafından ödeneceğini kabul, beyan ve taahhüt eder.

 

ALICI tarafından belirtilen fatura adresinin farklı olması halinde ALICI, faturanın ilgili adrese teslimi için ek bir kargo ücreti ödemeyi kabul, beyan ve taahhüt eder.

 

MADDE 4:  GENEL HÜKÜMLER

 

4.1. Ön bilgilendirme formuna konu ürün/ürünler, yasa ve yönetmeliklerle belirlenen siparişin SATICI’ya ulaşmasını takip eden, yasal 30 (otuz) günlük süreyi aşmamak koşulu ile her bir ürün için ALICI’nın yerleşim yerinin uzaklığına bağlı olarak işbu 30 (otuz) günlük süre içinde ALICI veya gösterdiği adresteki kişi/kuruluşa teslim edilir. Bununla birlikte ALICI’nın özel isteği veya kişisel ihtiyaçları doğrultusunda hazırlanan ürünlerin teslim süresi 30 (otuz) günlük süreyi aşabilecektir. Şu kadar ki, ön sipariş ürününde/ürünlerinde işbu 30 (otuz) günlük yasal süre ilgili ürüne ait satış sayfasında ilan edilen satış tarihinden itibaren başlayacak olup, işbu satış tarihinde tedarikçi firma kaynaklı gecikmeler yaşanabilir. İşbu halde SATICI, ALICI’yı öncesinde yazılı olarak bilgilendirecektir. Bu halde de ALICI siparişin iptal edilmesini veya teslimat süresini bekleyerek siparişe konu ürün/ürünlerin teslim edilmesi haklarından birini kullanabilir. ALICI’nın siparişi iptal etmesi halinde ödediği tutar 14 (on dört) gün içinde kendisine nakden ve defaten ödenir. E-kitap satışlarında ürün/ürünler yasa ve yönetmeliklerle belirlenen siparişin SATICI’ya ulaşmasını takip eden yasal 30 (otuz) günlük süreyi aşmamak koşulu ile işbu 30 (otuz) günlük süre içinde ALICI tarafından bildirilen e-mail adresine teslim edilir.

 

4.2. Ön bilgilendirme formuna konu ürün/ürünler, ALICI’dan başka bir kişi/kuruluşa teslim edilecek ise, teslim edilecek kişi/kuruluşun teslimatı kabul etmemesinden SATICI sorumlu tutulamaz.

 

4.3. Ön bilgilendirme formuna konu ürünün/ürünlerin sağlam, eksiksiz, siparişte belirtilen niteliklere uygun ve varsa garanti belgeleri ve kullanım kılavuzları ile teslim edilmesi ile ilgili ve ürünün/ürünlerin teslim edilmesi anına kadar tüm sorumluluk SATICI’ya aittir. ALICI, ürünü/ürünleri teslim aldığı anda kontrol etmekle ve üründe/ürünlerde kargodan kaynaklanan bir sorun gördüğünde, ürünü/ürünleri kabul etmemekle ve kargo firması yetkilisine tutanak tutturmakla sorumludur.

 

4.4. Ön bilgilendirme formuna konu ürünün/ürünlerin teslimatı için işbu ön bilgilendirme formu ile mesafeli satış sözleşmesinin elektronik ortamda teyit edilmiş olması ve ürün/ürünlerin bedelinin ALICI’nın tercih ettiği ödeme şekli ile ödenmiş olması şarttır. Herhangi bir nedenle ürün/ürünlerin bedeli ödenmez veya banka kayıtlarında iptal edilir ise, SATICI ürünün/ürünlerin teslimi yükümlülüğünden kurtulmuş kabul edilir.

 

4.5. Ön bilgilendirme formuna konu ürüne/ürünlere ilişkin ödemenin ALICI tarafından kredi kartı ile yapılması durumunda, ALICI ile kredi kartı sahibinin ya da ürünün/ürünlerin teslim edileceği kişinin farklı olmasından kaynaklanabilecek olan, kredi kartının yetkisiz kişilerce haksız ve hukuka aykırı olarak kullanılması da dahil olmak üzere türlü hukuki risk, ALICI’ya aittir. ALICI, bahsi geçen durumlarda herhangi bir şekilde zarara uğraması halinde SATICI’dan hiçbir talepte bulunmayacağını kabul, beyan ve taahhüt eder.

 

4.6. ALICI tarafından, ön bilgilendirme formuna konu ürüne/ürünlere ilişkin ödemenin herhangi bir Banka’ya ait ATM cihazından ya da şubesinden “hesaba yatırma” şeklinde yapılması durumunda, ürünün/ürünlerin bedelinin mesafeli satış sözleşmesinde ve işbu ön bilgilendirme formunda belirtilen şartlar çerçevesinde ALICI’ya iade edilmesinin gerektiği hallerde kullanılmak üzere kendisine ait bir banka hesabına ait IBAN numarasını doğru ve eksiksiz bir şekilde SATICI’nın bilgi@iskultur.com.tr email adresine göndermeyi ve SATICI tarafından IBAN numarasına iade yapılmasına muvafakat ettiğini kabul, beyan ve taahhüt eder.

 

4.7. SATICI mücbir sebepler veya nakliyeyi engelleyen hava muhalefeti, ulaşımın kesilmesi gibi olağanüstü durumlar ve/veya teknik sebepler vs. nedenler ile ön bilgilendirme formuna konu ürünü/ürünleri süresi içinde teslim edemez ise veya mal ve hizmet edimi imkansızlaştığı taktirde, durumu ALICI’ya 3 (üç) gün içinde bildirmekle yükümlüdür. Bu takdirde ALICI siparişin iptal edilmesini, ön bilgilendirme formuna konu ürünün/ürünlerin varsa emsali ile değiştirilmesini ve/veya teslimat süresinin engelleyici durumun ortadan kalkmasına kadar ertelenmesi haklarından birini kullanabilir. ALICI’nın siparişi iptal etmesi halinde ödediği tutar 14 (ondört) gün içinde kendisine nakden ve defaten ödenir.

 

4.8. ALICI talep ve şikâyetlerini yukarıdaki SATICI adres, telefon, faks ve email adreslerine iletebilir ve garanti belgesi ile satılan ürünlerden olan veya olmayan ürünlerin arızalı veya bozuk olanlar, garanti şartları içinde gerekli onarımın yapılması için de SATICI’ya ait adrese kargo bedeli ödemeksizin gönderimde bulunabilir.

 

4.9. ALICI, Türkiye Cumhuriyeti sınırları dışında ikamet etmekte/bulunmakta ve/veya ürünün/ürünlerin teslim edileceği adres Türkiye Cumhuriyeti sınırları dışında bulunmakta ise, ikamet ettiği/bulunduğu ve/veya ürünün/ürünlerin teslim edileceği ülkenin söz konusu ürünün/ürünlerin alımı nedeniyle yasa, yönetmelik ve ilgili yasal düzenlemeleri uyarınca tahakkuk ettireceği gümrük vergisi, harç ve sair her türlü mali yükümlülüğün kendisine ait olacağını, ürünün/ürünlerin teslim edilebilmesi için talep olunacak tüm ödemeleri derhal ve aynen yerine getireceğini şimdiden kabul, beyan ve taahhüt eder. Ayrıca ALICI’nın adresi SATICI’nın anlaşmalı olduğu kargo firmasının dağıtım alanının dışında kalmakta ise, ALICI dilerse ürünün/ürünlerin teslim edilebilmesi için talep olunacak tüm masraf ve bedelleri ödemeyi veya SATICI’nın anlaşmalı olduğu kargo firmasının ilgili şubesinden satışa konu olan ürün/ürünleri mesafeli satış sözleşmesinde ve işbu ön bilgilendirme formunda yer alan alıcı/alıcılar tarafından bizzat teslim alınacağını şimdiden kabul, beyan ve taahhüt eder. İşbu durum hakkında ALICI SATICI’nın anlaşmalı olduğu kargo firması tarafından öncesinde bilgilendirilecek olup, ALICI dilerse sözleşmeden dönebilir.

 

4.10. ALICI, e-kitap dahil satın aldığı ürün/ürünleri kullanabileceği elektronik ortam, araç, program, yazılım ve ekipmanların kendisi tarafından sağlanacağını ve kendi kusuru olsun veya olmasın oluşabilecek teknik eksiklik ve arızalardan SATICI’nın sorumlu olmayacağını kabul, beyan ve taahhüt eder.

 

4.11. ALICI tarafından satın alınan ürün/ürünlerin tamamı, bir kısmı ve/veya üründen/ürünlerden elde edilen herhangi bir bilgi, yazılım veya hizmet değiştirilemez, kopyalanamaz, dağıtılamaz, çoğaltılamaz, yayınlanamaz, türev niteliğinde çalışmalara konu edilemez, aktarılamaz veya satılamaz. ALICI işbu sözleşme ile satın aldığı ürünü/ürünleri yasa dışı amaçlar için ve/veya bu yasaklanan şekillerde kullanmayacağını kabul, beyan ve taahhüt eder. Aksi halde doğabilecek tüm hukuki ve cezai sorumluluk ALICI’ya ait olmakla beraber üçüncü kişiler veya yetkili merciler tarafından SATICI’ya karşı ileri sürülebilecek tüm iddia ve taleplere karşı, SATICI’nın söz konusu izinsiz kullanımdan kaynaklanan her türlü tazminat ve sair talep hakkı saklıdır.

 

4.12. ALICI ve SATICI işbu ön bilgilendirme formunun başında bahsedilen yazışma adreslerinin geçerli tebligat adresi olduğunu ve bu adrese yöneltilecek tüm tebligatların geçerli addolunacağını kabul, beyan ve taahhüt eder.

 

4.13. SATICI sipariş vermek için kullanılan “www.iskultur.com.tr” alan adlı internet sitesinin kullanılması nedeniyle, ücret tarifesi ile ilgili olarak ALICI’ya ilave bir maliyet yüklememektedir.

 

4.14. 18 yaşından küçük kişiler ile ayırt etme gücünden yoksun veya kısıtlı erginler SATICI’dan alış-veriş yapamaz.

 

MADDE 5: CAYMA HAKKI

 

5.1. ALICI, işbu ön bilgilendirme formunun 5.2. maddesinde belirtilen istisna hariç olmak üzere ön bilgilendirme formuna konu ürünün/ürünlerin kendisine veya gösterdiği adresteki kişi/kuruluşa tesliminden veya sözleşmenin imzalandığı tarihten itibaren 14 (ondört) gün içinde herhangi bir gerekçe göstermeksizin ve cezai şart ödemeksizin sözleşmeden cayma hakkına sahiptir. İşbu 14 (ondört) günlük süre, malın tüketicinin malı teslim aldığı günden itibaren başlar. Cayma hakkının kullanılması için bu süre içinde ürünü/ürünleri işleyişine, teknik özelliklerine ve kullanım talimatlarına uygun bir şekilde kullanmış olmak kaydıyla SATICI’ya aşağıda detayları belirtilen iletişim bilgileri vasıtasıyla ALICI yazılı olarak bildirimde bulunmak zorundadır. Bu bildirimin SATICI’ya ulaşmasını takiben SATICI bildirimin kendisine ulaştığına ilişkin teyit bilgisini ALICI ile paylaşacak ve bildirimin ulaşma tarihini takiben de 14 (ondört) gün içinde SATICI cayma hakkına konu ürünün/ürünlerin bedelini ödeme şekline uygun bir şekilde ALICI’ya iade edecektir. SATICI’nın yukarıda belirtilen yükümlülüklerini yerine getirmemesi hâlinde, ALICI cayma hakkını kullanmak için 14 (ondört) günlük süreye bağlı değildir. Her halükarda bu süre cayma süresinin bittiği tarihten itibaren bir yıl sonra sona erer.

 

Cayma hakkının kullanılmasını takiben, SATICI malı kendisinin geri alacağına dair bir teklifte bulunmadıkça, ALICI cayma hakkını kullandığına ilişkin bildirimi SATICI’ya yönelttiği tarihten itibaren on gün (10) içinde ürünü SATICI’ya geri göndermek zorundadır.

 

Gönderim, gösterdiği adresteki kişi/kuruluşa veya ALICI’ya teslim edilen ürünün/ürünlerin Aras Kargo ve Yurt içi kargo firması ( Kargo’lara “www.araskargo.com.tr” ve www.yurticikargo.com/tr adreslerinden ulaşabilirsiniz.) aracılığı ile kargo bedeli ödemeksizin vergi mevzuatı gereğince fatura aslının ve irsaliyenin ibrazı ile ALICI tarafından SATICI’ya iadesi şeklinde gerçekleşecektir.

 

Cayma Hakkına Dair Bildirimin yapılacağı İletişim Bilgileri;

Kültür Yayınları İş Türk A.Ş.

Adres: İstiklal Cad. Meşelik Sok. No: 2 Beyoğlu / İSTANBUL

Mersis No: 0605051409300014

Vergi Kimlik No: 06050514093

Telefon: (0212) 252 39 91

Faks:      (0212) 252 39 95

Email: bilgi@iskultur.com.tr

 

ALICI, yukarıda belirtilen şekilde cayma hakkını kullanabileceği gibi, SATICI’nın “www.iskultur.com.tr” adlı web sitesinden de cayma hakkının kullanılmasına ilişkin formu doldurup SATICI’ya ulaştırabilir.

 

5.2. İşbu ön bilgilendirme formunun konusunu oluşturan ürünün ALICI’ya teslim edilmesinden sonra Mesafeli Satış Sözleşmeleri Yönetmeliği madde 15(e) uyarınca, ürün ambalajının, paketinin, bandının ve benzeri koruyucu unsurlarının açılmış olması halinde, ALICI cayma hakkını kullanamaz.

 

MADDE 6: YETKİLİ MAHKEME

 

İşbu ön bilgilendirme formunun uygulanmasından doğacak uyuşmazlıklarda, T.C Ticaret Bakanlığı’nca her yıl ilan edilen parasal sınırlar dâhilinde ALICI’nın mal veya hizmeti satın aldığı veya ikametgâhının bulunduğu yerdeki Tüketici Hakem Heyetleri ile Tüketici Mahkemeleri yetkilidir.

Tüketici sıfatını haiz olmayan ALICI için, taraflar arasında işbu Sözleşme’den doğabilecek uyuşmazlıkların çözümünde İstanbul Merkez Mahkemeleri ve İcra Müdürlükleri yetkilidir.

İşbu ön bilgilendirme formu elektronik ortamda taraflarca okunup, kabul edilip, teyit edilmiştir.

İşbu mesafeli satış sözleşmesi ön bilgilendirme formunda düzenlenmemiş hususlarda 6502 sayılı Tüketicinin Korunması Hakkında Kanun ve ilgili mevzuat hükümleri uygulanır.

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
