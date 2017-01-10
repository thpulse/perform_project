<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<head>

	
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">

<style>
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, 
pre, form, fieldset, input, textarea, p, blockquote, th, td { 
  padding:0;
  margin:0;}

fieldset, img {border:0}

ol, ul, li {list-style:none}

:focus {outline:none}

body,
input,
textarea,
select {
  font-family: 'Open Sans', sans-serif;
  font-size: 16px;
  color: #4c4c4c;
}

p {
  font-size: 12px;
  width: 150px;
  display: inline-block;
  margin-left: 18px;
}
h1 {
  font-size: 32px;
  font-weight: 300;
  color: #4c4c4c;
  text-align: center;
  padding-top: 10px;
  margin-bottom: 10px;
}

html{
  background-color: #ffffff;
}

.testbox {
  margin: 20px auto;
  width: 500px; 
  height: 830px; 
  -webkit-border-radius: 8px/7px; 
  -moz-border-radius: 8px/7px; 
  border-radius: 8px/7px; 
  background-color: #ebebeb; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  border: solid 1px #cbc9c9;
}
.testbox2 {
	margin: 20px auto;
   	width: 270px; 
   	height: 200px; 
	background-color: #ebebeb; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  border: solid 1px #cbc9c9;

}

input[type=radio] {
  visibility: hidden;
}

form{
  margin: 0 30px;
}

label.radio {
	cursor: pointer;
  text-indent: 35px;
  overflow: visible;
  display: inline-block;
  position: relative;
  margin-bottom: 15px;
}

label.radio:before {
  background: #9d426b;
  content:'';
  position: absolute;
  top:2px;
  left: 0;
  width: 20px;
  height: 20px;
  border-radius: 100%;
}

label.radio:after {
	opacity: 0;
	content: '';
	position: absolute;
	width: 0.5em;
	height: 0.25em;
	background: transparent;
	top: 7.5px;
	left: 4.5px;
	border: 3px solid #ffffff;
	border-top: none;
	border-right: none;

	-webkit-transform: rotate(-45deg);
	-moz-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

input[type=radio]:checked + label:after {
	opacity: 1;
}

hr{
  color: #a9a9a9;
  opacity: 0.3;
}

input[type=text],input[type=password]{
  width: 270px; 
  height: 40px; 
  -webkit-border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  -moz-border-radius: 0px 4px 4px 0px/0px 0px 4px 4px; 
  border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  background-color: #fff; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 1px #cbc9c9;
  margin-left: -5px;
  margin-top: 13px; 
  padding-left: 10px;
}
input[type=checkbox]{
	width: 15px;
	height: 15px;


}


#icon {
  display: inline-block;
  width: 30px;
  background-color: #3a57af;
  padding: 8px 0px 8px 15px;
  margin-left: 15px;
  -webkit-border-radius: 4px 0px 0px 4px; 
  -moz-border-radius: 4px 0px 0px 4px; 
  border-radius: 4px 0px 0px 4px;
  color: white;
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09);
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 0px #cbc9c9;
}

.gender {
  margin-left: 30px;
  margin-bottom: 30px;
}

.accounttype{
  margin-left: 8px;
  margin-top: 20px;
}

a.button {
  font-size: 14px;
  font-weight: 600;
  color: white;
  padding: 6px 25px 0px 20px;
  margin: 10px 8px 20px 0px;
  display: inline-block;
  float: right;
  text-decoration: none;
  width: 90px; height: 27px; 
  -webkit-border-radius: 5px; 
  -moz-border-radius: 5px; 
  border-radius: 5px; 
  background-color: #9d426b; 
  -webkit-box-shadow: 0 3px rgba(58,87,175,.75); 
  -moz-box-shadow: 0 3px rgba(58,87,175,.75); 
  box-shadow: 0 3px rgba(58,87,175,.75);
  transition: all 0.1s linear 0s; 
  top: 0px;
  position: relative;
}

 a.button:hover {
  top: 3px;
  background-color:#9d426b;
  -webkit-box-shadow: none; 
  -moz-box-shadow: none; 
  box-shadow: none;
  
}
 

</style>
</head>

<body>


<div class="container-fluid">
           <div class="row">   
                 <div class="col-sm-3" style="background-color:white;"></div>
                <div class="col-sm-6" style="background-color:white;">
                
                   	<div class="testbox">
  						<h1>Registration</h1>

 					 <form action="/">
   
						<!-- <label id="icon" for="name"><i class="icon-user"></i></label> -->
 						 <input type="text" name="id" placeholder="Id" required/><br>
	
						<!-- <label id="icon" for="name"><i class="icon-shield"></i></label> -->
  						<input type="password" name="pass" placeholder="Password" required/><br>
	
					<!-- 	<label id="icon" for="name"><i class="icon-shield"></i></label> -->
  						<input type="password" name="pass2" placeholder="Password" required/><br>
  						

					<!-- 	<label id="icon" for="name"><i class="icon-user"></i></label> -->
  						<input type="text" name="name" placeholder="Name" required/><br>   
   
   						<!--  <label id="icon" for="name"><i class="icon-envelope "></i></label> -->
  						<input type="text" name="email" placeholder="Email" required/><br>
  
  					<!-- 	<label id="icon" for="name"><i class="icon-shield"></i></label> -->
 						 <input type="text" name="security" pattern="\d{6}\-\d{7}" 
 						 			title = "123456-1234567 형식으로 입력하세요 "placeholder="SSN" required/><br>
  
  					<!-- 	<label id="icon" for="name"><i class="icon-shield"></i></label> -->
 						 <input type="text" name="tel" placeholder="Tel" required/><br>
  						<div class="testbox2">
  						 <div class="checkbox">
 						 	<label>Gerne Choice</label><br>
  							<label><input type="checkbox" name="genre" value="play">Play</label><br>
  							 <label><input type="checkbox" name="genre" value="Musical">Musical</label><br>
  							 <label><input type="checkbox" name="genre" value="Classic">Classic</label><br>
  							 <label><input type="checkbox" name="genre" value="Opera">Opera</label><br>
  							 <label><input type="checkbox" name="genre" value="Dance">Dance</label><br>
  							 <label><input type="checkbox" name="genre" value="Ballet">Ballet</label><br>
  							 <label><input type="checkbox" name="genre" value="Gugak">Gugak</label><br>
 						 
  							</div>
  					 	   </div>
 						 <div class="gender">
   						 <input type="radio" value="None" id="male" name="gender" checked/>
   						 <label for="male" class="radio" chec>Male</label>
    
   						 <input type="radio" value="None" id="female" name="gender" />
    					<label for="female" class="radio">Female</label>
   						</div>
   
  
  						 <p>By clicking Register, you agree on our <a href="#">terms and condition</a>.</p>
  							 <a href="#" class="button">Register</a>
 						 </form>
 						
						</div>
                   
             </div>
                <div class="col-sm-3" style="background-color:white;"></div>
           </div>
      </div>

</body>
</html>