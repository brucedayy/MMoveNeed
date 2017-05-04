using MMoveNeed;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Move
{
    public partial class PublishPTJob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (SessionControl.username=="")
            //{
            //    Response.Redirect("login.aspx");
            //}
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }          
        }
         /// <summary>
         /// 
         /// </summary>
        private void AddJobToJobData()
        {           
            string jobname = jobName.Text,
                employername = employerName.Text,
                Salary = salary.Text + dropClassify.SelectedValue.ToString(),
                EmployeeCount = employeecount.Text,
                phonenumber = phoneNumber.Text,
                Address = address.Text;
            string jobdetails = jobDetails.Text;
            string worktime = GetWorkTime();
            string jobabstract = null;
            if (jobdetails.Length > 100)
                jobabstract = jobdetails.Substring(0, 100);
            else
                jobabstract = jobdetails;
            jobabstract += "...";
            MMoveNeed.DAL.jobData addjob = new MMoveNeed.DAL.jobData();
            if (addjob.InsertJobData(jobname, employername, EmployeeCount, jobdetails, jobabstract, Salary, worktime, phonenumber, Address, "no"))
                Response.Redirect("index.aspx");
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Unnamed32_Click(object sender, EventArgs e)
        {
            if (jobDetails.Text.Length >600)
            {
                Response.Write("<script>alert('字数超过600!')</script>");
                return;
            }
            if (String.Compare(Request.Cookies["yzmcode"].Value, tbxCheckNo.Text, true) != 0)
            {
                Response.Write("<script>alert('验证码错误!')</script>");
                return;
            }          
            else
            {
                AddJobToJobData();
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        private string GetWorkTime()
        {
            //string[] checkgroupM = { "m7", "m1", "m2", "m3", "m4", "m5", "m6" };
            //string[] checkgroupA = { "a7", "a1", "a2", "a3", "a4", "a5", "a6" };
            //string[] checkgroupE = { "e7", "e1", "e2", "e3", "e4", "e5", "e6" };
            string[] checkgroupM = new string[7];
            string[] checkgroupA = new string[7];
            string[] checkgroupE = new string[7];
            if (m7.Checked == true) checkgroupM[0] = "m7";
            if (m1.Checked == true) checkgroupM[1] = "m1";
            if (m2.Checked == true) checkgroupM[2] = "m2";
            if (m3.Checked == true) checkgroupM[3] = "m3";
            if (m4.Checked == true) checkgroupM[4] = "m4";
            if (m5.Checked == true) checkgroupM[5] = "m5";
            if (m6.Checked == true) checkgroupM[6] = "m6";
            if (a7.Checked == true) checkgroupA[0] = "a7";
            if (a1.Checked == true) checkgroupA[1] = "a1";
            if (a2.Checked == true) checkgroupA[2] = "a2";
            if (a3.Checked == true) checkgroupA[3] = "a3";
            if (a4.Checked == true) checkgroupA[4] = "a4";
            if (a5.Checked == true) checkgroupA[5] = "a5";
            if (a6.Checked == true) checkgroupE[6] = "a6";
            if (e7.Checked == true) checkgroupE[0] = "e7";
            if (e1.Checked == true) checkgroupE[1] = "e1";
            if (e2.Checked == true) checkgroupE[2] = "e2";
            if (e3.Checked == true) checkgroupE[3] = "e3";
            if (e4.Checked == true) checkgroupE[4] = "e4";
            if (e5.Checked == true) checkgroupE[5] = "e5";
            if (e6.Checked == true) checkgroupE[6] = "e6";
            string result = null;
            for (int i = 0; i < 7; i++)
            {
                if (checkgroupA[i] != null)
                    result += checkgroupA[i]+"&";
                if (checkgroupM[i] != null)
                    result += checkgroupM[i]+"&";
                if (checkgroupE[i] != null)
                    result += checkgroupE[i]+"&";
            }
            return result;
        }
           
    }
}