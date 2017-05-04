using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Move
{
    public partial class index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                log.Text = Session["username"].ToString().Substring(0, 3) + "..";
                reg.Text = "注销";

            }
        }

        protected void reg_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {                              
                //reg.Text = "注销";
                Session["username"] = null;
                log.Text = "登陆";
                reg.Text = "注册";
            }
            else
            {
                Response.Redirect("Registration.aspx");
            }
        }

        protected void log_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                log.Text = Session["username"].ToString().Substring(0, 3) + "..";
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}