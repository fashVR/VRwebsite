using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Ex : System.Web.UI.Page
{
    public string userList;

    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "DB.mdf";
        string tableName = "personalData";
        string selectQuery = "SELECT * FROM " + tableName;
        DataTable table = MyAdoHelper.ExecuteDataTable(fileName, selectQuery);
        userList = MyAdoHelper.printDataTableNew(table);
    }
    
}