using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AkvaryumApp.Entity;

namespace AkvaryumApp
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        BlogBalikEntities db = new BlogBalikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var bloglar = db.TBLBLOG.ToList();
            Repeater1.DataSource = bloglar;
            Repeater1.DataBind();

            var bloglar2 = db.TBLKATEGORI.ToList();
            Repeater2.DataSource = bloglar2;
            Repeater2.DataBind();


        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {

        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("arama.aspx?txtCumle=" + txtCumle.Text.Trim());
        }
    }
}