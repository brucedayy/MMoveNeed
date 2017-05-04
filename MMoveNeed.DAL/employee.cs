using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MMoveNeed.DAL
{
    public class employee
    {
        #region
        private string _username;
        private string _password;
        private string _name;
        private string _phonenumber;
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
        public string PhoneNumber
        {
            set { _phonenumber = value; }
            get { return _phonenumber; }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <param name="name"></param>
        /// <param name="phonenumber"></param>
        /// <returns></returns>
        /// 
        #endregion
        public bool InsertEmployee(string username, string password, string name, string phonenumber, string email, string approvestatus)
        {
            conn.Open();
            string cmdAdd = "INSERT INTO employee(username,password,name,phonenumber,email,approveStatus) " +
                "VALUES('" + username + "','" + password + "','" + name + "','" + phonenumber + "','" + email + "','" + approvestatus + "')";
            SqlCommand cmd = new SqlCommand(cmdAdd, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }

        public bool PairUserNamePassWord(string username, string password)
        {
            conn.Open();
            string cmdSelect = "SELECT username,password FROM employee";
            SqlDataAdapter da = new SqlDataAdapter(cmdSelect, conn);
            DataSet ds = new DataSet();
            da.Fill(ds, "employee");
            foreach (DataRow row in ds.Tables["employee"].Rows)
            {
                if (row[0].ToString() == username && row[1].ToString() == password)
                    return true;
            }
            return false;
        }

    }
}
