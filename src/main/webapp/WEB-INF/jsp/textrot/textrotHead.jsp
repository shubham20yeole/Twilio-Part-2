<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title>Shubham CS Project: Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Rotating Words with CSS Animations" />
        <meta name="keywords" content="css3, animations, rotating words, sentence, typography" />
        <meta name="author" content="Codrops" />
		<link href='http://fonts.googleapis.com/css?family=Bree+Serif|Open+Sans+Condensed:700,300,300italic' rel='stylesheet' type='text/css'>
      
        <link rel="stylesheet" type="text/css" href="css/style.css" />

		<style>
		body{
	background: #fff url(../images/lghtmesh.png) repeat center center;
}
.rw-wrapper{
	width: 80%;
	position: relative;
	margin: 110px auto 0 auto;
	font-family: 'Bree Serif';
	padding: 10px;
}
.rw-sentence{
	margin: 0;
	text-align: left;
	text-shadow: 1px 1px 1px rgba(255,255,255,0.8);
}
.rw-sentence span{
	color: #444;
	font-size: 200%;
	font-weight: normal;
}
.rw-words{
	display: inline;
	text-indent: 10px;
}
.rw-words-1 span{
	position: absolute;
	opacity: 0;
	overflow: hidden;
	font-weight: bold;
	font-size: 20px;
	font-family: "Lucida Handwriting", "Lucida Grande", cursive;
	color: #ff0000;
	-webkit-animation: rotateWord 18s linear infinite 0s;
	-ms-animation: rotateWord 18s linear infinite 0s;
	animation: rotateWord 18s linear infinite 0s;
	
}
.rw-words-1 span:nth-child(2) { 
    -webkit-animation-delay: 3s; 
	-ms-animation-delay: 3s; 
	animation-delay: 3s; 
	color: #9b59b6;
}
.rw-words-1 span:nth-child(3) { 
    -webkit-animation-delay: 6s; 
	-ms-animation-delay: 6s; 
	animation-delay: 6s; 
	color: #59b300;	
}
.rw-words-1 span:nth-child(4) { 
    -webkit-animation-delay: 9s; 
	-ms-animation-delay: 9s; 
	animation-delay: 9s; 
	color: #9b59b6;
}
.rw-words-1 span:nth-child(5) { 
    -webkit-animation-delay: 12s; 
	-ms-animation-delay: 12s; 
	animation-delay: 12s; 
	color: #ff3300;
}
.rw-words-1 span:nth-child(6) { 
    -webkit-animation-delay: 15s; 
	-ms-animation-delay: 15s; 
	animation-delay: 15s; 
	color: #9b59b6;
}
@-webkit-keyframes rotateWord {
    0% { opacity: 0; }
    2% { opacity: 0; -webkit-transform: translateY(-30px); }
	5% { opacity: 1; -webkit-transform: translateY(0px);}
    17% { opacity: 1; -webkit-transform: translateY(0px); }
	20% { opacity: 0; -webkit-transform: translateY(30px); }
	80% { opacity: 0; }
    100% { opacity: 0; }
}
@-ms-keyframes rotateWord {
    0% { opacity: 0; }
    2% { opacity: 0; -ms-transform: translateY(-30px); }
	5% { opacity: 1; -ms-transform: translateY(0px);}
    17% { opacity: 1; -ms-transform: translateY(0px); }
	20% { opacity: 0; -ms-transform: translateY(30px); }
	80% { opacity: 0; }
    100% { opacity: 0; }
}
@keyframes rotateWord {
    0% { opacity: 0; }
    2% { opacity: 0; -webkit-transform: translateY(-30px); transform: translateY(-30px); }
	5% { opacity: 1; -webkit-transform: translateY(0px); transform: translateY(0px);}
    17% { opacity: 1; -webkit-transform: translateY(0px); transform: translateY(0px); }
	20% { opacity: 0; -webkit-transform: translateY(30px); transform: translateY(30px); }
	80% { opacity: 0; }
    100% { opacity: 0; }
}
@media screen and (max-width: 768px){
	.rw-sentence { font-size: 18px; }
}
@media screen and (max-width: 320px){
	.rw-sentence { font-size: 9px; }
}
			.no-cssanimations .rw-wrapper .rw-sentence span:first-child{
				opacity: 1;
			}
		</style>
		<!--[if lt IE 9]> 
			<style>
				.rw-wrapper{ display: none; } 
				.rw-sentence-IE{ display: block;  }
			</style>
		<![endif]-->
    </head>
    <body>