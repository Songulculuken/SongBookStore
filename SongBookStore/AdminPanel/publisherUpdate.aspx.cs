using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongBookStore.AdminPanel
{
  public partial class publisherUpdate : System.Web.UI.Page
  {
    DB_BookStore2Entities db = new DB_BookStore2Entities();
    protected void Page_Load(object sender, EventArgs e)
    {
      int x = int.Parse(Request.QueryString["id"]);
      if (Page.IsPostBack == false)
      {
        var p = db.Publishers.Find(x);
        TextBox1.Text = p.publisherName;
        TextBox2.Text = p.publisherAddress;
        var country = from c in db.tbl_Country select new { c.countryID, c.countryName };
        DropDownList1.DataSource = country.ToList();
        DropDownList1.DataValueField = "countryID";
        DropDownList1.DataTextField = "countryName";
        DropDownList1.DataBind();
        var city = from c in db.tbl_City select new { c.cityID, c.cityName };
        DropDownList2.DataSource = city.ToList();
        DropDownList2.DataValueField = "cityID";
        DropDownList2.DataTextField = "cityName";
        DropDownList2.DataBind();
        var district = from c in db.tbl_District select new { c.districtID, c.districtName };
        DropDownList3.DataSource = district.ToList();
        DropDownList3.DataValueField = "districtID";
        DropDownList3.DataTextField = "districtName";
        DropDownList3.DataBind();
        TextBox3.Text = p.publisherPhone;
        TextBox4.Text = p.publisherAuthorizedNameSurname;
        TextBox5.Text = p.publisherEmail;
        CheckBox1.Checked = (Convert.ToInt32(p.isThePublisherActive) == 1) ? true : false;
        TextBox8.Text = p.publisherDescription;
        TextBox6.Text = p.publisherPostCode;
      }

    }

        protected void Button1_Click(object sender, EventArgs e)
        {
           int x = int.Parse(Request.QueryString["id"]);
           var p = db.Publishers.Find(x);
           p.publisherName = TextBox1.Text;
           p.publisherAddress= TextBox2.Text;  
           p.countryID = Convert.ToInt32(DropDownList1.SelectedValue);
           p.cityID = Convert.ToInt32(DropDownList2.SelectedValue);
           p.districtID = Convert.ToInt32(DropDownList3.SelectedValue);
           p.publisherPhone = TextBox3.Text;
            p.publisherAuthorizedNameSurname = TextBox4.Text;
           p.publisherEmail= TextBox5.Text;  
           p.isThePublisherActive = CheckBox1.Checked;
           p.publisherDescription = TextBox8.Text;
           p.publisherPostCode = TextBox6.Text; 
           db.SaveChanges();
           Response.Redirect("publisher.aspx");

        }
  }
}
