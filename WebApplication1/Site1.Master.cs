using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //log in
                    LinkButton2.Visible = true; //sign up

                    LinkButton3.Visible = false; //log out
                    LinkButton7.Visible = false; //hello user

                    LinkButton6.Visible = true; //admin log in
                    LinkButton11.Visible = true; //medic log in
                    LinkButton12.Visible = true; //secretary log in
                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //log in
                    LinkButton2.Visible = false; //sign up

                    LinkButton3.Visible = true; //log out
                    HyperLink2.Visible = true; //user panel
                }
                else if(Session["role"].Equals("medic"))
                {
                    LinkButton1.Visible = false; //log in
                    LinkButton2.Visible = false; //sign up

                    LinkButton3.Visible = true; //log out
                    HyperLink1.Visible = true; //medic panel

                    LinkButton6.Visible = false; //admin log in
                    LinkButton11.Visible = false; //medic log in
                    LinkButton12.Visible = false; //secretary log in
                    Staff.Visible = false;
                    Panel1.Visible = true; //text you are connected
                    LabelAboutUsHeader.Text = "Hello Dr. " + Session["medicname"].ToString() + ", you are connected!";
                }
                else if (Session["role"].Equals("secretary"))
                {
                    LinkButton1.Visible = false; //log in
                    LinkButton2.Visible = false; //sign up

                    LinkButton3.Visible = true; //log out
                    HyperLink3.Visible = true; //secretary panel

                    LinkButton6.Visible = false; //admin log in
                    LinkButton11.Visible = false; //medic log in
                    LinkButton12.Visible = false; //secretary log in
                    Staff.Visible = false;
                    Panel1.Visible = true; //text you are connected
                    LabelAboutUsHeader.Text = "Hello " + Session["secretaryname"].ToString() + ", you are connected!";
                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("mediclogin.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("secretarylogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; //log in
            LinkButton2.Visible = true; //sign up

            LinkButton3.Visible = false; //log out
            LinkButton7.Visible = false; //hello user

            LinkButton6.Visible = true; //admin log in
            LinkButton11.Visible = true; //medic log in
            LinkButton12.Visible = true; //secretary log in

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("medicpanel.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("secretarypatientmanagement.aspx");
        }
    }
}