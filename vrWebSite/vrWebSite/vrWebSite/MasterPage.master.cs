using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string navbar = "";
    public string logOut = "";
    public string trivia = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["isAdmin"] == "yes")
        {
            navbar += "<a class='active1' href='searchUser.aspx'>Search User</a>";
            navbar += "<a class='active1' href='deleteByNickname.aspx'>Delete By Nickname</a>";
            navbar += "<a class='active1' href='usersList.aspx'>Users List</a>";
            navbar += "<a class='active1' href='Admin.aspx'>Control Panel</a>";

        }
        if (Session["user"] != null)
        {
            navbar += "<a class='active1' href='PasswordChange.aspx'>Password Change</a>";
            logOut += "<a class='active1' style='background-color: #e60000; color: white;' href='Logout.aspx'>Log-Out</a>";
            trivia += "<a class='active1' style='background-color: #ac00e6; color: white;' href='Trivia.aspx'>Trivia</a>";

        }
    }
}
