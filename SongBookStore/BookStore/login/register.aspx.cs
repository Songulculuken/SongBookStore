using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongBookStore.BookStore.login
{
    public partial class register : System.Web.UI.Page
    {
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BookStore/home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DB_BookStore2Entities db = new DB_BookStore2Entities();
            User t = new User();
            t.userName = TextBox1.Text;
            t.userPassword = TextBox2.Text;
            t.userTypeID = Convert.ToInt32(DropDownList1.SelectedValue);
            db.User.Add(t);
            db.SaveChanges();
            Label1.Visible = true;
            Label1.Text = "Kayıt yapıldı";

        }
    }
}