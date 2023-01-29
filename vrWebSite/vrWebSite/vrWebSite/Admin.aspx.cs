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

public partial class Admin : System.Web.UI.Page
{

    public string supportList = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "DB.mdf";//שם הקובץ
        string tableName = "personalData";//שם הטבלה
        string selectQuery = "SELECT * FROM " + tableName; // שאילתת בחירה

        DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);

        int length = table.Rows.Count; // מספר הרשומות בטבלה
        if (length > 0)
        {
            supportList += "<table>";
            supportList += "<tr>";
            supportList += "<th>Nickname</th>";
            supportList += "<th>First Name</th>";
            supportList += "<th>Last Name</th>";
            supportList += "<th>Password</th>";
            supportList += "<th>Email</th>";
            supportList += "<th>Gender</th>";
            supportList += "<th>Phone Number</th>";
            supportList += "<th>Admin?</th>";
            supportList += "<th>Update</th>";
            supportList += "<th>Delete</th>";
            supportList += "</tr>";
            for (int i = 0; i < length; i++)
            { // הדפסת כל הרשומות בטבלה
                string isAdminRule = (string)table.Rows[i]["isAdmin"];
                supportList += "<tr>";
                supportList += "<form method='post' action='AdminEditUser.aspx'>";
                supportList += "<input type='hidden' name='nickName' value='" + table.Rows[i]["nickName"] + "' />";
                supportList += "<td>" + table.Rows[i]["nickName"] + "</td>";
                supportList += "<td><input type='text' name='fName' value='" + table.Rows[i]["fName"] + "' /></td>";
                supportList += "<td><input type='text' name='lName'  value='" + table.Rows[i]["lName"] + "' /></td>";
                supportList += "<td><input type='text' name='password'    value='" + table.Rows[i]["password"] + "' /></td>";
                supportList += "<td><input type='text' name='email'     value='" + table.Rows[i]["email"] + "' /></td>";
                supportList += "<td><input type='text' name='gender'     value='" + table.Rows[i]["gender"] + "' dir='ltr' /></td>";
                supportList += "<td><input type='text' name='phoneNum'   value='" + table.Rows[i]["phoneNum"] + "' /></td>";
                supportList += "<td><input type='text' name='isAdmin'   value='" + table.Rows[i]["isAdmin"] + "' /></td>";
                supportList += "<td><input type='submit' name='submit' value='Update' /></td>";
                supportList += "<td><input type='button' onclick='window.location.href=\"RemoveUser.aspx?nickName=" + table.Rows[i]["nickName"] + "\"' value='Delete' /></td>";
                supportList += "</form>";
                supportList += "</tr>";
            }
            supportList += "</table>";
        }
    }
}
