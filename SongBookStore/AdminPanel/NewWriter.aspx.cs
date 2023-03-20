using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongBookStore.AdminPanel
{
  public partial class NewWriter : System.Web.UI.Page
  {
    DB_BookStore2Entities dbEntity = new DB_BookStore2Entities();
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
        var country = from c in dbEntity.tbl_Country select new { c.countryID, c.countryName };
        DropDownList1.DataSource = country.ToList();
        DropDownList1.DataValueField = "countryID";
        DropDownList1.DataTextField = "countryName";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "Seç");
      }
      if (!IsPostBack)
      {
        var gender = from c in dbEntity.Genders select new { c.genderID, c.genderName };
        DropDownList2.DataSource = gender.ToList();
        DropDownList2.DataValueField = "genderID";
        DropDownList2.DataTextField = "genderName";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, "Seç");
      }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      Writers w = new Writers();
      w.writerNameSurname = TextBox1.Text;
      w.countryID = Convert.ToInt32(DropDownList1.SelectedValue);
      w.genderID = Convert.ToInt32(DropDownList2.SelectedValue);
      w.isTheWriterActive = CheckBox1.Checked;
      w.writerDescription = TextBox8.Text;
      dbEntity.Writers.Add(w);
      dbEntity.SaveChanges();
      Response.Redirect("writer.aspx");
    }
  }
}
