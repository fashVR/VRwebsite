<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Notlogged.aspx.cs" Inherits="Notlogged" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .questProjectContainer1
        {
            left: 40.7%; transform: translate(140%,668px); position: absolute;
        }
        .backArrow
        {
            left: 22.6%; transform: translate(140%,657px); position: absolute;
        }
        .overlayMD
        {
            transform: translate(283%,443px); position: absolute; height: 400px; width: 352px; z-index: 1; opacity: 0;
        }
        .overlayBH
        {
            transform: translate(157%,443px); position: absolute; height: 400px; width: 352px; z-index: 1; opacity: 0;
        }
        .join
        {
            font-family: 'Bebas Neue', cursive;
            position: absolute;
            font-size: 60px;
            top: 507px;
            left: 55.3%;
            text-align: center;
            color: #1a1a1a;
            font-weight: bold;
        }
        .back
        {
            font-family: 'Bebas Neue', cursive;
            position: absolute;
            font-size: 60px;
            top: 507px;
            left: 33%;
            text-align: center;
            color: #1a1a1a;
            font-weight: bold;
        }
        .membership
        {
            transform: translate(283%,443px); position: absolute; height: 400px; width: 352px;
        }
        .homePage
        {
            transform: translate(157%,443px); position: absolute; height: 400px; width: 352px;
        }
        .containerMD:hover .overlayMD {
        opacity: 0.2;
        }
        .containerBH:hover .overlayBH {
        opacity: 0.2;
        }
        .notLogged
        {
            position: absolute;
            font-size: 37px;
            top: 280px;
            left: 34.8%;
            text-align: center;
            color: white;
            font-family: 'Krona One', sans-serif;
        }
        .whiteDot 
        {
            left: 49.5%; transform: translate(-50%,230px); position: absolute;
            
        }

        .whiteDot1 
        {
            left: 49.5%; transform: translate(-50%, 363px); position: absolute;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body style="background-color:#1a1a1a;">
    <div class="container">
        <img class ="membership" src ="images/WhiteSquare.jpg"/>
        </div>
        <img class ="whiteDot" src ="images/whiteDot.png" width="400" height="4" />
        <img class ="whiteDot1" src ="images/whiteDot.png" width="400" height="4"/>
        <div class ="join">JOIN THE <br /> MEMBERSHIP</div>
        <img class ="questProjectContainer1" src ="images/QuestProjector.png" width="210" height="160" />
        <div class="containerMD">
        <a href ="Login.aspx">
        <img class ="overlayMD" src ="images/bsDarkGraySquere.png"/>
        </a>
        </div>
        <div class ="notLogged">You Are Not Logged In</div>
        <img class ="homePage" src ="images/WhiteSquare.jpg"/>
        <div class ="back">BACK TO <br /> HOME-PAGE</div>
        <img class ="backArrow" src ="images/backArrow.png" width="160" height="160" />
        <div class="containerBH">
        <a href ="Home.aspx">
        <img class ="overlayBH" src ="images/bsDarkGraySquere.png"/>
        </a>
        </div>
</asp:Content>

