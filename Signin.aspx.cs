using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TouristGuide
{
    public partial class Signin : System.Web.UI.Page
    {

        CTUser op = new CTUser();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (op.validate(Username.Text, Password.Text))
            {
                Session["UserId"] = op.UserId;
                if (op.UserType == "admin")
                {
                    Response.Redirect("./PageAdmin/default.aspx");
                }
                else if (op.UserType == "sector")
                {
                    Response.Redirect("./PageSector/default.aspx");
                }
                else if (op.UserType == "tourist")
                {
                    Response.Redirect("./PageTourist/default.aspx");
                }
            }
            else
                MBError.Text = "Username or password is error";
        }
    }
}