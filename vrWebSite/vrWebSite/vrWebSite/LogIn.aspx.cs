using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    public string mes = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "DB.mdf";
        if (Request.Form["submit"] != null)
        {
            string email = Request.Form["email"];
            string pass = Request.Form["password"];
            string selectQuery = "SELECT * FROM personalData WHERE email = '";
            selectQuery += email + "' AND password = '" + pass + "'";
            string selectQueryAdmin = "SELECT * FROM personalData WHERE email = '";
            selectQueryAdmin += email + "' AND password = '" + pass + "' AND isAdmin = 'yes'";
            if (MyAdoHelper.IsExist(fileName, selectQueryAdmin))
            {
                Session["user"] = "yes";
                Session["isAdmin"] = "yes";
                Session["email"] = email;
                Response.Redirect("Home.aspx");
            }
            else if (MyAdoHelper.IsExist(fileName, selectQuery))
            {
                Session["user"] = "yes";
                Session["isAdmin"] = "no";
                Session["email"] = email;
                Response.Redirect("Home.aspx");
            }
            else
            {
                mes += "*email or password are wrong!";
            }
        }
    }
}