using System;
using System.Data.SqlClient;
using System.Web;

namespace Test.Common.Database
{
    public static class DB_Helper 
    {
        
        public static bool ConnectToDB()
        {
            string connectionString = null;
            SqlConnection con;
            connectionString = "Data Source=CABOOSE-SQL;Initial Catalog=Test;User ID=caboosesql;Password=caboose";
            con = new SqlConnection(connectionString);
            try
            {
                con.Open();
                con.Close();
                return true;
            }
            catch (Exception ex)
            {
               // ex.Data;
                return false;
            }
        }
    }
}
