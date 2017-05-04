using Move;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMoveNeed
{
    public partial class projectDetails : System.Web.UI.Page
    {
        public static string jobname;
        public static string employeecount;
        public static string salary;
        public static string jobdetails;
        public static string employername;
        public static string phonenumber;
        public static string address;
        public static string worktime;
        protected void Page_Load(object sender, EventArgs e)
        {
            //string jobid = Request.QueryString["jobID"].ToString();
            //string jobid = "ID000";
            string jobid = Request.QueryString["item"].ToString();
            DAL.jobData jobDataList = new DAL.jobData();
            List<string> jobData = jobDataList.SelectFromjobID(jobid);
            jobname = jobData[1];
            employeecount = jobData[2];
            salary = jobData[3];
            jobdetails = jobData[4];
            worktime = jobData[5];
            employername = jobData[6];
            phonenumber = jobData[7];
            address = jobData[8];
            WorkTimeCheckGroup(worktime);
        }
        private void WorkTimeCheckGroup(string wktime)
        {
            string[] wtcg = wktime.Split('&');
            for (int i = 0; i < wtcg.Length-1; i++)
            {
                if (La1.ID == "L" + wtcg[i])
                    La1.Text = "√";
                if (La2.ID == "L" + wtcg[i])
                    La2.Text = "√";
                if (La3.ID == "L" + wtcg[i])
                    La3.Text = "√";
                if (La4.ID == "L" + wtcg[i])
                    La4.Text = "√";
                if (La5.ID == "L" + wtcg[i])
                    La5.Text = "√";
                if (La6.ID == "L" + wtcg[i])
                    La6.Text = "√";
                if (La7.ID == "L" + wtcg[i])
                    La7.Text = "√";
                if (Lm1.ID == "L" + wtcg[i])
                    Lm1.Text = "√";
                if (Lm2.ID == "L" + wtcg[i])
                    Lm2.Text = "√";
                if (Lm3.ID == "L" + wtcg[i])
                    Lm3.Text = "√";
                if (Lm4.ID == "L" + wtcg[i])
                    Lm4.Text = "√";
                if (Lm5.ID == "L" + wtcg[i])
                    Lm5.Text = "√";
                if (Lm6.ID == "L" + wtcg[i])
                    Lm6.Text = "√";
                if (Lm7.ID == "L" + wtcg[i])
                    Lm7.Text = "√";
                if (Le1.ID == "L" + wtcg[i])
                    Le1.Text = "√";
                if (Le2.ID == "L" + wtcg[i])
                    Le2.Text = "√";
                if (Le3.ID == "L" + wtcg[i])
                    Le3.Text = "√";
                if (Le4.ID == "L" + wtcg[i])
                    Le4.Text = "√";
                if (Le5.ID == "L" + wtcg[i])
                    Le5.Text = "√";
                if (Le6.ID == "L" + wtcg[i])
                    Le6.Text = "√";
                if (Le7.ID == "L" + wtcg[i])
                    Le7.Text = "√";
            }     
        }
    }
}