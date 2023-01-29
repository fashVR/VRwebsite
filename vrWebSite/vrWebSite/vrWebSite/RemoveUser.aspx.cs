using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RemoveUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "DB.mdf";//שם הקובץ
                                        // string tableName = "support";//שם הטבלה
        if (Request.QueryString["nickName"] != null)
        {
            //מספר תז נשלח עם הקישור בשורת הכתובת כמחרוזת
            string nickName = Request.QueryString["nickName"];
            string sql = "DELETE FROM personalData WHERE nickName = '" + nickName + "'";
            MyAdoHelper.DoQuery(fileName, sql);
        }
        Response.Redirect("Admin.aspx");
    }
}