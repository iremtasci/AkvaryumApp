<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="mesajlar.aspx.cs" Inherits="AkvaryumApp.AdminSayfalar.mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  


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
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- css files -->

        <!-- Online-fonts -->
        <link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
        <!-- //Online-fonts -->

    </head>
    <body>

        <!-- Main Content -->
        <link href="../blog/css/style.css" rel="stylesheet" />
        <div class="main">
            <div class="main-w3l">
                <h1 class="logo-w3">Admin Paneli</h1>
                <h1 class="logo-w3">Mesajlar</h1>



                <table class=" table table-bordered">
                    <tr bgcolor="white">
                        <th>ID</th>
                        <th>AD SOYAD</th>
                        <th>MAIL</th>
                        <th>TELEFON</th>
                        <th>KONU</th>
                        <th>MESAJ</th>
                        <th>SİL</th>
                       
                    </tr>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr bgcolor="white">
                                 <td><%#Eval("MESAJID") %></td>
                                <td><%#Eval("ADSOYAD") %></td>
                                <td><%#Eval("MAIL") %></td>
                                <td><%#Eval("TELEFON") %></td>
                                <td><%#Eval("KONU") %></td>
                                <td><%#Eval("MESAJ") %></td>
                                 <td>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"mesajSil.Aspx?MESAJID="+Eval("MESAJID") %>' CssClass="btn btn-danger">Sil</asp:HyperLink>
                                </td>
                               
                               
                            </tr>
                        </ItemTemplate>
                        </asp:Repeater>
                    

                </table>

            </div>
            <!-- //main -->


            <!--footer-->
            <div class="footer-w3l">
                <p>&copy; 2020 Tüm Hakları Saklıdır</p>
            </div>
            <!--//footer-->


        </div>
        <!-- //Main Content -->

    </body>
    </html>






</asp:Content>
