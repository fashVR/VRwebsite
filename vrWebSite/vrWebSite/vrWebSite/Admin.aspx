<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
           input[type=text], select 
    {
               width: 170px;
  padding: 20px 30px;
  display: inline-block;
  border: 1px solid #ccc; 
  border-radius: 4px;
  box-sizing: border-box;
    padding: 14px 20px;
}

input[type=submit]
{

  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=button] 
{
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

input[type=button]:hover 
{
  background-color: #cc0000;
}
        .container
{
    transform: translate(10%,200px);
}

        .text
{
    font-family: 'Teko', sans-serif; font-size: 30px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <body style ="background-color: #f2f2f2;">
         <div class ="text">
        <div class ="container">
   <%=supportList %>
            </div>
             </div>




</asp:Content>

