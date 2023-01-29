<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
        input[type=text], select 
    {
  width: 30%;
  padding: 20px 30px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc; 
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit]
{
  width: 15%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=reset] 
{
  width: 15%;
  background-color: #DC143C;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover 
{
  background-color: #45a049;
} 

input[type=reset]:hover 
{
  background-color: #cc0000;
}

.container
{
    transform: translate(10%,200px);
}
.text
{
    font-family: 'Teko', sans-serif; font-size: 40px;
}
    </style>
        <script type="text/javascript">
            var msg = "";
            //פונקציה הבודקת האם יש נקודה ליד שטרודל
            function dotNextToa(str) {
                var i;
                for (i = 0; i < str.length - 1; i++) {
                    if ((str.charAt(i) == "@" && str.charAt(i + 1) == "." || str.charAt(i) == "." && str.charAt(i + 1) == "@"))
                        return true;
                }
                return false;
            }

            //פונקציה הבודקת שהתו הראשון הוא אפס
            function ZeroStart(str) {
                return str.charAt(0) == 0;
            }
            //פונקציה הבודקת האם נרשם משהו
            function isEmpty(str) {
                return str.length == 0;
            }
            //פונקציה הבודקת שהשם מורכב מאותיות ותווים מורשים
            function isValidName(str) {
                for (i = 0; i < str.length; i++) {
                    place = str.charAt(i);
                    if (!((place >= 'a' && place <= 'z') || (place >= 'A' && place <= 'Z') || (place >= 'א' && place <= 'ת') || place == "'" || place == " " || place == "-"))
                        return false;
                }
                return true;
            }
            //פונקציה הבודקת האם הוא אימייל
            function isEmail(str) {
                if (str.split("@").length == 2 && str.indexOf("@") != 0 && str.indexOf(".") != 0 && str.lastIndexOf(".") != str.length - 1 && str.length >= 5 && str.length <= 30 && str.indexOf("@") != str.length - 1)
                    return true;
                else
                    return false;
            }
            //פונקציה הבודקת האם הוא מספר
            function isNumeric(str) {
                if (isNaN(str))
                    return false;
                else
                    return true;
            }
            //פונקציה הבודקת שהתעודת זהות תקינה
            function takin(str) {
                if (str.length != 9)
                    return false;
                else
                    return true;
            }
            //פונקציה הבודקת שהטלפון תקין
            function PhoneTakin(str) {
                if (str.length == 10)
                    return true;
                else
                    return false;
            }
            //פונקציה הבודקת שאין תווים שאינם מורשים
            function isValidString(str) {
                var quot = "\"";
                var badCahrStr = "$%^&*()_+[]{}<>-,";
                for (var i = 0; i < str.length; i++)
                    for (var j = 0; j < badCahrStr.length; j++)
                        if (str.charAt(i) == badCahrStr.charAt(j))
                            return false;
                if (str.indexOf(quot) != -1)
                    return false;
                return true;
            }


            //פונקציה הבודקת האם יש נקודה ליד נקודה
            function dotNextTodot(str) {
                var i;
                for (i = 0; i < str.length - 1; i++) {
                    if (str.charAt(i) == "." && str.charAt(i + 1) == ".")
                        return true;
                }
                return false;
            }
            //פונקציה הבודקת אימות סיסמאות

            //פונקציה הבודקת האם הוא באנגלית
            function isValidEng(str) {
                for (i = 0; i < str.length; i++) {
                    place = str.charAt(i);
                    if (!((place >= 'a' && place <= 'z') || (place >= 'A' && place <= 'Z')))
                        return false;
                }
                return true;
            }
            function Ex49(str) {
                var length = str.length;
                for (var i = 0; i < length / 2; i++) {
                    if (str.charAt(i) != str.charAt(str.length - 1 - i)) {
                        return true
                    }
                }
                return false;
            }

            
            // בדיקת הטופס המלאה
            function checkForm() {
                //בדיקת טלפון
                if (isEmpty(document.getElementById("phoneNum").value))
                    msg += "<li>Phone Number Missing</li>";
                else
                    if (!isNumeric(document.getElementById("phoneNum").value))
                        msg += "<li>Phone Number Not Valid</li>";
                    else
                        if (!PhoneTakin(document.getElementById("phoneNum").value))
                            msg += "<li>Phone Number Not Valid</li>";
                        else
                            if (!ZeroStart(document.getElementById("phoneNum").value))
                                msg += "<li>Phone Number Not Valid</li>";
                //בדיקת שם פרטי                
                if (isEmpty(document.getElementById("fName").value))
                    msg += "<li>First Name Missing</li>";
                else
                    if (!isValidName(document.getElementById("fName").value))
                        msg += "<li>First Name Not Valid </li>";



                if (isEmpty(document.getElementById("lName").value))
                    msg += "<li> Last Name Missing</li>";
                else
                    if (!isValidName(document.getElementById("lName").value))
                        msg += "<li>Last Name Not Valid</li>";





                if (isEmpty(document.getElementById("nickName").value))
                    msg += "<li>Nickname Missing</li>";

                if (isEmpty(document.getElementById("password").value))
                    msg += "<li>Password Missing</li>";
                else
                    if (!isValidString(document.getElementById("password").value))
                        msg += "<li>Password Not Valid</li>";


                //בדיקת אימייל
                if (isEmpty(document.getElementById("email").value))
                    msg += "<li>Email Missing</li>";
                else
                    if (!isEmail(document.getElementById("email").value))
                        msg += "<li>Email Not Valid</li>";
                    else
                        if (dotNextTodot(document.getElementById("email").value))
                            msg += "<li>Email Not Valid </li>";
                        else
                            if (dotNextToa(document.getElementById("email").value))
                                msg += "<li>Email Not Valid </li>";

                if (msg.length == 0)
                    return true;
                else {
                    document.getElementById("errors").innerHTML = msg;
                    msg = "";
                    return false;
                }

            }

        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body style ="background-color: #f2f2f2;">
        <div class ="container">
           <form action="" id="register" name="register"  onsubmit="return checkForm();" method="post">

            <div class ="text">Nickname:</div>
            <input type="text" id="nickName" name="nickName" placeholder="Your Nickname.."/><br /><br />
            <div class ="text">First Name:</div>
            <input type="text" id="fName" name="fName" placeholder="Your First Name.."/><br /><br />
            <div class ="text">Last Name:</div>
            <input type="text" id="lName" name="lName" placeholder="Your Last Name.."/><br /><br />
            <div class ="text">Gender:</div>
            <select id="gender" name="gender">
                <option value="male">Male</option>
                <option value="female">Female</option>
            </select>
                <br /><br />
            <div class ="text">Email:</div>
            <input type="text" id="email" name="email" placeholder="Your Email.."/><br /><br />
            <div class ="text">Phone Number:</div>
            <input type="text" id="phoneNum" name="phoneNum" placeholder="Your Phone Number.."/><br />   <br />   
            <div class ="text">Password:</div>
            <input type="text" id="password" name="password" placeholder="Your Password.."/><br /><br />
                <div class="text" style="color: #cc0000">
                <ul id="errors"></ul>
                    </div>
            <input type="submit"  name="submit" value="Send"/><br />
            <input type="reset" name="reset" value="Reset" />
            </form>
        </div>
    </body>
</asp:Content>




