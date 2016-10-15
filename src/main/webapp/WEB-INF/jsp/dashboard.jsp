 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Wire One" rel="stylesheet">
   
 
 <script> <%@ include file="/WEB-INF/jsp/themes/js/ass1.js"%></script>
 <%@ include file="/WEB-INF/jsp/themes/css/dashboard.css"%>
<script>    $(function(){        $("#typed").typed({                        stringsElement: $('#typed-strings'),            typeSpeed: 30,            backDelay: 500,            loop: false,            contentType: 'html',             loopCount: false,            callback: function(){ foo(); },         resetCallback: function() { newTyped(); }        });       $(".reset").click(function(){            $("#typed").typed('reset');        });    });    function newTyped(){ }    function foo(){ console.log("Callback"); }    </script>
<div class="homeHeader">
<table width="100%">
<tr>
<td width="2%"><img style="border-radius: 50%;" src="https://scontent.fewr1-1.fna.fbcdn.net/v/t1.0-0/p206x206/14492407_1099867136800901_3030026442452875029_n.jpg?oh=eecb2ff8acfb89575811723d0fb7a35c&oe=586F4D2E" width="45" height="45"></td>
<td width="78%" align="center"><%@ include file="/WEB-INF/jsp/textrot/textrotHead.jsp"%>
		<span class="rw-words-init" style="padding-right: 10%;">Welcome to </span>
					<div class="rw-words rw-words-1">
						<span>Java 8</span>
						<span>Apache Tomcat</span>
						<span>Spring (MVC)</span>
						<span>Hibernate</span>
						<span>JavaScript & JQuery</span>
						<span>AJAX and AngularJS</span>
					</div>
		<span class="rw-words-init" style="padding-left: 20%;">Project</span>
		<%@ include file="/WEB-INF/jsp/textrot/textrotTail"%></td>
    <td width="20%" align="right">
    <img src="http://www.joshmedrano.com/images/followMe.png" width="132" height="42">
    <a href="https://www.facebook.com/sy06736n" target="_blank"><img src="http://blog.addthiscdn.com/wp-content/uploads/2015/11/logo-facebook.png" width="42" height="42"></a>
    <a href="https://www.instagram.com/shubham20.yeole/" target="_blank"><img src="http://3835642c2693476aa717-d4b78efce91b9730bcca725cf9bb0b37.r51.cf1.rackcdn.com/Instagram_App_Large_May2016_200.png" width="38" height="38"></a>
    <a href="https://www.linkedin.com/in/shubhamyeole" target="_blank"><img src="http://www.shinyup.it/wp-content/uploads/2015/04/linkedin_logo.png" width="42" height="42"></a>
    </td></tr></table>
</div>
     <script> <%@ include file="/WEB-INF/jsp/themes/js/typed.js"%></script>

<section>

    <div class="wrapper">
    <div id="one">
    <a href="home" class="button button2" align="left">Home</a><br>
    <a href="aboutme" class="button button2">About Me</a><br>
	<a href="resume" class="button button2">Resume</a><br>
    <div class="outDiv"><div class="inDiv">
    <a href="sms" class="button button2">Send Message</a>
    </div>
    </div><br><br>
    Contact me<br>Email me<br>Rules<br>
    </div>
    <div id="two1">
	<span class="twoHead">
		<p class="title-1">
			<marquee behavior="scroll" direction="left">Dashboard</marquee>
		</p>
		
	</span>
	
	<div class="scroll">
	<div class="wireFont" style=" font-size: 68px;">
	Welcome to Java, Spring(MVC), Hibernate project....
	<p class="Orbitron" style="font-size: 15px; background-color: #f2f2f2; color: grey">
	Technology used: Java | Spring (MVC) | Hibernate | JavaScript | JQuery | AJAX | ANGULARJS....</p>
	<p class="Orbitron" style="font-size: 15px; background-color: #f2f2f2; color: grey">
    Created by :- <a href="https://www.linkedin.com/in/shubhamyeole" target="_blank"> Shubham Yeole</a></p>
	</div>
     
     
     <div style="text-align: center;"><%@ include file="/WEB-INF/jsp/jqueryanimation.jsp"%></div>
     <div style="height:300px;"></div>
</div>
<%@ include file="/WEB-INF/jsp/footer.jsp"%>
