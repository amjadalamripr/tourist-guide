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
    public partial class restorpassword : System.Web.UI.Page
    {
        CTUser op = new CTUser();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                MBError.Text = "";



                string em = "assertouristguide@gmail.com";
                string ps = "As123456!";

                string toemail = Email.Text.Trim();
                if (op.load(toemail))
                {
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress(em);
                    msg.To.Add(toemail);
                    msg.Subject = "Reset Password";
                    msg.Body = op.Password;
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
                    MBError.Text = "Reset Password completed,  check your email";
                }
                else
                {
                    MBError.Text = " This email does not exist    ";
                }

            }
            catch (Exception ex)
            {
                MBError.Text = "Error";
            }
        }
    }
}