using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMoveNeed
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private void LoginTest()
        {
            string uname = username.Text,
               pword = password.Text;
            //DAL.employer pairEmployer = new DAL.employer();
            //DAL.employee pairEmployee = new DAL.employee();
            //if (pairEmployer.PairUserNamePassWord(uname, pword))
            if(uname=="aa7910410"&&pword=="d7910410410")
            {
                Session["adminusername"] = uname;
                Response.Redirect("jobDataAdmin.aspx");
            }
            //if (pairEmployee.PairUserNamePassWord(uname, pword))
            //{
            //    Session["username"] = uname;
            //    Response.Redirect("Registration.aspx");
            //}            
            //Session["username"] = uname;                   
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            if (String.Compare(Request.Cookies["yzmcode"].Value, tbxCheckNo.Text, true) != 0)
            {
                Response.Write("<script>alert('验证码错误!')</script>");
            }
            else
            {
                LoginTest();
            }
        }
    }
}