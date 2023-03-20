using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongBookStore.AdminPanel
{
  public partial class NewBook : System.Web.UI.Page
  {
    DB_BookStore2Entities dbEntity = new DB_BookStore2Entities();
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
        var publisher= from c in dbEntity.Publishers select new { c.publisherID, c.publisherName };
        DropDownList1.DataSource = publisher.ToList();
        DropDownList1.DataValueField = "publisherID";
        DropDownList1.DataTextField = "publisherName";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "Seç");
      }
      if (!IsPostBack)
      {
        var language = from c in dbEntity.tbl_Languages select new { c.languageID, c.languageName };
        DropDownList2.DataSource = language.ToList();
        DropDownList2.DataValueField = "languageID";
        DropDownList2.DataTextField = "languageName";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, "Seç");
      }

   
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      Books a = new Books();
      a.bookName = TextBox1.Text;
      a.bookYearOfPublication = TextBox3.Text;
      a.publisherID = Convert.ToInt32(DropDownList1.SelectedValue);
      a.bookPrice = Convert.ToDecimal(TextBox4.Text);
      a.bookPageCount = Convert.ToByte(TextBox5.Text);
      a.bookStockQty = Convert.ToByte(TextBox6.Text);
      a.languageID = Convert.ToInt32(DropDownList2.SelectedValue);
      a.bookDescription = TextBox8.Text;
      a.isTheBookActive = CheckBox1.Checked;
      a.bookCoverPhoto = TextBox9.Text;
      a.bookISBN = TextBox10.Text;
      dbEntity.Books.Add(a);
      dbEntity.SaveChanges();
      Response.Redirect("book.aspx");


    }
  }
}
