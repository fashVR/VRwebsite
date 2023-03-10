<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="searchUser.aspx.cs" Inherits="searchUser" %>

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
         input[type=password], select 
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="container">
    <body style ="background-color: #f2f2f2;">
    <form id="myform" method="post" action=" " runat="server">
        <div class ="text">First Name:</div><br />
        <input type="text" id="fName" name="fName" placeholder="Your First Name.."/><br />
        <div class ="text">Last Name:</div><br />
        <input type="text" id="lName" name="lName" placeholder="Your Last Name.."/><br />
        <input type="submit" name="submitfName" id="submitfName" value="Search" />
        <input type="reset" name="reset" value="Reset" />
    </form>
    <div class ="text"><% = usersList %></div>
    <div class ="text">Rows: </div>
    <div class ="text"><% = usersCount%></div>
        </div>
</body>
</asp:Content>

