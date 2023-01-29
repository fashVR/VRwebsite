using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class deleteByNickname : System.Web.UI.Page
{
    public string userMsg = "";
    public string userList = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "DB.mdf";
        string tableName = "personalData";
        string selectQuery = "SELECT nickName FROM personalData GROUP BY nickName";
        DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
        int length = table.Rows.Count;
        if (length > 0)
        {
            userList += "<select id = 'nickName' name='nickName'>";
            for (int i = 0; i < length; i++)
            {
                userList += "<option>";
                userList += table.Rows[i]["nickName"].ToString();
                userList += "</option>";
            }
            userList += "</select>";
        }
        if (Request.Form["submit"] != null)
        {
            string nickName = Request.Form["nickName"];
            string sql = "DELETE FROM personalData WHERE nickName= '" + nickName + "'";
            MyAdoHelper.DoQuery(fileName, sql);
            userMsg = "<div class='success'>The user is now deleted</div>";
        }
    }
}
