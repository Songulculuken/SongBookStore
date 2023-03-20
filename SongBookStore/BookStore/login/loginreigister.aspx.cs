using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SongBookStore.BookStore.login
{
    public partial class loginreigister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection("Server = DESKTOP-7OTS1EG; Database = DB_BookStore2; Trusted_Connection = True;");
            SqlCommand cmd = new SqlCommand("select * from [User] where userName = '" + TextBox1.Text + "' and userPassword = '" + TextBox2.Text + "'", cnn);
            cnn.Open();

            
            
             SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {

                while (reader.Read())
                {
                    Session.Add("userName", reader[1].ToString());
                    Session.Add("userPassword", reader[2].ToString());

                    string tip = reader[3].ToString();
                    if (tip == "1")
                    {
                        Response.Redirect("~/AdminPanel/book.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/BookStore/home.aspx");
                       
                    }

                }
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Kullanıcı Bulunamadı";


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BookStore/home.aspx");
        }
    }
}