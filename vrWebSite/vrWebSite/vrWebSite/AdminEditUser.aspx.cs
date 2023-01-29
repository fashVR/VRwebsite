using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class AdminEditUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        //הגנה על הדף
       
        //סיום הגנה

        string fileName = "DB.mdf";//שם הקובץ
        string tableName = "personalData";//שם הטבלה

        if (Request.Form["submit"] != null)
        {


            //קליטת מידע לעדכון
            string nickName = Request.Form["nickName"];
            string isAdmin = "no";
            string fName = Request.Form["fName"];
            string lName = Request.Form["lName"];
            string password = Request.Form["password"];
            string email = Request.Form["email"];
            string gender = Request.Form["gender"];
            string phoneNum = Request.Form["phoneNum"];
            if (Request.Form["isAdmin"] != null)
                isAdmin = "yes";

            string sql = "UPDATE personalData SET fName = '" + fName + "'";
            sql += ", lName='" + lName + "'";
            sql += ", password='" + password + "'";
            sql += ", email='" + email + "'";
            sql += ", gender='" + gender + "'";
            sql += ", phoneNum='" + phoneNum + "'";
            sql += ", isAdmin='" + isAdmin + "'";
            sql += " WHERE nickName = '" + nickName + "'";
            MyAdoHelper.DoQuery(fileName, sql);
            Response.Redirect("Admin.aspx");
        }

    }
}
