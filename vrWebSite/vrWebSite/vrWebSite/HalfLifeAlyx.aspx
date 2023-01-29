<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HalfLifeAlyx.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@300&display=swap" rel="stylesheet">
    <style>
        #myVideo 
        {
            position: fixed;
            right: 0;
            bottom: 0;
            min-width: 100%;
            min-height: 100%;
        }
        .HLALogoContainer
        {
            left: 50%; transform: translate(-50%,200px); position: absolute; width: 43%; height: 29%;
        }
        .BSWhiteSquare
        {
            left: 50%; transform: translate(-50%,800px); position: absolute;
        }
        .BSGraySquere
        {
            left: 50%; transform: translate(-50%,800px); position: absolute;
        }
        .OrangeColor
        {
            transform: translate(360px,914px); position: absolute; width: 400px; height: 130px; opacity: 0.6;
        }
        .UR
        {
            font-family: 'Rajdhani', sans-serif;
            position: absolute;
            font-size: 60px;
            top: 946px;
            left: 9.5%;
            text-align: center;
            color: #1a1a1a;
            font-weight: bold;
        }
        .AlyxVance{
            font-family: 'Poiret One', cursive;
            position: absolute;
            font-size: 60px;
            top: 946px;
            left: 20.5%;
            text-align: center;
            color: #1a1a1a;
            font-weight: bold;
        }
        .Spark
        {
            font-family: 'Rajdhani', sans-serif;
            position: absolute;
            font-size: 60px;
            top: 1028px;
            left: 9.5%;
            text-align: center;
            color: #1a1a1a;
            font-weight: bold;
        }
        .Revolution{
            font-family: 'Orbitron', sans-serif;
            position: absolute;
            font-size: 60px;
            top: 1116px;
            left: 9.5%;
            text-align: center;
            color: #1a1a1a;
        }
        .Intro{
            font-family: 'Rajdhani', sans-serif;
            position: absolute;
            font-size: 35px;
            top: 940px;
            left: 50%;
            text-align: center;
            color: #1a1a1a;
            font-weight: bold;
            z-index:1
        }
        .DamBackGround
        {
            transform: translate(830px,820px); position: absolute; width: 1000px; height: 460px; opacity: 0.3;
        }
        .SmallVegetation{
            transform: translate(650px,1107px); position: absolute; width: 400px; height: 200px;  opacity: 0.7; display: none;
        }
        .HLABackGround{
            left: 50%; transform: translate(-50%,1300px); position: absolute;
        }
        .BSWhiteSquare2
        {
            left: 50%; transform: translate(-50%,1300px); position: absolute; opacity: 0.2;
        }
        .BuyOnSteam
        {
            transform: translate(240%,1367px); position: absolute; width: 500px;
            
        }

        .BuyOnSteamDark
        {
            transform: translate(240%,1367px); position: absolute; width: 500px; opacity: 0;
            
        }

        .BuyOnSteamDark:hover{
            opacity: 1;
        }

        play
        {
            position: absolute;
            font-size: 85px;
            top: 1381px;
            left: 9.56%;
            text-align: center;
            color: #ffad33;
            font-weight: bold;
            font-family: 'Orbitron', sans-serif; z-index: 1;
        }
        .HLALogoContainer2
        {
            transform: translate(18%,1460px); position: absolute; height: 190px; opacity: 1;
        }
        OnlySteam
        {
            position: absolute;
            font-size: 98px;
            top: 1630px;
            left: 9.5%;
            text-align: center;
            color: white;
            font-weight: bold;
            font-family: 'Orbitron', sans-serif; z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body>
        <video autoplay muted loop id="myVideo">
    <source src="imagesHLA/HLAbackground.mp4" type="video/mp4">
    </video>
    <img class ="HLALogoContainer" src ="imagesHLA/HalfLifeAlyxLogo.png" width="1400" height="500" />
    <img class ="BSWhiteSquare" src ="images/WhiteSquare.jpg" width="100%" height="500" />
    <img class ="BSGraySquere" src ="images/BSGraySquere.png" width="100%" height="25" />
    <img class ="OrangeColor" src ="imagesHLA/orangeColor.jpg"/>
    <div class ="UR">You are</div>  
    <div class ="AlyxVance">ALYX VANCE</div>
    <div class ="Spark">and you’re about to spark</div>  
    <div class="Revolution">A REVOLUTION</div>
    <div class="Intro">Half-Life: Alyx is Valve’s VR return to the Half-Life series.<br />
                                  It’s the story of an impossible fight against <br/>
                                  a vicious alien race known as the Combine, set <br />
                                  between the events of Half-Life and Half-Life 2.<br />
                                  Playing as Alyx Vance, you are humanity’s only chance <br />
                                  for survival.</div>
    <img class ="DamBackGround" src ="imagesHLA/DamBK.png"/>
    <img class ="SmallVegetation" src ="imagesHLA/small vegetation.png"/>
    <img class ="HLABackGround" src ="imagesHLA/HLABackGround.jpg" width="100%" height="500" />
    <img class ="BSWhiteSquare2" src ="images/WhiteSquare.jpg" width="100%" height="500" />
    <a href ="https://store.steampowered.com/app/546560/HalfLife_Alyx/">
    <img src ="images/BuyOnSteam.png" class="BuyOnSteam"/>
    <img src ="images/BuyOnSteamDark.png" class="BuyOnSteamDark" />
    </a>
    <play>PLAY</play>
    <img class ="HLALogoContainer2" src ="imagesHLA/HalfLifeAlyxLogo2.png" />
    <OnlySteam>ONLY ON STEAM</OnlySteam>
    </body>
</asp:Content>

