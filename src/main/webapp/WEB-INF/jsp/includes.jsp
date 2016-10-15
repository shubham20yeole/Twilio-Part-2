<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- This contains the most used tag libraries -->
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: white;
}

li {
    float: left;
    border-right:1px solid #bbb;
}

li:last-child {
    border-right: none;
}

li a {
    display: block;
    color: black;
    text-align: center;
    padding: 22px 25px;
    text-decoration: none;
    font-family: "Copperplate Gothic";
    font-weight: bold;
}

li a:hover:not(.active) {
    background-color: #f2f2f2;
}

.active {
    background-color: #f2f2f2;
}
#header{  }
/* Full-width input fields */
.inputTxt, .inputPass {
    width: 100%;
    width: 100%;
    padding: 12px 20px ;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
#loginbutton {
    background-color: #3b5998;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainercontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

.imgcontainercontainer2 {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.containercontainer {
    padding: 16px;
}
.containercontainer2 {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The modalmodal (background) */
.modalmodal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}
.modalmodal2 {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* modalmodal Content/Box */
.modalmodal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}
.modalmodal-content2 {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {    position: absolute;    right: 25px;    top: 0;    color: #000;    font-size: 35px;    font-weight: bold;}
.close:hover,.close:focus {    color: red;    cursor: pointer;}
/* Add Zoom Animation */
.animate {    -webkit-animation: animatezoom 0.6s;    animation: animatezoom 0.6s}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)}
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)}
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
.logo {
    background-color: #004466;
    font-weight: bold;
    color: white;
    padding-right: 2%;
    padding-left: 2%;
    padding-top: 0.6%;
    padding-bottom: 0.5%;
}
</style>
       <style> <%@ include file="/WEB-INF/jsp/themes/css/style.css"%></style>
       <style> <%@ include file="/WEB-INF/jsp/themes/css/bootstrap.min.css"%></style>
       <style> <%@ include file="/WEB-INF/jsp/themes/css/bootstrap-responsive.min.css"%></style>
       <style> <%@ include file="/WEB-INF/jsp/themes/font-awesome/css/font-awesome.min.css"%></style>
       <style> <%@ include file="/WEB-INF/jsp/themes/css/style.css"%></style>
    
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
</head>
<body data-spy="scroll" data-target=".navbar">
	<div id="headerSection">
	<div class="containercontainer">
		<h1 class="brand cntr">Profile</h1>
		<div class="navbar">
			<div class="nav-collapse">
				<ul class="nav">
					<li class="active"><a class="active" href="/shubhamwebapp/">Home</a></li>
					<li><a href="aboutme">About Me</a></li>
					<li><a href="contactme">Contact Me</a></li>
  <li><a href="resume">Resume</a></li>
  <li><a href="profile">Test</a></li>
  <li style="text-align: 10%; float:right"><a onclick="document.getElementById('id01').style.display='block'">LOG IN</a></li>
  <li style="float:right"><a onclick="document.getElementById('id02').style.display='block'">SIGN UP</a></li>
				</ul>
			</div>
			<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
	</div>
	</div>
<hr>
<script>
// Get the modalmodal
var modalmodal = document.getElementById('id01');
var modalmodal2 = document.getElementById('id02');

// When the user clicks anywhere outside of the modalmodal, close it
window.onclick = function(event) {
    if (event.target == modalmodal) {
        modalmodal.style.display = "none";
    }
    window.onclick = function(event) {
        if (event.target == modalmodal2) {
            modalmodal2.style.display = "none";
        }
}
}
</script>
<div id="id01" class="modalmodal">
  
  <form class="modalmodal-content animate" action="studentlogin.do" method="POST">
    <div class="imgcontainercontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close modalmodal">&times;</span>
      <img src="http://www.dhakacitycollege.edu.bd/images/default.png" alt="Avatar" width="155" height="155" class="davatar">
    </div>

    <div class="containercontainer">
      <label><b>Username</b></label>
      <input type="text" class="inputTxt" placeholder="Enter Username" name="loginemail" required>

      <label><b>Password</b></label>
      <input type="text" class="inputTxt" placeholder="Enter Password" name="logoinpassword" required>
        
      <button type="submit" id="loginbutton">Login</button>
      <input type="checkbox" checked="checked"> Remember me
    </div>

    <div class="containercontainer" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
<div id="id02" class="modalmodal2">
  
  <form class="modalmodal-content2 animate" action="studentRegister.do">
    <div class="imgcontainercontainer2">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close modalmodal">&times;</span>
      <img src="http://www.dhakacitycollege.edu.bd/images/default.png" alt="Avatar" width="155" height="155" class="davatar">
    </div>

    <div class="containercontainer2">
      <label><b>First Name</b></label>
      <input type="text" class="inputTxt" placeholder="First Name" name="firstname" required>
      
      <label><b>Last Name</b></label>
      <input type="text" class="inputTxt" placeholder="Last Name" name="lastname" required>
      
      <label><b>Email Address</b></label>
      <input type="text" class="inputTxt" placeholder="Email Address" id="signupemail" onchange="checkEmail();" name="email" required>
      
      <label><b>Password</b></label>
      <input type="text" class="inputTxt" placeholder="Password" name="passcode" required>

      <label><b>Confirm Password</b></label>
      <input type="text" class="inputTxt" placeholder="Confirm Password" name="passcode" required>
        
      <button type="submit" id="loginbutton">SIGN UP</button>
    </div>

    <div class="containercontainer2" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>
<script>
function checkEmail(){}
</script>