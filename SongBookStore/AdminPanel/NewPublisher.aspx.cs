using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongBookStore.AdminPanel
{
  public partial class NewPublisher : System.Web.UI.Page
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
        var city = from c in dbEntity.tbl_City select new { c.cityID, c.cityName };
        DropDownList2.DataSource = city.ToList();
        DropDownList2.DataValueField = "cityID";
        DropDownList2.DataTextField = "cityName";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, "Seç");
      }
      if (!IsPostBack)
      {
        var district = from c in dbEntity.tbl_District select new { c.districtID, c.districtName };
        DropDownList3.DataSource = district.ToList();
        DropDownList3.DataValueField = "districtID";
        DropDownList3.DataTextField = "districtName";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, "Seç");
      }
    }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Publishers p = new Publishers();
            p.publisherName = TextBox1.Text;
            p.publisherAddress = TextBox2.Text;
            p.countryID = Convert.ToInt32(DropDownList1.SelectedValue);
            p.cityID = Convert.ToInt32(DropDownList2.SelectedValue);
            p.districtID = Convert.ToInt32(DropDownList3.SelectedValue);
            p.publisherPhone = TextBox3.Text; 
            p.publisherAuthorizedNameSurname = TextBox4.Text;
            p.publisherEmail = TextBox5.Text;
            p.isThePublisherActive = CheckBox1.Checked;
            p.publisherDescription = TextBox8.Text;
            p.publisherPostCode = TextBox6.Text;
            dbEntity.Publishers.Add(p);
            dbEntity.SaveChanges();
            Response.Redirect("publisher.aspx");
        }
  }
}
