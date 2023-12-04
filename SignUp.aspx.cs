using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TouristGuide
{
    public partial class SignUp : System.Web.UI.Page
    {
        CTUser op = new CTUser();
        CTTourist stu = new CTTourist();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            try
            {
              MBError.Text = "";
                if (op.count(Username.Text) > 0)
                {
                    MBError.Text = "This Username already exist";
                    return;
                }
                if (TelephoneNumber.Text.Length != 10)
                {
                    MBError.Text = "the phone length must be 10 digital";
                    return;
                }
                op.FullName = FullName.Text;
                op.Username = Username.Text;
                op.Password = Password.Text;
                op.Gender = DGender.SelectedValue;
                op.Age = Age.Text;
                op.Address = Address.Text;
                op.Email = Email.Text;
                op.TelephoneNumber = TelephoneNumber.Text;
            
                op.UserType = "tourist";
               op.Active = "active";
              if(  op.insertMethod()== "saved..")
                {
                    int id = op.getmax();
                    stu.TouristId = id;
                   if( stu.insertMethod() == "saved..")
                    {
                        MBError.Text = "Registered successfully";
                        //Button1.Visible = true;
                    }
                }
               

                
            }

            catch (Exception ex)
            {

            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Button1.Visible = false;
        //    Response.Redirect("SignUp.aspx");
        //}
    }
}