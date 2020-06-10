using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AkvaryumApp.Entity;

namespace AkvaryumApp.KullaniciSayfalar
{
    public partial class Blog : System.Web.UI.Page
    {
        BlogBalikEntities db = new BlogBalikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KULLANICI"] == null)
            {
                Response.Redirect("~/KullaniciLogin.Aspx");
            }
            else
            {
                Response.Write("Hoşgeldiniz: " + Session["KULLANICI"].ToString());
            }
            Repeater1.DataSource = db.TBLBLOG.ToList();
            Repeater1.DataBind();
        }
    }
}