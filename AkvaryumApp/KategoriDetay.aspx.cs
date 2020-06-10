using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AkvaryumApp.Entity;
namespace AkvaryumApp
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        BlogBalikEntities db = new BlogBalikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
            var bloglar = db.TBLBLOG.Where(x => x.BLOGKATEGORI == id).ToList();
            Repeater1.DataSource = bloglar;
            Repeater1.DataBind();

            var bloglar2 = db.TBLKATEGORI.ToList();
            Repeater2.DataSource = bloglar2;
            Repeater2.DataBind();


        }
    }
}