﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="AkvaryumApp.AdminSayfalar.Yorumlar" %>

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
                <h1 class="logo-w3">Gönderiler</h1>



                <table class=" table table-bordered">
                    <tr bgcolor="white">
                        <th>ID</th>
                        <th>KULLANICI</th>
                        <th>BLOG</th>
                        <th>SİL</th>
                        <th>GÜNCELLE</th>
                    </tr>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr bgcolor="white">
                                <td><%#Eval("YORUMID") %></td>
                                <td><%#Eval("KULLANICIAD") %></td>
                                <td><%#Eval("BLOGBASLIK") %></td>
                                <td>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"YorumSil.Aspx?YORUMID="+Eval("YORUMID") %>' CssClass="btn btn-danger">Sil</asp:HyperLink>
                                </td>
                                <td>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"YorumGuncelle.Aspx?YORUMID="+Eval("YORUMID") %>' CssClass="btn btn-warning">Güncelle</asp:HyperLink>
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
