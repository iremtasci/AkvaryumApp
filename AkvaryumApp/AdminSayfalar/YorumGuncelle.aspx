<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumGuncelle.aspx.cs" Inherits="AkvaryumApp.AdminSayfalar.YorumGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Space Register Form Flat Responsive Widget Template :: w3layouts</title>

        <!-- Meta-Tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <meta name="keywords" content="Space Register Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <!-- //Meta-Tags -->

        <!-- css files -->
        <link href="veb/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- css files -->

        <!-- Online-fonts -->
        <link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
        <!-- //Online-fonts -->

    </head>
    <body>

        <!-- Main Content -->
        <link href="../veb/css/style.css" rel="stylesheet" />
        <div class="main">
            <div class="main-w3l">
                <h1 class="logo-w3">Admin Paneli</h1>
                <div class="w3layouts-main">
                    <h2><span>Güncelle</span></h2>
                    <form action="#" method="post" runat="server">





                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Blog Başlık" Enabled="false"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Yorum İçerik" TextMode="MultiLine" Height="100"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click" />



                    </form>
                </div>
                <!-- //main -->

                <!-- password-script -->
                <script>
                    window.onload = function () {
                        document.getElementById("password1").onchange = validatePassword;
                        document.getElementById("password2").onchange = validatePassword;
                    }

                    function validatePassword() {
                        var pass2 = document.getElementById("password2").value;
                        var pass1 = document.getElementById("password1").value;
                        if (pass1 != pass2)
                            document.getElementById("password2").setCustomValidity("Passwords Don't Match");
                        else
                            document.getElementById("password2").setCustomValidity('');
                        //empty string means no validation error
                    }
                </script>
                <!-- //password-script -->

                <!--footer-->
                <div class="footer-w3l">
                    <p>&copy; 2020 Tüm Hakları Saklıdır</p>
                </div>
                <!--//footer-->

            </div>
        </div>
        <!-- //Main Content -->

    </body>
    </html>


</asp:Content>
