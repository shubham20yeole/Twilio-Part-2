<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
	<meta charset="utf-8">
	<title>Shubham Java Project</title>
	<meta name="title" content="jQuery Super Easy Text Rotator by Pete R. | The Pete Design" />
	<meta name="description" content="Add a fully customizable Path-like wheel menu button to your website. Created by Pete R., Founder of BucketListly" />
	<meta name="author" content="Pete R.">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Pacifico:400' rel='stylesheet' type='text/css'>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script type="text/javascript" src="jquery.simple-text-rotator.js"></script>
  <style>
    html {
      height: 100%;
    }
    body {
      background: #f4eedf;
      padding: 0;
      text-align: center;
      font-family: 'open sans';
      position: relative;
      margin: 0;
      height: 100%;
    }
    
    .wrapper {
    	height: auto !important;
    	height: 100%;
    	margin: 0 auto; 
    	overflow: hidden;
    }
    
    a {
      text-decoration: none;
    }
    
    
    h1, h2 {
      width: 100%;
      float: left;
    }
    h1 {
      margin-top: 100px;
      color: #555;
      margin-bottom: 5px;
    }
    h2 {
      color: #999;
      font-weight: 100;
      margin-top: 0;
      margin-bottom: 10px;
    }
    
    .pointer {
      color: #9b59b6;
      font-family: 'Pacifico', cursive;
      font-size: 30px;
      margin-top: 15px;
    }
    pre {
      margin: 80px auto;
    }
    pre code {
      padding: 35px;
      border-radius: 5px;
      font-size: 15px;
      background: rgba(0,0,0,0.1);
      border: rgba(0,0,0,0.05) 5px solid;
      max-width: 500px;
    }
    .main {
      float: left;
      width: 100%;
      margin: 0 auto;
    }
    
    .main h1 {
      padding:150px 50px;
      float: left;
      width: 100%;
      font-size: 45px;
      box-sizing: border-box;
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      font-weight: 100;
      color: white;
      margin: 0;
    }
    .main h1.demo1 {
      background: #1ABC9C;
    }
    .main h1.demo2 {
      background: #e74c3c;
    }
    .main h1.demo3 {
      background: #e67e22;
    }
    .main h1.demo4 {
      background: #f1c40f;
    }
    .main h1.demo5 {
      background: #34495e;
    }
    
    .reload, .btn{
      display: inline-block;
      border: 4px solid #FFF;
      border-radius: 5px;
      -moz-border-radius: 5px;
      -webkit-border-radius: 5px;
      background: rgba(255,255,255, 0.75);
      display: inline-block;
      line-height: 100%;
      padding: 0.7em;
      text-decoration: none;
      opacity: 0.7;
      color: #555;
      width: 100px;
      line-height: 140%;
      font-size: 17px;
      font-family: open sans;
      font-weight: bold;
    }
    .reload:hover, .btn:hover {
      background: white;
    }
    .btn {
      width: 200px;
    }
    .btns {
      width: 230px;
      margin: 50px auto;
    }
    .credit {
      text-align: center;
      color: #999;
      padding: 10px;
      margin: 0 0 40px 0;
      background: rgba(255,255,255,0.25);
      float: left;
      width: 100%;
    }
    .credit a {
      color: #555;
      text-decoration: none;
      font-weight: bold;
    }
	</style>
	<link rel="stylesheet" type="text/css" href="simpletextrotator.css" />
	<script>
	  $(document).ready(function(){
			$(".demo1 .rotate").textrotator({
        animation: "fade",
        speed: 1000
      });
      $(".demo2 .rotate").textrotator({
        animation: "flip",
        speed: 1250
      });
      $(".demo3 .rotate").textrotator({
        animation: "flipCube",
        speed: 1500
      });
      $(".demo4 .rotate").textrotator({
        animation: "flipUp",
        speed: 1750
      });
      $(".demo5 .rotate").textrotator({
        animation: "spin",
        speed: 2000
      });
		});
		
	</script>
</head>
<body>
  <div class="wrapper">
  
    <h1>Welcome to Java, Spring, Hibernate project by Shubham Yeole.</h1>
    <h2>Technology used: Java, Hibernate, Spring(MVC), JavaScript, JQuery, AJAX and AngularJS
    </h2>
    <p class="credit">Created by <a href="https://www.linkedin.com/in/shubhamyeole" target="_blank">Shubham Yeole</a></p>
    <p class="pointer">Turn this:</p>
    <pre><code>Super &lt;span class="rotate"&gt;Simple, Customizable, Light Weight, Easy&lt;/span&gt; Text Rotator with Style</code></pre>
	  <p class="pointer">into these..</p>
	  <div class="main">
	    <h1 class="demo1">Super <span class="rotate">Simple, Customizable, Light Weight, Easy</span> Text Rotator with Style</h1>
	    <h1 class="demo2">Super <span class="rotate">Simple, Customizable, Light Weight, Easy</span> Text Rotator with Style</h1>
	    <h1 class="demo3">Super <span class="rotate">Simple, Customizable, Light Weight, Easy</span> Text Rotator with Style</h1>
	    <h1 class="demo4">Super <span class="rotate">Simple, Customizable, Light Weight, Easy</span> Text Rotator with Style</h1>
	    <h1 class="demo5">Super <span class="rotate">Simple, Customizable, Light Weight, Easy</span> Text Rotator with Style</h1>
    </div>
  </div>
</body>
</html>