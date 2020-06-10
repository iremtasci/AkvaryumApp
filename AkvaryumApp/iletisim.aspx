<%@ Page Title="" Language="C#" MasterPageFile="~/Giris.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="AkvaryumApp.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-content">
        <div class="container">
            <div class="contact-info">
                <h2>İLETİŞİM</h2>
                <p>Görüş ve Önerileriniz için Bizimle İletişime Geçin</p>
            </div>
            <div class="contact-details">
                <form runat="server">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Ad ve Soyad: " required="" Height="16px" Width="270px"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Mail Adresiniz: " required="" Height="16px" Width="270px"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Telefon: " Width="270px"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Konu" required="" Width="270px"></asp:TextBox>
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Mesajınız: " required="" TextMode="MultiLine" Height="186px" Width="450px" ></asp:TextBox>

                    <asp:Button ID="Button1"  runat="server" Text="Gönder" OnClick="Button1_Click"  required="Mesajınız Alındı"/><div id="myModal" ></div>>

                        
                      
                </form>

            </div>
            <div class="contact-details">
                <div class="col-md-6 contact-map">
                    <h4>Buradayız.</h4>
                    <div class="mapouter">
                        <div class="gmap_canvas">
                            <iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=gazi%20teknoloji%20fak%C3%BCltesi&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                            <a href="https://www.embedgooglemap.net/en/"></a></div>
                        <style>
                            .mapouter {
                                position: relative;
                                text-align: right;
                                height: 500px;
                                width: 600px;
                            }

                            .gmap_canvas {
                                overflow: hidden;
                                background: none !important;
                                height: 500px;
                                width: 600px;
                            }
                        </style>
                    </div>
                </div>

                <div class="clearfix"></div>
            </div>


        </div>
    </div>
</asp:Content>
