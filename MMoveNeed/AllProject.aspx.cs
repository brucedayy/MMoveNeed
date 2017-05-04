using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMoveNeed
{
    public partial class AllProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminusername"] == null)
            {
                Response.Redirect("adminlogin.aspx");
            }
        }

        protected void PTJobListView_OnItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (String.Equals(e.CommandName, "DeleteJobDataItem"))
            {
                HiddenField hfuid = (HiddenField)e.Item.FindControl("hfuid");
                int uid = int.Parse(hfuid.Value);
                //DAL.jobData updatejob = new DAL.jobData();
                //updatejob.UpdateJobStatusToOld(uid);
                DAL.jobData deletejob = new DAL.jobData();
                deletejob.DeleteJobDataItem(uid);
            }
        }
        protected void btnDeleteJob_Click(object sender, EventArgs e)
        {
            Button FbtnApprove = (Button)sender;
            FbtnApprove.Text = "已删除";
            FbtnApprove.Enabled = false;
        }
    }
}
