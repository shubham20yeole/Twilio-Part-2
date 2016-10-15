<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Animated Text and Icon Menu with jQuery</title>
		<meta charset="UTF-8" />
        <meta name="description" content="Animated Text and Icon Menu with jQuery" />
        <meta name="keywords" content="jquery, menu, navigation, sliding, animation, icon" />
		<meta name="author" content="Codrops" />
		
         <style><%@ include file="/WEB-INF/jsp/JQuery/css/style.css"%>
         <%@ include file="/WEB-INF/jsp/JQuery/css/stimenu.css"%>
        </style>
		
		<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow&v1' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Wire+One&v1' rel='stylesheet' type='text/css' />
    </head>
    <body>
		<div class="container">
	
			<ul id="sti-menu" class="sti-menu">
				<li data-hovercolor="#37c5e9">
					<a href="resume">
						<h2 data-type="mText" class="sti-item">Resume</h2>
						<h3 data-type="sText" class="sti-item">LATEST RESUME 2016</h3>
						<span data-type="icon" class="sti-icon sti-icon-care sti-item"></span>
					</a>
				</li>
				<li data-hovercolor="#ff395e">
					<a href="aboutme">
						<h2 data-type="mText" class="sti-item">About Me</h2>
						<h3 data-type="sText" class="sti-item">Professional Summary</h3>
						<span data-type="icon" class="sti-icon sti-icon-alternative sti-item"></span>
					</a>
				</li>
				<li data-hovercolor="#57e676">
					<a href="#">
						<h2 data-type="mText" class="sti-item">Contact Me</h2>
						<h3 data-type="sText" class="sti-item">Personal contact details</h3>
						<span data-type="icon" class="sti-icon sti-icon-info sti-item"></span>
					</a>
				</li>
			</ul>
			<br><br><br><br><br><br><br><br><br><br><br><br><br>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/jquery-ui.min.js"></script>
		<script> <%@ include file="/WEB-INF/jsp/JQuery/js/jquery.easing.1.3.js"%></script>
		<script> <%@ include file="/WEB-INF/jsp/JQuery/js/jquery.iconmenu.js"%></script>
		
		<script type="text/javascript">
			$(function() {
				$('#sti-menu').iconmenu({
					animMouseenter	: {
						'mText' : {speed : 400, easing : 'easeOutExpo', delay : 140, dir : 1},
						'sText' : {speed : 400, easing : 'easeOutExpo', delay : 0, dir : 1},
						'icon'  : {speed : 800, easing : 'easeOutBounce', delay : 280, dir : 1}
					},
					animMouseleave	: {
						'mText' : {speed : 400, easing : 'easeInExpo', delay : 140, dir : 1},
						'sText' : {speed : 400, easing : 'easeInExpo', delay : 280, dir : 1},
						'icon'  : {speed : 400, easing : 'easeInExpo', delay : 0, dir : 1}
					}
				});
			});
		</script>
    </body>
</html>