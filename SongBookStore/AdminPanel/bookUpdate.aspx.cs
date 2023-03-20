using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongBookStore.AdminPanel
{
  public partial class bookUpdate : System.Web.UI.Page
  {
    DB_BookStore2Entities db = new DB_BookStore2Entities();
    protected void Page_Load(object sender, EventArgs e)
    {
      int x = int.Parse(Request.QueryString["id"]);
      if (Page.IsPostBack == false)
      {
        var b = db.Books.Find(x);
        TextBox1.Text = b.bookName;
        TextBox3.Text = b.bookYearOfPublication;
        var publisher = from c in db.Publishers select new { c.publisherID, c.publisherName };
        DropDownList1.DataSource = publisher.ToList();
        DropDownList1.DataValueField = "publisherID";
        DropDownList1.DataTextField = "publisherName";
        DropDownList1.DataBind();
        //b.publisherID = Convert.ToInt32(DropDownList1.SelectedValue);
        TextBox4.Text = Convert.ToString(b.bookPrice);
        TextBox5.Text = Convert.ToString(b.bookPageCount);
        TextBox6.Text = Convert.ToString(b.bookStockQty);
        var language = from c in db.tbl_Languages select new { c.languageID, c.languageName };
        DropDownList2.DataSource = language.ToList();
        DropDownList2.DataValueField = "languageID";
        DropDownList2.DataTextField = "languageName";
        DropDownList2.DataBind();
        //b.languageID = Convert.ToInt32(DropDownList2.Text);
        TextBox8.Text = b.bookDescription;
        CheckBox1.Checked = (Convert.ToInt32(b.isTheBookActive) == 1) ? true : false;
        TextBox9.Text = b.bookCoverPhoto;
        TextBox10.Text = b.bookISBN;
      }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      int x = int.Parse(Request.QueryString["id"]);
      var b = db.Books.Find(x);
      b.bookName = TextBox1.Text;
      b.bookYearOfPublication = TextBox3.Text;
      b.publisherID = Convert.ToInt32(DropDownList1.SelectedValue);
      b.bookPrice = Convert.ToDecimal(TextBox4.Text);
      b.bookPageCount = Convert.ToByte(TextBox5.Text);
      b.bookStockQty = Convert.ToByte(TextBox6.Text);
      b.languageID = Convert.ToInt32(DropDownList2.SelectedValue);
      b.bookDescription = TextBox8.Text;
      b.isTheBookActive = CheckBox1.Checked;
      b.bookCoverPhoto = TextBox9.Text;
      b.bookISBN = TextBox10.Text;
      db.SaveChanges();
      Response.Redirect("book.aspx");
    }
  }
}
