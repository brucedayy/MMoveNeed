using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMoveNeed
{
    public partial class employeeRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string userName = username.Text,
                passWord = password.Text,
                phoneNumber = phonenumber.Text,
                Name = name.Text,
                Email = email.Text;
            DAL.employee addEmployee = new DAL.employee();
            addEmployee.InsertEmployee(userName, passWord, Name, phoneNumber, Email, "no");
        }
    }
}