<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StrideVR.aspx.cs" Inherits="StrideVR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
    #myVideo 
    {
        position: fixed;
        right: 0;
        bottom: 0;
        min-width: 100%;
        min-height: 100%;
    }
    .BSWhiteSquare
    {
        left: 50%; transform: translate(-50%,800px); position: absolute;
    }
    .BSGraySquere
    {
        left: 50%; transform: translate(-50%,800px); position: absolute;
    }
    .SVRLogoContainer
        {
            left: 48%; transform: translate(-50%,200px); position: absolute; width: 1200px;
        }
    .Hope
        {
            font-family: 'Bebas Neue', cursive;
            position: absolute;
            font-size: 60px;
            top: 946px;
            left: 6%;
            text-align: center;
            color: #1a1a1a;
            font-weight: bold;
        }
    .Buildings
        {
            transform: translate(14.2%,1000px); position: absolute; width: 700px; height: 
        }
    img#Buildings{
        filter:brightness(300%);
    }
    .Intro{
            font-family: 'Teko', sans-serif;
            position: absolute;
            font-size: 45px;
            top: 910px;
            left: 56.5%;
            text-align: center;
            color: #1a1a1a;
            z-index:1
        }
    .BuildingsIntroBk
        {
            transform: translate(110%,840px); position: absolute; width: 870px; height: 460px; opacity: 0.3;
        }
    .StrideVrBK{
            left: 50%; transform: translate(-50%,1300px); position: absolute;
        }
    .BSDarkGraySquere
        {
            transform: translate(-10px,1300px); position: absolute; width: 100%;
            opacity: 0.5; height: 500px;
        }
    .BuyOnSteam
        {
            transform: translate(1000px,1410px); position: absolute; width: 500px;
            
        }

        .BuyOnSteamDark
        {
            transform: translate(1000px,1410px); position: absolute; width: 500px; opacity: 0;
            
        }

        .BuyOnSteamDark:hover{
            opacity: 1;
        }
        
        .BuyOnOculus
        {
            transform: translate(1000px,1495px); position: absolute; width: 500px;
        }

        .BuyOnPlayStation
        {
            transform: translate(1000px,1580px); position: absolute; width: 500px;
        }
        .BuyOnPlayStationDark
        {
            transform: translate(1000px,1580px); position: absolute; width: 500px; opacity: 0
        }
        .BuyOnPlayStationDark:hover{
            opacity: 1;
        }

        .BuyOnOculusDark
        {
            transform: translate(1000px,1495px); position: absolute; width: 500px; opacity: 0;
        }
        .BuyOnOculusDark:hover{
            opacity: 1;
        }

        .LightWaves{
            transform: translate(70%,1320px); position: absolute; height: 400px; z-index: 0; opacity: 0.4;
        }
        rush
        {
            position: absolute;
            font-size: 100px;
            top: 1381px;
            left: 18.3%;
            text-align: center;
            color: #ffad33;
            font-weight: bold;
            font-family: 'Permanent Marker', cursive;
        }
        tobuy
        {
            position: absolute;
            font-size: 87px;
            top: 1405px;
            left: 33.4%;
            text-align: center;
            color: #ffad33;
            font-weight: bold;
            font-family: 'Big Shoulders Text', cursive;
        }
        .StrideVRLogo2
        {
            transform: translate(69%,1498px); position: absolute; width: 488px; opacity: 1;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body>
        <video autoplay muted loop id="myVideo">
        <source src="imagesSVR/StrideVRBKVideo.mp4" type="video/mp4">
        </video>
        <img class ="BSWhiteSquare" src ="images/WhiteSquare.jpg" width="100%" height="500" />
        <img class ="BSGraySquere" src ="images/BSGraySquere.png" width="100%" height="25" />
        <img class ="SVRLogoContainer" src ="imagesSVR/StrideVRLogo.png"/>
        <div class ="Hope">Hope you are not afraid of HIGHTS</div>
        <img class ="Buildings" id ="Buildings" src ="imagesSVR/Buildings.png"/>
        <div class="Intro">STRIDE is a high-octane parkour adventure in  virtual reality.<br />
                           Fight for your life as you hurtle through the rooftops of a<br />
                           futuristic metropolis. Step into the shoes of a master<br />
                           freerunner as you vault, swing, roll, and shoot your way<br />
                           through this intense, action-packed adventure.</div>
        <img class ="BuildingsIntroBk" src ="imagesSVR/BuildingsIntroBk.png"/>
        <img class ="StrideVrBK" src ="imagesSVR/StrideVrBK.jpg" width="100%" height="500" />
        <img src ="images/bsDarkGraySquere.png" class="BSDarkGraySquere"/>
        <a href ="https://store.steampowered.com/app/1292040/STRIDE/">
        <img src ="images/BuyOnSteam.png" class="BuyOnSteam"/>
        <img src ="images/BuyOnSteamDark.png" class="BuyOnSteamDark" />
        </a>
        <a href ="https://www.oculus.com/experiences/rift/3137940179578220/">
        <img src ="images/BuyOnOculus.png" class="BuyOnOculus"/>
        <img src ="images/BuyOnOculusDark.png" class="BuyOnOculusDark"/>
        </a>
        <a href ="https://store.playstation.com/en-gb/concept/10001722">
        <img src ="images/BuyOnPlayStation.png" class="BuyOnPlayStation"/>
        <img src ="images/BuyOnPlayStationDark.png" class="BuyOnPlayStationDark"/>
        </a>
        <rush>RUSH</rush>   
        <tobuy>TO BUY</tobuy>
        <img class ="StrideVRLogo2" src ="imagesSVR/StrideVRLogo2.png" />
    </body>
</asp:Content>

