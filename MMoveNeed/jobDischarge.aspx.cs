using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMoveNeed
{
    public partial class jobDischarge : System.Web.UI.Page
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
            if (String.Equals(e.CommandName, "UpdateJobStatusToOld"))
            {
                HiddenField hfuid = (HiddenField)e.Item.FindControl("hfuid");
                int uid = int.Parse(hfuid.Value);
                DAL.jobData updatejob = new DAL.jobData();
                updatejob.UpdateJobStatusToOld(uid);
            }
        }
        protected void btnDischarge_Click(object sender, EventArgs e)
        {
            Button FbtnApprove = (Button)sender;
            FbtnApprove.Text = "已下架";
            FbtnApprove.Enabled = false;
        }
    }
}