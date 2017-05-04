using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MMoveNeed.DAL
{
    public class employer
    {
        #region
        private string _username;
        private string _password;
        private string _name;
        private string _companyName;
        private string _phonenumber;
        private string _address;
        private string _email;
        #endregion

        static string connString = DBHelper.connStr;

        SqlConnection conn = new SqlConnection(connString);
        #region
        /// <summary>
        /// 
        /// </summary>
        public string UserName
        {
            set { _username = value; }
            get { return _username; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string Password
        {
            set { _password = value; }
            get { return _password; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string Name
        {
            set { _name = value; }
            get { return _name; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string CompanyName
        {
            set { _companyName = value; }
            get { return _companyName; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string PhoneNumber
        {
            set { _phonenumber = value; }
            get { return _phonenumber; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string Address
        {
            set { _address = value; }
            get { return _address; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string Email
        {
            set { _email = value; }
            get { return _email; }
        }
        /// <summary>
         /// 
         /// </summary>
         /// <param name="username"></param>
         /// <param name="password"></param>
         /// <param name="name"></param>
         /// <param name="phonenumber"></param>
         /// <returns></returns>
        #endregion

        public bool InsertEmployer(string username, string password, string name, string companyname,string phonenumber,string address,string approvestatus)
        {
            conn.Open();
            string cmdAdd = "INSERT INTO employer(username,password,name,companyname,phonenumber,address,approveStatus) " +
                "VALUES('" + username + "','" + password + "','" + name + "','" + companyname + "','" + phonenumber + "','" + address + "','" + approvestatus + "')";
            SqlCommand cmd = new SqlCommand(cmdAdd,conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }

        public bool PairUserNamePassWord(string username,string password)
        {
            conn.Open();
            string cmdSelect = "SELECT username,password FROM employer WHERE approveStatus='yes'";
            SqlDataAdapter da = new SqlDataAdapter(cmdSelect, conn);
            DataSet ds = new DataSet();
            da.Fill(ds,"employer");
            foreach (DataRow row in ds.Tables["employer"].Rows)
            {
                if (row[0].ToString() == username && row[1].ToString() == password)
                    return true;               
            }
            return false;
        }

        public bool UpdateEmployerStatus(int uid)
        {
            conn.Open();
            string cmdUpdate= "UPDATE employer SET approveStatus='yes' WHERE uid=" + uid;
            SqlCommand cmd = new SqlCommand(cmdUpdate, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }

    }
}
