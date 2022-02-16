using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("user"))
                {
                    Button1.Visible = false;
                    Button2.Visible = false;
                }
                else if(Session["role"].Equals("medic"))
                {
                    Button1.Visible = false;
                    Button2.Visible = false;
                }
                else if (Session["role"].Equals("secretary"))
                {
                    Button1.Visible = false;
                    Button2.Visible = false;
                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }
    }
}