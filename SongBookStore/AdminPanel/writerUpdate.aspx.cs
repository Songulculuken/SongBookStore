using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongBookStore.AdminPanel
{
  public partial class writerUpdate : System.Web.UI.Page
  {
    DB_BookStore2Entities db = new DB_BookStore2Entities();
    protected void Page_Load(object sender, EventArgs e)
    {
      int x = int.Parse(Request.QueryString["id"]);
      if (Page.IsPostBack == false)
      {
        var w = db.Writers.Find(x);
        TextBox1.Text = w.writerNameSurname;
        var country = from c in db.tbl_Country select new { c.countryID, c.countryName };
        DropDownList1.DataSource = country.ToList();
        DropDownList1.DataValueField = "countryID";
        DropDownList1.DataTextField = "countryName";
        DropDownList1.DataBind();
        var gender = from c in db.Genders select new { c.genderID, c.genderName };
        DropDownList2.DataSource = gender.ToList();
        DropDownList2.DataValueField = "genderID";
        DropDownList2.DataTextField = "genderName";
        DropDownList2.DataBind();
        //b.languageID = Convert.ToInt32(DropDownList2.Text);
        CheckBox1.Checked = (Convert.ToInt32(w.isTheWriterActive) == 1) ? true : false;
        TextBox8.Text = w.writerDescription;
      }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      int x = int.Parse(Request.QueryString["id"]);
      var w = db.Writers.Find(x);
      w.writerNameSurname = TextBox1.Text;
      w.countryID = Convert.ToInt32(DropDownList1.SelectedValue);
      w.genderID = Convert.ToInt32(DropDownList2.SelectedValue);
      w.isTheWriterActive = CheckBox1.Checked;
      w.writerDescription = TextBox8.Text;
      db.SaveChanges();
      Response.Redirect("writer.aspx");

    }
  }
}
