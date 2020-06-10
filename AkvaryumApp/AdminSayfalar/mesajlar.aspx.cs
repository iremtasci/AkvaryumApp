using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AkvaryumApp.Entity;

namespace AkvaryumApp.AdminSayfalar
{
    public partial class mesajlar : System.Web.UI.Page
    {
        BlogBalikEntities db = new BlogBalikEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            var mesajlar = (from x in db.TBLILETISIM
                            select new
                            {
                                x.MESAJID,
                                x.ADSOYAD,
                                x.MAIL,
                                x.TELEFON,
                                x.KONU,
                                x.MESAJ
                            }).ToList();

            Repeater1.DataSource = mesajlar;
            Repeater1.DataBind();

        }
    }
}