using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Move
{
    public partial class FindPTJob : System.Web.UI.Page
    {
        public static string mainjobid = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PTJobListView_OnItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (String.Equals(e.CommandName, "showDetails"))
            {             
                HiddenField hfjobid = (HiddenField)e.Item.FindControl("jobid");
                LinkButton FbtnShowDetails = (LinkButton)e.Item.FindControl("jobdetails");
                Response.Redirect("~/projectDetails.aspx?item=" + hfjobid.Value);
                mainjobid = hfjobid.Value;
            }
        }
        //protected void SetjobID_Click(object sender, EventArgs e)
        //{
        //    mainjobid=
        //}
    }
}