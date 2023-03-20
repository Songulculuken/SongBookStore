using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongBookStore.AdminPanel
{
  public partial class NewCategory : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    DB_BookStore2Entities db  = new DB_BookStore2Entities();  
        protected void Button1_Click(object sender, EventArgs e)
        {
           Categories t = new Categories();
           t.categoryName = TextBox1.Text;
           t.categoryDescription = TextBox3.Text;
           t.isTheCategoryActive = CheckBox1.Checked;
           db.Categories.Add(t);  
          db.SaveChanges();
          Response.Redirect("category.aspx");
        }
    }
}
