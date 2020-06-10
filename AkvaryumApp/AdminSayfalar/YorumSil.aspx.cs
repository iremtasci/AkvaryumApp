using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AkvaryumApp.Entity;

namespace AkvaryumApp.AdminSayfalar
{
    public partial class YorumSil : System.Web.UI.Page
    {
        BlogBalikEntities db = new BlogBalikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            int x = Convert.ToInt32(Request.QueryString["YORUMID"]);
            var yorum = db.TBLYORUM.Find(x);
            db.TBLYORUM.Remove(yorum);
            db.SaveChanges();
            Response.Redirect("Yorumlar.Aspx");
        }
    }
}