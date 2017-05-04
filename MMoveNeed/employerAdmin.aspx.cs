using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMoveNeed
{
    public partial class employerAdmin : System.Web.UI.Page
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
            if (String.Equals(e.CommandName, "UpdateJobStatus"))
            {       
                HiddenField hfuid = (HiddenField)e.Item.FindControl("hfuid");           
                int uid = int.Parse(hfuid.Value);                           
                DAL.employer updateemployer = new DAL.employer();
                updateemployer.UpdateEmployerStatus(uid);
            }
        }
        protected void btnApprove_Click(object sender, EventArgs e)
        {
            Button FbtnApprove = (Button)sender;
            FbtnApprove.Text = "已批准";
            FbtnApprove.Enabled = false;
        }
    }
}