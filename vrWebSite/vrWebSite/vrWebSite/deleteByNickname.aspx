<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="deleteByNickname.aspx.cs" Inherits="deleteByNickname" %>

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
.success
{
    font-family: 'Teko', sans-serif; font-size: 30px; color: #4CAF50;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body style ="background-color: #f2f2f2;">
        <div class="container">
        <div class ="text">Users:</div><br /><br />
    <form action = " " method="post">
        <%=userList %><br />
        <%=userMsg %>
        <input type="submit" id="submit" name="submit" value="Send" /><br />
        <input type="reset" id="reset" name="reset" value="Reset" />
    </form>
    </div>   
    </body>
</asp:Content>

