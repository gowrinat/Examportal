<!DOCTYPE html>
<html>
<head>
<title>Payment-Portal</title>
    <!-- Your CSS styles go here -->
    <style>
        /* Define your CSS rules here */
        @import url("https://fonts.googleapis.com/css?family=Open+Sans:400,700");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  font-size: 10px;
}


.wrapper {
  font-family: "Open Sans", sans-serif;
  font-size: 3rem;

  background-color: #8bd8ef;
  height: 100vh;

  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;

  overflow: hidden;
}

nav {
  width: 100%;
  position: absolute;
  top: 5px;
  left: 0;
  font-size: 1.6rem;
  
  display: flex;
  flex-direction: row;
}

nav a {
  color: #FCF2F6;
  min-width: 33%;
  text-decoration: none;
  display: block;
  padding: .5rem;
  padding-left: .2rem;
  margin-left: .2rem;
  background: #FF8A63;
  
}

nav a:hover {
  background: #FF602B;
  transition: 300ms;
}


nav a:last-child {
  background: #FF602B;
  border: 1px solid #7C7C7C;
}

.finishtitle {
  position: absolute;
  top: 15%;
  left: 50%;
  transform: translateX(-50%);
  letter-spacing: 2px;
  word-spacing: -5px;
  
}

.finishtitle span {
  letter-spacing: 0px;
  font-weight: bold;
  text-transform: uppercase;
}

.container {
  width: 64rem;
  height: 36rem;
  background-color: #eee5e9;
  border-radius: 5%;
  position: relative;
  border: 1px solid #7C7C7C;
  box-shadow: 10px 10px 10px black;
  margin-top: 10rem;
}

.heading {
  position: absolute;
  top: 10%;
  left: 50%;
  transform: translate(-50%,-0);  
  width: 100%;
  text-align: center;
  font-weight: bold;
  font-size: 3rem;
  text-transform: uppercase;
  letter-spacing: .5rem;
  
  background: white;
}

.heading::after {
  content: '';
  background: black;
  border-bottom: 1px solid black;
  position: absolute;
  bottom: -15%;
  left: 50%;
  transform: translateX(-50%);
  width: 80%;
}

.choose {
  margin-top: 11rem;
  
  display: flex;
  justify-content: space-around;
  align-items: center;
  
}


.choose div {
  width: 22%;
  height: 5rem;
  display: flex;
  align-items: center;
  justify-content: center;
  opacity: .3;
  transition: 500ms;
  transform: scale(.8);
  padding-bottom: 4px;
  cursor: pointer;
}

.choose input {
  display: none;
}

.choose label {
  cursor: pointer;
  width: 50%;
  height: 100%;
}


.choose img {
  width: 100%;
  height: 100%;
}

.active {
  opacity: 1 !important;
  transform: scale(1.3) !important;
  transition: 500ms;
  position: relative;
}

.line {
  background: black;
  bottom: 0;
  width: 100%;
}

.payform {
  display: grid;
  grid-template-columns: 1fr  repeat(2, 20%) 1fr;
  grid-template-rows: 1fr 1fr 1fr 1fr;
  margin-top: 2rem;
  grid-row-gap: 1rem;
  grid-column-gap: .8rem;
}

.payform input {
  height: 3rem;
  border: none;
  border-bottom: 1px solid black;
  background: transparent;
  outline: none;
  font-size: 1.8rem;
}

.accname {
  grid-column: 2/4;
  grid-row: 1/2;
}
.cardnumber {
  grid-column: 2/4;
  grid-row: 2/3;
}

.cvv {
  grid-column: 2/4;
  grid-row: 3/4;
}

.reset {
  grid-column: 2/3;
  grid-row: 4/5;
  border: none !important;
  cursor: pointer;
  border: 1px solid #000000 !important;
  font-size: 1.3rem !important;
}

.reset:hover {
  background: #FCF2F6 !important;
  transition: 200ms;
}

.submit {
  grid-column: 3/4;
  grid-row: 4/5;
  border: none !important;
  color: #000000;
  font-weight: bold;
  cursor: pointer;
  border: 1px solid #000000 !important;
  background: #CF5C36 !important;
  transition: 500ms;
  font-size: 1.3rem !important;
}

.submit:hover {
  background: #FF8A63 !important;
  transition: 200ms;
}



        /* Add more CSS rules for other elements as needed */
    </style>
</head>
<body>
    <div id="wrapper">
        <!-- Your HTML content here -->
        <div class="wrapper">
            
            <div class="finishtitle"><span>Finish</span> Purchase!</div>
            <div class="container">
              <div class="heading">Choose Payment Method</div>
              <div class="choose">
               <div id="active" class="visa active"><input id="visa" name="choose" type="radio"> <label for="visa"><img src="exam8.jpg" alt="visa" /> </label></div>
               <div id="active" class="visa active"><input id="visa" name="choose" type="radio"> <label for="visa"><img src="exam9.jpg" alt="visa" /> </label></div>
               <div id="active" class="visa active"><input id="visa" name="choose" type="radio"> <label for="visa"><img src="exam10.jpg" alt="visa" /> </label></div>
              </div>
              <form autocomplete="off" class="payform" action="/materialhome">
                <input type="text" name="name" class="accname" placeholder="Account Holder Name">
                <input type="text" name="cardnumber" class="cardnumber" placeholder="Credit Card Number">
                <input type="text" name="cvv" class="cvv" placeholder="CVV/CVV2">
                <input type="reset" class="reset" value="Cancel">
                <input type="submit" class="submit" value="Submit">
              </form>
            </div>
          </div>
          </div><!--wrapper end-->
    </div>

    <!-- Your JavaScript code goes here -->
    <script>
        $(document).ready(function() {
            $(".choose div label").on("click", function() {
                $(this).parent().toggleClass("active").siblings().removeClass("active")
             
            });
              
              $(".choose div").on("click", function(){
                $(this).toggleClass("active").siblings().removeClass("active");
                
              });
            
              });
    </script>
</body>
</html>
