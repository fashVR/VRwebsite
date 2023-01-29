using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class usersList : System.Web.UI.Page
{
    public string userList;
    public string usersCount;
    public string visitsCount;
    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "DB.mdf";
        string tableName = "personalData";
        string selectQuery = "SELECT * FROM " + tableName;
        DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
        int length = table.Rows.Count;
        if (length > 0)
        {
            userList += "<table style = 'border:3px solid black' ;>";
            userList += "<tr>";
            userList += "<th><div class = 'text'> Nickname | </th></div>";
            userList += "<th><div class = 'text'> First Name | </th></div>";
            userList += "<th><div class = 'text'> Last Name | </th></div>";
            userList += "<th><div class = 'text'> Email | </th></div>";
            userList += "<th><div class = 'text'> Phone Number | </th></div>";
            userList += "<th><div class = 'text'> Password </th></div>";
            userList += "<th><div class = 'text'> gender </th></div>";
            userList += "<th><div class = 'text'> isAdmin </th></div>";
            userList += "</tr>";
            for (int i = 0; i < length; i++)
            {
                userList += "<tr>";
                userList += "<td><div class = 'text'>" + table.Rows[i]["nickName"] + "</td></div>";
                userList += "<td><div class = 'text'>" + table.Rows[i]["fName"] + "</td></div>";
                userList += "<td><div class = 'text'>" + table.Rows[i]["lName"] + "</td></div>";
                userList += "<td><div class = 'text'>" + table.Rows[i]["email"] + "</td></div>";
                userList += "<td><div class = 'text'>" + table.Rows[i]["phoneNum"] + "</td></div>";
                userList += "<td><div class = 'text'>" + table.Rows[i]["password"] + "</td></div>";
                userList += "<td><div class = 'text'>" + table.Rows[i]["gender"] + "</td></div>";
                userList += "<td><div class = 'text'>" + table.Rows[i]["isAdmin"] + "</td></div>";
                userList += "</tr>";
            }
            userList += "</table>";
            usersCount = length.ToString();
            visitsCount = Session["visitsCount"].ToString();
        }
    }
}