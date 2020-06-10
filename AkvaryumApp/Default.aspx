<%@ Page Title="" Language="C#" MasterPageFile="~/Giris.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AkvaryumApp.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
        <h2>AKVARYUMA HOŞGELDİN!</h2>
        <img class="front" src="underwater/images/krmz.jpg" alt="" />
        <form id="form1" runat="server" style="background-color: #183B3B">
            <asp:TextBox ID="txtCumle" runat="server"></asp:TextBox>
            

            <asp:Button ID="Button1" runat="server" Text="Arama" OnClick="Button1_Click1" /><div class="container">
                <div class="content-grids">
                    <div class="col-md-8 content-main" style="background-color: #183B3B">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="content-grid">
                                    <div class="content-grid-info">
                                        <img src="<%#Eval("BLOGGORSEL") %>" alt="" style="height: 450px; width: 650px" />
                                        <div class="post-info">
                                            <h4><a href="BlogDetay.aspx?BLOGID=<%# Eval ("BLOGID") %>"><%#Eval("BLOGBASLIK") %></a>  "<%#Eval("BLOGTARIH") %>"</h4>
                                            <p>"<%#Eval("BLOGICERIK") %>"</p>
                                            <a href="BlogDetay.aspx?BLOGID=<%# Eval ("BLOGID") %>"><span></span>DEVAMINI OKU</a>
                                        </div>
                                    </div>
                            </ItemTemplate>
                        </asp:Repeater>



                    </div>
                    <div class="col-md-4 content-right">



                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix" style="text-align: center"></div>
                </div>
            </div>




        </form>

    </div>

    <div id="extraDiv2">
        <div class="wrap">
            <div id="foot">
                <div class="footlinks">
                    <div class="categories">
                        <h3>KATEGORİLER</h3>
                        <ul>
                            <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                    <li><a href="KategoriDetay.Aspx?KATEGORIID=<%# Eval("KATEGORIID") %>"><%#Eval("KATEGORIAD") %></a></li>

                                </ItemTemplate>
                            </asp:Repeater>

                        </ul>
                    </div>
                </div>

                <div class="about">

                    <div class="clearer">&nbsp;</div>
                </div>
            </div>
        </div>
    </div>









</asp:Content>
