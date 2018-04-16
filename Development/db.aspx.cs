using System;
using System.Web.Script.Services;
using System.Web.Services;
using Test.Common.Database;

namespace Test.Web.Development
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btn_submit_Click(object sender, EventArgs e)
        {
            if (CheckDB())
            {
                nStatus.InnerText = "Success from code behind.";
            }
            else
            {
                nStatus.InnerText = "Failed from code behind.";
            }


        }

        public static bool CheckDB()
        {
            bool connected = DB_Helper.ConnectToDB();

            return connected;

        }

        public void showStatus(string status)
        {
            uStatus.InnerText = status.ToString();
        }

        [WebMethod]
        public  void UpdateDB(string toUpdate)
        {
            showStatus(toUpdate);
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static bool DBStatus()
        {
            return CheckDB();
        }
    }
}