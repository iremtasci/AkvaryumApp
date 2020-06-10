using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AkvaryumApp.Entity;

namespace AkvaryumApp.AdminSayfalar
{
    public partial class mesajSil : System.Web.UI.Page
    {
        BlogBalikEntities db = new BlogBalikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["MESAJID"]);
            var mesaj = db.TBLILETISIM.Find(x);
            db.TBLILETISIM.Remove(mesaj);
            db.SaveChanges();
            Response.Redirect("mesajlar.Aspx");
        }
    }
}