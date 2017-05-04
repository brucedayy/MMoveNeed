using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMoveNeed
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private void AddEmployerToTable()
        {
            string Username = username.Text,
                Password = password.Text,
                EmployerName = employername.Text,
                CompanyName = companyname.Text,
                PhoneNumber = phonenumber.Text,
                Address = address.Text;
            string approveStatus = "no";
            //MMoveNeed.DAL.jobData addjob = new MMoveNeed.DAL.jobData();
            DAL.employer addEmployerUser = new DAL.employer();
            addEmployerUser.InsertEmployer(Username, Password, EmployerName, CompanyName, PhoneNumber, Address, approveStatus);
        }

        protected void Unnamed15_Click(object sender, EventArgs e)
        {
            if (String.Compare(Request.Cookies["yzmcode"].Value, tbxCheckNo.Text, true) != 0)
            {
                Response.Write("<script>alert('验证码错误!')</script>");
            }
            else
            {
                AddEmployerToTable();
            }
        }
    }
}