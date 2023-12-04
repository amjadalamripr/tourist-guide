using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TouristGuide
{
    public partial class Contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndend_Click(object sender, EventArgs e)
        {

            try
            {
                string em = "assertouristguide@gmail.com";
                string ps = "As123456!";
                MBError.Text = "";

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress(em);
                msg.To.Add(em);
                msg.Subject = name.Text;
                msg.Body = "the email: " + email.Text + "subject: " + subject.Text + " the message:" + message.Text;
                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = em; //Your Email ID  
                ntwd.Password = ps; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                MBError.Text = "Email send Successfully";
            }
            catch (Exception ex)
            {
                MBError.Text = "Error";
            }
        }
    }
}