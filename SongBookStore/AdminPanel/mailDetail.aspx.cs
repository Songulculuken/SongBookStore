using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongBookStore.AdminPanel
{
  public partial class mailDetail : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      DB_BookStore2Entities db = new DB_BookStore2Entities();
      int x = int.Parse(Request.QueryString["id"]);
      var mesaj = db.Mail.Find(x);
      TextBox1.Text = mesaj.mailNameSurname;
      TextBox2.Text = mesaj.mailAddress;
      TextBox4.Text = mesaj.mailSubject;
      TextBox3.Text = mesaj.mailMessage;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      Response.Redirect("~/AdminPanel/message.aspx");
    }
  }
}
