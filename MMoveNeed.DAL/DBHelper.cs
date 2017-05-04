using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace MMoveNeed.DAL
{
    /// <summary>
    /// Job Insert,Delete,Select,Alter
    /// </summary>
    class DBHelper
    {
        //static string connString = "";
        //static SqlConnection conn = new SqlConnection(connString);   
        ///// <summary>
        ///// Insert
        ///// </summary>
        ///// <returns></returns>
        //bool InsertEmployee(string username, string password, string name, string phonenumber)        
        //{
        //    conn.Open();
        //    string cmdAdd = "INSERT INTO employee(username,password,name,phonenumber) " +
        //        "VALUES('" + username + "','" + password + "','" + name + "','" + phonenumber + "')";
        //    SqlCommand cmd = new SqlCommand(cmdAdd);
        //    cmd.ExecuteNonQuery();
        //    conn.Close();
        //    return true;
        //}
        ///// <summary>
        ///// Delete
        ///// </summary>
        ///// <returns></returns>
        //bool DeleteEmployee()
        //{
        //    conn.Open();           
        //    conn.Close();
        //    return true;
        //}
        ///// <summary>
        ///// Select
        ///// </summary>
        ///// <returns></returns>
        //bool SelectJobEmployee(string username)
        //{

        //    return true;
        //}                         
        public static string connStr = ConfigurationManager.ConnectionStrings["MMoveNeedDataConnectionString"].ConnectionString.ToString();

        private DbConnection GetDatabaseConnection(string name)
        {
            ConnectionStringSettings settings = ConfigurationManager.ConnectionStrings[name];
            DbProviderFactory factory = DbProviderFactories.GetFactory(settings.ProviderName);
            DbConnection conn = factory.CreateConnection();
            conn.ConnectionString = settings.ConnectionString;
            return conn;
        }
    }
}
