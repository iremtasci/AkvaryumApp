using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AkvaryumApp.Entity;


namespace AkvaryumApp.AdminSayfalar
{
    public partial class Bloglar : System.Web.UI.Page
    {
        BlogBalikEntities db = new BlogBalikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Session["KULLANICI"].ToString());
            if (Session["KULLANICI"] == null)
            {
                Response.Redirect("~/Login.Aspx");
            }
            else
            {
                
            }
            Repeater1.DataSource = db.TBLBLOG.ToList();
            Repeater1.DataBind();

            }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}