using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace SongBookStore.BookStore

{
    public partial class contact : System.Web.UI.Page
    {
        DB_BookStore2Entities dbo = new DB_BookStore2Entities();
        private object ctl;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Mail t = new Mail();
            t.mailNameSurname = TextBox4.Text;
            t.mailAddress = TextBox1.Text;
            t.mailSubject = TextBox2.Text;
            t.mailMessage = TextBox3.Text;
            dbo.Mail.Add(t);
            dbo.SaveChanges();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           

            
        }
    }
}