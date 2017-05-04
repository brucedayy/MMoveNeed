using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MMoveNeed.DAL
{
    public class jobData
    {
        #region
        private string _jobID;
        private string _jobName;
        private string _employerName;
        private string _employerCount;
        private string _jobDetails;
        private string _jobAbstract;
        private string _salary;
        private string _workTime;
        private string _phoneNumber;
        private string _address;
        private string _jobApplyTime;
        private string _jobPublishTime;
        private string _approveStatus;
        #endregion     
        static string connString = DBHelper.connStr;

        SqlConnection conn = new SqlConnection(connString);
        #region
        /// <summary>
        /// JobID
        /// </summary>
        public string JobID
        {
            set { _jobID = value; }
            get { return _jobID; }
        }
        /// <summary>
        /// JobName
        /// </summary>
        public string JobName
        {
            set { _jobName = value; }
            get { return _jobName; }
        }
        /// <summary>
        /// EmployerName
        /// </summary>
        public string EmployerName
        {
            set { _employerName = value; }
            get { return _employerName; }
        }
        /// <summary>
        /// EmployerCount
        /// </summary>
        public string EmployerCount
        {
            set { _employerCount = value; }
            get { return _employerCount; }
        }
        /// <summary>
        /// JobDetails
        /// </summary>
        public string JobDetails
        {
            set { _jobDetails = value; }
            get { return _jobDetails; }
        }
        /// <summary>
        /// JobAbstract
        /// </summary>
        public string JobAbstract
        {
            set { _jobDetails = value; }
            get { return _jobAbstract; }
        }
        /// <summary>
        /// Salary
        /// </summary>
        public string Salary
        {
            set { _salary = value; }
            get { return _salary; }
        }
        /// <summary>
        /// WorkTime
        /// </summary>
        public string WorkTime
        {
            set { _workTime = value; }
            get { return _workTime; }
        }
        /// <summary>
        /// PhoneNumber
        /// </summary>
        public string PhoneNumber
        {
            set { _workTime = value; }
            get { return _workTime; }
        }
        /// <summary>
        /// Address
        /// </summary>
        public string Address
        {
            set { _address = value; }
            get { return _address; }
        }
        /// <summary>
        /// JobApplyTime
        /// </summary>
        public string JobApplyTime
        {
            set { _jobApplyTime = value; }
            get { return _jobApplyTime; }
        }
        /// <summary>
        /// JobPublishTime
        /// </summary>
        public string JobPublishTime
        {
            set { _jobPublishTime = value; }
            get { return _jobPublishTime; }
        }
        /// <summary>
        /// ApproveStatus
        /// </summary>
        public string approveStatus
        {
            set { _approveStatus = value; }
            get { return _approveStatus; }
        }
        #endregion
        public bool InsertJobData( string jobname, string employername, string employeecount, string jobdetails,string jobabstract, 
            string salary,string worktime,string phonenumber,string address,string approvestatus)
        {
            conn.Open();
            JobID = DateTime.Now.ToString() + DateTime.Now.Millisecond.ToString();
            string cmdAdd = "INSERT INTO jobData(jobName,employerName,employeeCount,jobDetails,jobAbstract,salary,workTime,phoneNumber,address,approveStatus,username,jobID,jobApplyTime) " +
                "VALUES('" + jobname + "','" + employername + "','" + employeecount
                + "','" + jobdetails + "','" + jobabstract + "','" + salary + "','" + worktime + "','" + phonenumber + "','" + address + "','" + approvestatus + "','" + "usernametest" + "','" + JobID + "','" + DateTime.Now.ToString() + "')";
            SqlCommand cmd = new SqlCommand(cmdAdd,conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }

        public bool UpdateJobStatus(int uid)
        {
            conn.Open();
            string cmdUpdate = "UPDATE jobData SET approveStatus='yes' WHERE uid=" + uid;
            SqlCommand cmd = new SqlCommand(cmdUpdate, conn);
            cmd.ExecuteNonQuery();            
            conn.Close();
            InsertPublishTime();
            return true;
        }

        public bool DeleteJobDataItem(int uid)
        {
            conn.Open();
            string cmdDelete = "DELETE FROM jobData WHERE uid=" + uid;
            SqlCommand cmd = new SqlCommand(cmdDelete, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }

        public bool UpdateJobStatusToOld(int uid)
        {
            conn.Open();
            string cmdUpdate = "UPDATE jobData SET approveStatus='old' WHERE uid=" + uid;
            SqlCommand cmd = new SqlCommand(cmdUpdate, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            InsertPublishTime();
            return true;
        }

        private bool InsertPublishTime()
        {
            conn.Open();
            string cmdInsert = "INSERT INTO jobData(jobPublishTime) " +
                "VALUES('" + DateTime.Now.ToString() + "')";
            SqlCommand cmd = new SqlCommand(cmdInsert, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }

        public List<string> SelectFromjobID(string jobid)
        {
            conn.Open();
            string cmdSelect = "SELECT jobID,jobName,employeeCount,salary,jobDetails,workTime,employerName,phoneNumber,address FROM jobData WHERE jobID='" + jobid + "'";
            SqlCommand cmd = new SqlCommand(cmdSelect, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            List<string> result = new List<string>();
            while (reader.Read())
            {
                for (int i = 0; i < 9; i++)
                {
                    result.Add(reader[i].ToString());
                }
            }
            return result;
        }
    }
}
