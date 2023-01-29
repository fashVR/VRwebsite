using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PasswordChange : System.Web.UI.Page
{
    public string userMsg;
    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "DB.mdf";
        string tableName = "personalData";
        string selectQuery = "";
        string sql = "";
        string email = Request.Form["emailEdit"];
        string pass = Request.Form["oldpassEdit"];
        string repass = Request.Form["newpassEdit"];
        if (Request.Form["subEdit"] != null)
        {
            selectQuery = "SELECT * FROM " + tableName + " WHERE email = '" + email + "'AND[password] = '" + pass + "'";
            sql = "UPDATE " + tableName + " SET[password] = '" + repass + "' WHERE email = '" + email + "' AND[password] = '" + pass + "'";
            if (MyAdoHelper.IsExist(fileName, selectQuery))
            {
                MyAdoHelper.DoQuery(fileName, sql);
                userMsg = "<div class='success'>The details were updated</div>";
            }
            else
            {
                userMsg = "<div class='error'>*The original password or email are not valid</div>";
            }
        }
        if (Request.Form["subEditEveryone"] != null)
        {
            selectQuery = "SELECT * FROM " + tableName;
            sql = "UPDATE " + tableName + " SET[password] = '" + repass + "'";
            if (MyAdoHelper.IsExist(fileName, selectQuery))
            {
                MyAdoHelper.DoQuery(fileName, sql);
                userMsg = "<div class='success'>The details were updated</div>";
            }
        }
        
    }
}