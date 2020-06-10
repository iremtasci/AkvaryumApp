using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AkvaryumApp.Entity;

namespace AkvaryumApp
{
    public partial class Hakkında : System.Web.UI.Page
    {
        BlogBalikEntities db = new BlogBalikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TBLHAKKIMIZDA.ToList();
            Repeater1.DataBind();
        }
    }
}