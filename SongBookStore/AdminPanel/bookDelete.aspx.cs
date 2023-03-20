using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongBookStore.AdminPanel
{
  public partial class bookDelete : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      DB_BookStore2Entities db = new DB_BookStore2Entities();
      int x = Convert.ToInt32(Request.QueryString["id"]);
      var books = db.Books.Find(x);
      db.Books.Remove(books);
      db.SaveChanges();
      Response.Redirect("book.aspx");
    }
  }
}
