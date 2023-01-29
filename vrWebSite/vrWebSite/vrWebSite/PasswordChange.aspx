<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PasswordChange.aspx.cs" Inherits="PasswordChange" %>

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
.error
{
    font-family: 'Teko', sans-serif; font-size: 30px; color: #DC143C;
}
.success
{
    font-family: 'Teko', sans-serif; font-size: 30px; color: #4CAF50;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="container">
    <body style ="background-color: #f2f2f2;">
    <form id="simpleEdit" action =" " method ="post">
    <div class="text">Email:</div>
    <input type="text" name="emailEdit" placeholder="Your Email.."/><br /><br />
    <div class="text">Current Password:</div>
    <input type="password" name="oldpassEdit" placeholder="Your Current Password"/><br /><br />
    <div class="text">New Password:</div>
    <input type="password" name="newpassEdit" placeholder="Your New Password"/><br /><br />
    <% =userMsg %>
    <input type="submit"  name="subEdit" value="Reset"/><br />
    <input type="submit"  name="subEditEveryone" value="Reset"/><br />
    <input type="reset" name="reset" value="Clear" />
    </form>
        </div>
</body>
</asp:Content>

