using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AkvaryumApp.Entity;
using System.Data.SqlClient;
using System.Data;

namespace AkvaryumApp
{
    public partial class arama : System.Web.UI.Page
    {
        BlogBalikEntities db = new BlogBalikEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            string txtCumle = Request.QueryString["txtCumle"].ToString();
            SqlConnection baglanti = new SqlConnection("Data Source = DESKTOP-PELFJUH\\IREM2;Initial Catalog=BlogBalik; Integrated Security=True;");
            baglanti.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select * from TBLBLOG  where BLOGBASLIK like '%" + txtCumle + "%'", baglanti);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();


           
        }

    }
}