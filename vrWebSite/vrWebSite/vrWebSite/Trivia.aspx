<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Trivia.aspx.cs" Inherits="Trivia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function Grade() {
            var grade = 0;
            if (document.myForm.ex1[0].checked == true) {
                grade += 25;
            }
            if (document.myForm.ex2[2].checked == true) {
                grade += 25;
            }
            if (document.myForm.ex3[0].checked == true) {
                grade += 25;
            }
            if (document.myForm.ex4[1].checked == true) {
                grade += 25;
            }
            window.alert("Your Grade Is:" + grade);
        }
    </script>
    <style>
         .container
{
    transform: translate(10%,200px);
}
.text
{
    font-family: 'Teko', sans-serif; font-size: 40px;
}
input[type=button]
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
input[type=button]:hover 
{
  background-color: #45a049;
} 
.containerRadio {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 0px;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default radio button */
.containerRadio input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 12px;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #cccccc;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.containerRadio:hover input ~ .checkmark {
  background-color: #a6a6a6
;
}

/* When the radio button is checked, add a blue background */
.containerRadio input:checked ~ .checkmark {
  background-color: #4CAF50;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.containerRadio input:checked ~ .checkmark:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.containerRadio .checkmark:after {
 	top: 9px;
	left: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;
}
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <body style ="background-color: #f2f2f2;">
    <div class="container">
    <form name="myForm"  class="form" >
        <p class="text">What is the best selling VR game?</p>
        <div class="text" >
            <label class="containerRadio">Beat-Saber
            <input type="radio" name="ex1" value="BeatSaber" />
            <span class="checkmark"></span>
                </label>
  
            <label class="containerRadio">Half Life: Alyx
            <input type="radio" name="ex1" value="Hla" />
                <span class="checkmark"></span>
                </label>
   
            <label class="containerRadio">Boneworks
            <input type="radio" name="ex1" value="Boneworks" />
                <span class="checkmark"></span>
                </label>
  
        </div>
        <div class="text" >
            <p class="text">Which of the following headsets was made by facebook?</p>
            <label class="containerRadio">Vive Cosmos
            <input type="radio" name="ex2" value="Vc" />
                <span class="checkmark"></span>
                </label>
   
                <label class="containerRadio">Valve Index
            <input type="radio" name="ex2" value="Vi" />
                    <span class="checkmark"></span>
                </label>
    
                    <label class="containerRadio">Oculus Quest
            <input type="radio" name="ex2" value="Oq" />
                        <span class="checkmark"></span>
                </label>
     
        </div>
        <div class="text" >
            <p class="text">What is the best selling vr headset?</p>
            <label class="containerRadio">Playstation VR
            <input type="radio" name="ex3" value="Pv" />
                <span class="checkmark"></span>
                </label>
      
            <label class="containerRadio">Oculus Quest 2
            <input type="radio" name="ex3" value="Oq" />
                <span class="checkmark"></span>
                </label>
      
            <label class="containerRadio">Vive Pro
            <input type="radio" name="ex3" value="Vp" />
                <span class="checkmark"></span>
                </label>
          
        </div>
        <div class="text" >
            <p class="text">What is the best rated vr game?</p>
            <label class="containerRadio">Beat-Saber
            <input type="radio" name="ex4" value="BeatSaber" />
                <span class="checkmark"></span>
                </label>
    
            <label class="containerRadio">Half Life: Alyx
            <input type="radio" name="ex4" value="Hla" />
                <span class="checkmark"></span>
                </label>
         
            <label class="containerRadio">Boneworks
            <input type="radio" name="ex4" value="Boneworks" />
                <span class="checkmark"></span>
                </label>
     <br />
        </div>
        <input type="button" class="cell" name="check" value="Check" onclick="Grade()" />
    </form>
        </div>
<br />
 
</asp:Content>

