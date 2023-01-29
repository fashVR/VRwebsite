<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BeatSaber.aspx.cs" Inherits="_Default" %>

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
        .BSLogoContainer
        {
            left: 50%; transform: translate(-50%,100px); position: absolute;
        }
        .BSWhiteSquare
        {
            left: 50%; transform: translate(-50%,800px); position: absolute;
        }
        .bsBackGroundImage
        {
            left: 50%; transform: translate(-50%,1300px); position: absolute;
        }

        .BSGraySquere
        {
            left: 50%; transform: translate(-50%,800px); position: absolute;
        }
        .p
        {
            font-size: 250px;
            font-weight: bold;
            color: black;
            position: relative;
            font-family: 'Comfortaa', cursive;
            top: 50%;
        }
        .BSColoredCrossingLine
        {
            left: 54.5%; transform: translate(-50%,815px); position: absolute; z-index: 1000;
        }

        intro
        {
            position: absolute;
            font-size: 35px;
            top: 909px;
            left: 60%;
            text-align: center;
            color: #1a1a1a;
            font-family: 'Krona One', sans-serif;
        }
        startPlaying
        {
            position: absolute;
            font-size: 120px;
            top: 880px;
            left: 12.2%;
            text-align: center;
            color: #1a1a1a;
            font-family: 'Barlow Semi Condensed', sans-serif;
        }
        Avalable
        {
            position: absolute;
            font-size: 20px;
            top: 1020px;
            left: 12.2%;
            text-align: center;
            color: #1a1a1a;
            font-family: 'Krona One', sans-serif;
        }

        .BSDarkGraySquere
        {
            transform: translate(-10px,1300px); position: absolute; width: 100%;
            opacity: 0.8; height: 500px;
        }

        buy
        {
            position: absolute;
            font-size: 100px;
            top: 1400px;
            left: 18.9%;
            text-align: center;
            color: #1a1a1a;
            font-family: 'Krona One', sans-serif; z-index: 1;
        }

        beatsaber
        {
            position: absolute;
            font-size: 100px;
            top: 1480px;
            left: 18.9%;
            text-align: center;
            color: white;
            z-index: 2;
            font-family: 'Barlow Semi Condensed', sans-serif;
        }
        beatsaberBlue
        {
            position: absolute;
            font-size: 100px;
            top: 1480px;
            left: 19.3%;
            text-align: center;
            color: #33ccff;
            z-index: 1;
            font-family: 'Barlow Semi Condensed', sans-serif;
        }
        beatsaberRed
        {
            position: absolute;
            font-size: 100px;
            top: 1480px;
            left: 18.6%;
            text-align: center;
            color: #ff0066;
            z-index: 1;
            font-family: 'Barlow Semi Condensed', sans-serif;
        }

        now
        {
            position: absolute;
            font-size: 100px;
            top: 1570px;
            left: 18.9%;
            text-align: center;
            color: #1a1a1a;
            font-family: 'Krona One', sans-serif; z-index: 1;
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
        </style>
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/jquery-ui.min.js" type="text/javascript"></script> 

        


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<body>
    <video autoplay muted loop id="myVideo">
    <source src="images/BeatSaberBackGround.mp4" type="video/mp4">
    </video>
    <img class ="BSLogoContainer" src ="images/BSLogo.png" width="1400" height="500" />
    <img class ="BSWhiteSquare" src ="images/WhiteSquare.jpg" width="100%" height="500" />
    <img class ="BSGraySquere" src ="images/BSGraySquere.png" width="100%" height="25" />
    <intro class="Intro">Beat Saber is a VR <br /> rhythm game where <br />you slash the beats<br /> of adrenaline-pumping  <br />music as they fly<br /> towards you, surrounded<br /> by a futuristic world.</intro>
    <startPlaying class="startPlaying">START PLAYING</startPlaying>
    <Avalable class="Avalable">Beat Saber is now available on all platforms.</Avalable>
    <img class ="bsBackGroundImage" src ="images/bsBackGroundImage.jpg" width="100%" height="500" />
    <img class ="BSColoredCrossingLine" src ="images/BsColoredCrossingLine.png" width="200px" height ="475px"/>
    <img src ="images/bsDarkGraySquere.png" class="BSDarkGraySquere"/>
    <buy>BUY</buy>
    <beatsaber>BEAT SABER</beatsaber>
    <beatsaberRed>BEAT SABER</beatsaberRed>
    <beatsaberBlue>BEAT SABER</beatsaberBlue>
    <now>NOW</now>
    <a href ="https://store.steampowered.com/app/620980/Beat_Saber/">
    <img src ="images/BuyOnSteam.png" class="BuyOnSteam"/>
    <img src ="images/BuyOnSteamDark.png" class="BuyOnSteamDark" />
    </a>
    <a href ="https://www.oculus.com/experiences/rift/1304877726278670/">
    <img src ="images/BuyOnOculus.png" class="BuyOnOculus"/>
    <img src ="images/BuyOnOculusDark.png" class="BuyOnOculusDark"/>
    </a>
    <a href ="https://store.playstation.com/en-cz/product/EP5067-CUSA14143_00-BEATSABERFULL000">
    <img src ="images/BuyOnPlayStation.png" class="BuyOnPlayStation"/>
    <img src ="images/BuyOnPlayStationDark.png" class="BuyOnPlayStationDark"/>
    </a>
    <img src ="images/lightwaves.png" class="LightWaves"/>
</body>
    
</asp:Content>

