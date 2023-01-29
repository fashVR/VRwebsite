using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class searchUser : System.Web.UI.Page
{
    public string usersList = "";
    public string usersCount;

    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "DB.mdf";
        string tableName = "personalData";
        string fName = Request.Form["fName"];
        string lName = Request.Form["lName"];

        string selectQuery = "";
        if (Request.Form["printAll"] != null)
        {
            selectQuery = "SELECT * FROM " + tableName;
        }
        else if (Request.Form["submitfName"] != null)
        {
            selectQuery = "SELECT * FROM " + tableName;
            selectQuery += " WHERE ";
            selectQuery += " fName = '" + Request.Form["fName"] + "' AND lName = '" + Request.Form["lName"] + "'";

        }
        if (selectQuery != "")
        {
            usersList = MyAdoHelper.PrintDataTableUsers(fileName, selectQuery, fName, lName).ToString();
            DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
            int length = table.Rows.Count;
            usersCount = length.ToString();
        }
    }
}