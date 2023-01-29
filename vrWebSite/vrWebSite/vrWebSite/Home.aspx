<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #myVideo {
            position: fixed;
        }
        .overlay 
        {
            transform: translate(100%,915px); 
            position: absolute; 
            height: 400px;
            opacity: 0;
            transition: .2s ease;
            z-index: 1;
        }

        .questProjectContainer 
        {
            left: 50%; transform: translate(-50%,130px); position: absolute;
        }

        .whiteDot 
        {
            left: 49.5%; transform: translate(-50%,670px); position: absolute;
            
        }

        .whiteDot1 
        {
            left: 49.5%; transform: translate(-50%, 870px); position: absolute;
            
        }
        
        @keyframes virtualAnim 
        {
        from {transform: translateY(330px); font-size: 50px; left: 41%;  opacity: 0;}
        to {transform: translateY(330px); font-size: 160px; left: 20%; opacity: 0.9;}
        }

        virtual
        {
            font-size: 250px;
            font-weight: bold;
            color: white;
            position: absolute;
            animation: virtualAnim 3s ;
            animation-fill-mode: both;
            font-family: 'Comfortaa', cursive;
        }
        .pfr {
        position: absolute;
        font-size: 70px;
        top: 700px;
        right: 34%;
        color: white;
        font-family: 'Krona One', sans-serif;
        }
        beatSaberText {
        position: absolute;
        font-size: 50px;
        top: 1350px;
        right: 66.6%;
        color: white;
        font-family: 'Kanit', sans-serif;
        }

        intro
        {
            position: absolute;
            font-size: 35px;
            top: 710px;
            left: 12.2%;
            text-align: center;
            color: white;
            font-family: 'Krona One', sans-serif;
        }

        .beatSaber
        {
            transform: translate(100%,915px); position: absolute; height: 400px
        }

        .membership
        {
            transform: translate(333%,1415px); position: absolute; height: 400px; width: 352px;
        }

        hla
        {
            position: absolute;
        font-size: 50px;
        top: 1350px;
        right: 37.5%;
        color: white;
        font-family: 'Kanit', sans-serif;
        }
        
        .container:hover .overlay {
        opacity: 1;
        }
        .MainHLAPoster
        {
            transform: translate(118%,915px); position: absolute; height: 400px; width: 700px;
        }
        .join
        {
            font-family: 'Bebas Neue', cursive;
            position: absolute;
            font-size: 60px;
            top: 1500px;
            left: 65%;
            text-align: center;
            color: #1a1a1a;
            font-weight: bold;
        }
        .overlayHLA 
        {
            transform: translate(118%,915px);
            position: absolute; 
            height: 400px;
            opacity: 0;
            transition: .2s ease;
            z-index: 1;
            width: 700px
        }
        .containerHLA:hover .overlayHLA {
        opacity: 1;
        }
        .MainSVRPoster
        {
            transform: translate(50.3%,1415px); position: absolute; height: 400px; width: 700px;
        }
        .overlaySVR 
        {
            transform: translate(50.3%,1415px);
            position: absolute; 
            height: 400px;
            opacity: 0;
            transition: .2s ease;
            z-index: 1;
            width: 700px
        }
        .containerSVR:hover .overlaySVR {
        opacity: 1;
        }
        strideText {
        position: absolute;
        font-size: 50px;
        top: 1852px;
        right: 69%;
        color: white;
        font-family: 'Kanit', sans-serif;
        }
        .questProjectContainer1
        {
            left: 50%; transform: translate(140%,1640px); position: absolute;
        }
        .overlayMD
        {
            transform: translate(333%,1415px); position: absolute; height: 400px; width: 352px; z-index: 1; opacity: 0;
        }

        .tagBS
        {
            transform: translate(100.5%,915px); position: absolute; height: 50px; width: 352px; z-index: 2;
        }

        .tagHLA
        {
            transform: translate(50.3%,1415px); position: absolute; height: 50px; width: 700px; z-index: 2;
        }

        .tagSTR
        {
            transform: translate(118%,915px); position: absolute; height: 50px; width: 700px; z-index: 2;
        }

        .bsTagText
        {
            font-family: 'Bebas Neue', cursive;
            position: absolute;
            font-size: 47px;
            top: 937px;
            left: 20.8%;
            text-align: center;
            color: #1a1a1a;
            font-weight: bold;
            z-index: 3
        }

        .hlaTagText
        {
            font-family: 'Bebas Neue', cursive;
            position: absolute;
            font-size: 47px;
            top: 937px;
            left: 54.8%;
            text-align: center;
            color: #1a1a1a;
            font-weight: bold;
            z-index: 3
        }

        .strTagText
        {
            font-family: 'Bebas Neue', cursive;
            position: absolute;
            font-size: 47px;
            top: 1437px;
            left: 30%;
            text-align: center;
            color: #1a1a1a;
            font-weight: bold;
            z-index: 3
        }
        .containerMD:hover .overlayMD {
        opacity: 0.2;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" style="background-color:#1a1a1a;">
    <body style="background-color:#1a1a1a;">
        <img class ="questProjectContainer" src ="images/QuestProjector.png" width="750" height="500" />
        <virtual>Virtual Reality</virtual>
        <pfr>PLAY FOR REAL</pfr>    
        <img class ="whiteDot" src ="images/whiteDot.png" width="900" height="4"/>
        <intro class="Intro">The future of gaming IS HERE. Virtual Reality is the new way <br /> of gaming. Experience your dreams through a pair of goggles. <br /> Check out the best games VR has to offer on this website. </intro>    
        <img class ="whiteDot1" src ="images/whiteDot.png" width="900" height="4"/>
        
        <div class="container">
        <div class="container">
        <img class ="beatSaber" src ="images/bsImgMain.jpg"/>
        </div> 
        <a href ="BeatSaber.aspx">
        <video autoplay muted loop class ="overlay">
        <source src="images/resizedBSIntro.mp4" type="video/mp4">
        </video>
        </a>
        </div>
        <div class="containerHLA">
        <div class="containerHLA">
        <img class ="MainHLAPoster" src ="imagesHLA/MainHLAposter.jpg"/>
        </div> 
        <a href ="HalfLifeAlyx.aspx">
        <video autoplay muted loop class ="overlayHLA">
        <source src="imagesHLA/HLAbackgroundResized.mp4" type="video/mp4">
        </video>
        </a>
        </div>    
        <beatSaberText>BEAT SABER</beatSaberText>  
        <hla>HALF LIFE: ALYX</hla>  
        <div class="containerSVR">
        <div class="containerSVR">
        <img class ="MainSVRPoster" src ="imagesSVR/strideVRPoster.jpg"/>
        </div> 
        <a href ="StrideVR.aspx">
        <video autoplay muted loop class ="overlaySVR">
        <source src="imagesSVR/strideVRVideoRecized.mp4" type="video/mp4">
        </video>
        </a>
        </div> 
        <strideText>STRIDE VR</strideText>  
        <div class="container">
        <img class ="membership" src ="images/WhiteSquare.jpg"/>
        </div> 
        <div class ="join">JOIN THE <br /> MEMBERSHIP</div>
        <img class ="questProjectContainer1" src ="images/QuestProjector.png" width="210" height="160" />
        <div class="containerMD">
        <a href ="Login.aspx">
        <img class ="overlayMD" src ="images/bsDarkGraySquere.png"/>
        <% = tagBS %>
        <% = tagHLA %>
        <% = tagSTR %>
        <% = textBS %>
        <% = textSTR %>
        <% = textHLA %>
        </a>
        </div>
    </body>
</asp:Content>

