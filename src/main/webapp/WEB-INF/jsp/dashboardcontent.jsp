<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Shubham CS Project</title>
	<meta name="title" content="jQuery Super Easy Text Rotator by Pete R. | The Pete Design" />
	<meta name="description" content="Add a fully customizable Path-like wheel menu button to your website. Created by Pete R., Founder of BucketListly" />
	<meta name="author" content="Pete R.">
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
    
    .credit a {
      color: #555;
      text-decoration: none;
      font-weight: bold;
    }
    .head{
        margin: 10px 0 0px 20px;
    font-size: 60px;
    font-weight: bold;
    color: #000;
    text-shadow: 1px 1px 1px #fff;
    font-family: 'Wire One', arial, serif;}
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
  <div class="wrapper111">
    <p class="head">Java Project by Shubham Yeole.</p>
    <h2>Technology Utilized: Java, Hibernate, Spring MVC, MySQL database, JavaScript, JQuery, AJAX, HTML, CSS</h2>
    <p class="credit">Created by <a href="https://www.linkedin.com/in/shubhamyeole">Shubham Yeole.</a>, Computer Science Student</p>
    <p class="pointer">Visit Below Pages:</p>
    <pre><code>Super &lt;span class="rotate"&gt;Simple, Customizable, Light Weight, Easy&lt;/span&gt; Text Rotator with Style</code></pre>
	  <p class="pointer">into these..</p>
  </div>
</body>
</html>