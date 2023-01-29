using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Signup : System.Web.UI.Page
{
    public string regStatus;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string nickName = Request.Form["nickName"];
            string gender = Request.Form["gender"];
            string fName = Request.Form["fName"];
            string lName = Request.Form["lName"];
            string email = Request.Form["email"];
            string phoneNum = Request.Form["phoneNum"];
            string password = Request.Form["password"];
            string isAdmin = "no";
            if (gender == null || nickName == "" || fName == null || lName == null || password == null || phoneNum == null || email == null)
            {
                regStatus = "Not Good registration!";
            }
            else
            {
                string fileName = "DB.mdf";
                string tableName = "personalData";
                string selectQuery = "SELECT * FROM " + tableName;
                selectQuery += " WHERE ";
                selectQuery += "nickName = '" + Request.Form["nickName"] + " '";



                string sql = "INSERT INTO personalData (nickName, fName, lName, password, email, gender, phoneNum, isAdmin) VALUES('";
                sql += nickName + "','" + fName + "','" + lName + "','" + password + "','" + email + "','" + gender + "','" + phoneNum + "','" + isAdmin + "')";
                fileName = "DB.mdf";
                MyAdoHelper.DoQuery(fileName, sql);

                Response.Redirect("LogIn.aspx");
                Response.End();
            }
        }
    }
}