using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public string tagBS = "";
    public string tagHLA = "";
    public string tagSTR = "";
    public string textBS = "";
    public string textHLA = "";
    public string textSTR = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            {
            tagBS = "<img class ='tagBS' src ='images/WhiteSquare.jpg'/>";
            tagHLA = "<img class ='tagHLA' src ='images/WhiteSquare.jpg'/>";
            tagSTR = "<img class ='tagSTR' src ='images/WhiteSquare.jpg'/>";
            textBS = "<div class ='bsTagText'>FOR MEMBERS ONLY</div>";
            textHLA = "<div class ='hlaTagText'>FOR MEMBERS ONLY</div>";
            textSTR = "<div class ='strTagText'>FOR MEMBERS ONLY</div>";
        }
        if (Application["myCount"] == null)
        {
            Application["myCount"] = 0;
        }
        Application["myCount"] = (int)Application["myCount"] + 1;
        Session["visitsCount"] = Application["myCount"];
        
    }
}