using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMoveNeed
{
    public partial class identifying : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {          
        }  
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (String.Compare(Request.Cookies["yzmcode"].Value, tbxCheckNo.Text, true) != 0)
            {
                Response.Write("<script>alert('验证码错误!')</script>");
            }
            else
            {
                // Response.Write("<script>alert('验证吗正确!!!')</script>");
            }
        }
    }
}
