using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongBookStore.AdminPanel
{
  public partial class mailDelete : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      DB_BookStore2Entities db = new DB_BookStore2Entities();
      int x = Convert.ToInt32(Request.QueryString["id"]);
      var mail = db.Mail.Find(x);
      db.Mail.Remove(mail);
      db.SaveChanges();
      Response.Redirect("message.aspx");
    }
  }
}
