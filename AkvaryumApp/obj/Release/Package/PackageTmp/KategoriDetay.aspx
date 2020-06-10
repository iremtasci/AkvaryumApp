<%@ Page Title="" Language="C#" MasterPageFile="~/Giris.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="AkvaryumApp.KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="content-grids">
            <div class="col-md-8 content-main">
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
        </div>
        <div class="col-md-4 content-right">
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
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>



</asp:Content>

