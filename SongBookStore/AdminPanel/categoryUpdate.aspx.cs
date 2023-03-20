using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace SongBookStore.AdminPanel
{
  public partial class categoryUpdate : System.Web.UI.Page
  {
    DB_BookStore2Entities db = new DB_BookStore2Entities();
    protected void Page_Load(object sender, EventArgs e)
    {
      int x = int.Parse(Request.QueryString["id"]);
      if (Page.IsPostBack == false)
      {
        var category = db.Categories.Find(x);
        TextBox1.Text = category.categoryName;
        TextBox3.Text = category.categoryDescription;
        CheckBox1.Checked = (Convert.ToInt32(category.isTheCategoryActive) == 1) ? true : false;
      }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      int x = int.Parse(Request.QueryString["id"]);
      var category = db.Categories.Find(x);
      category.categoryName = TextBox1.Text;
      category.categoryDescription = TextBox3.Text;
      category.isTheCategoryActive = CheckBox1.Checked;
      db.SaveChanges();
      Response.Redirect("category.aspx");
    }
  }
}
