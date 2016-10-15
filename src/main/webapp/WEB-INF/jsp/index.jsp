<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Flowers Gallery</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    
    
    
       <style> 
       <%@ include file="/WEB-INF/jsp/themes/css/style.css"%>
       <%@ include file="/WEB-INF/jsp/themes/css/bootstrap.min.css"%>
       <%@ include file="/WEB-INF/jsp/themes/css/bootstrap-responsive.min.css"%>
       <%@ include file="/WEB-INF/jsp/themes/font-awesome/css/font-awesome.min.css"%>
       <%@ include file="/WEB-INF/jsp/themes/css/style.css"%>
       <%@ include file="/WEB-INF/jsp/themes/css/login.css"%></style>
    
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
</head>
<body data-spy="scroll" data-target=".navbar">
	<div id="headerSection">
	<div class="container">
		<h1 class="brand cntr">Profile</h1>
		<div class="navbar">
			<div class="nav-collapse">
				<ul class="nav">
					<li class="active"><a href="#carouselSection">Home	</a></li>
					<!-- <li><a href="#ourServices">What we do?</a></li> -->
					<li><a href="#portfolioSection">My Skills</a></li>
					<!-- <li><a href="#blogSection">Blog</a></li> -->
					<li><a href="#contactSection">Email Me</a></li>
				</ul>
			</div>
			<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<p style="color: #00aaff" class="openmenu" onclick="openmenu();">OPEN MENU</p>
			</button>
			
		</div>
	</div>
	</div>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <div class="wrap">
        <h1 class="h1">Portfolio</h1>

        <div class="type-wrap">
            <div id="typed-strings">
                <p>Welcome......!!!</p>
                <p>My name is Shubham Yeole from Pace University, Comouter Science Major.</p>
                <p>And then deletes them.</p>
            </div>
            <span id="typed" style="white-space:pre;"></span>
        </div>

       
    </div>

<!--Header Ends================================================ -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
$(function(){
	   $(".openmenu").click(function () {
	      $(this).text(function(i, text){
	          return text === "MENU" ? "MENU" : "MENU";
	      })
	   });
	})

</script>

<div id="carouselSection" class="cntr"> 
		<div id="myCarousel" class="carousel slide">
			<div class="carousel-inner" style="color: black; padding-top: 3%;">
			<table width="100%"><tr><td  width="30%"><a href="https://www.linkedin.com/in/shubhamyeole"><img src="themes/images/portfolio/profilepicture.png" width="172" alt=""></a></td><td  width="70%">
				<b>I, Shubham Yeole, am currently pursuing my master’s degree in computer science from Pace University.</b>Software/web/ Backend Engineer intern / Joining Disruptive Startup team <br><br><br><br>
 
I have 2+ years of experience in Java and a solid understanding of Software Development Life Cycle and Agile methodology. Worked on Hibernate and Spring framework in Summer Internship. I have expertise in Java, Hibernate, Spring(MVC) PHP, Python, JavaScript, JQuery, AJAX, RESTful Web service, HTML and CSS. I also have hands on experience in Google map and calendar API. I have extensively worked with MySQL Workbench, Eclipse, NetBeans, Selenium 2.0 and JMeter. I am familiar with Apache Tomcat and Java EE servers. I have strong understanding of data structures and object oriented programming principles. Currently, I am working on 3 projects; ‘Cab Invoice Generator’ using Java and MySQL, 'Rental vehicle management' in Python and a '3-tier application for University Donation System' in MySQL and Java. 

I believe that the above mentioned skills would definitely enable me to prove myself as a powerful asset to your organization. I will be available via email at sy06736n@pace.edu or via phone at +1 (201)-887 5323 to further discuss about my qualifications and provide additional details. Please let me know the next steps. Looking forward for a positive reply. </td></tr></table>

			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
		</div>
</div>

<!-- Sectionone block ends======================================== -->
 
<div id="welcomeSection"> 
	<div class="container cntr">
			<h4>Testimonials</h4>
			<div id="testimonial" class="carousel slide">
			<div class="carousel-inner">
				<div class="item active">
					<p><img src="http://img09.deviantart.net/8b47/i/2013/307/2/8/resume_logo_by_mohamad_saleh-d6sv8s1.png" width="400" height="50" alt=""><br/><br/></p>
				</div>
				<div class="item">
					<p>Find my Portfolio.<br/><br/></p>
				</div>
				<div class="item">
					<p>Find my work experience.<br/><br/></p>
				</div>
			</div>
			<a class="left carousel-control" href="#testimonial" data-slide="prev">&lsaquo;</a>
			<a class="right carousel-control" href="#testimonial" data-slide="next">&rsaquo;</a>
		</div>

		
		<h2>Welcome!</h2>
		<p>
		Vivamus commodo placerat libero, eget pulvinar felis lobortis in. Curabitur ac enim nibh. Cras in odio nisi. Fusce et augue velit. Nulla convallis, ipsum vitae tristique pretium, sapien odio viverra quam, eget mollis diam risus ut mi. Nullam ultrices ornare nisl, sagittis ullamcorper dolor rutrum vitae. Sed accumsan mauris eget elit dictum vitae dapibus nisl [...]
		</p>
	</div>
</div>

<!-- Our Services======================================== -->
<div id="ourServices"> 	
<div class="container">	
		<h1 class="cntr">My Skills</h1>
		<div class="row">
		<div class="span4">
			<div class="thumbnail">
				
				<h4>Web Design</h4>
				
				<h5>Your Website represents You...</h5>
				<ul class="unstyled">
				<li>Website Design</li>
				<li>PSD To XHTML &amp; CSS Conversion</li>
				<li>Graphic Design (Coverpage, Logo, Brocer etc.)</li>
				</ul>
				<a href="#"> More detail</a><p></p>
			</div>
			<br>
			<div class="thumbnail">
			
			<h4>Webpage Customizations</h4>
			
			<h5>Drive your business in The Fast Track...</h5>
				<ul class="unstyled">
					<li> Customizing different websites  </li>
					<li> E-commersesite, Blogs and Forums etc.</li>
					<li> Customization web packages </li>
				</ul>
			<a href="#"> More detail</a><p></p>
		</div>
		<br>

			<div class="thumbnail">
				
				<h4>SEO</h4>
				<h5>For any online activities  ... </h5>
			<ul class="unstyled">
				<li>PSD to XHTML and CSS Conversion</li>
				<li> Updating old website to new generation. </li>
				<li> Compitable with different Browser. </li>
			</ul>
			<a href="#"> More detail</a><p></p>
			</div>
		</div>
		<div class="span4">

		<div class="thumbnail">
		
			<h4>Website Development</h4>
			<h5>For any online activities  ... </h5>
			<ul class="unstyled">
				<li>PSD to XHTML and CSS Conversion</li>
				<li> Updating old website to new generation. </li>
				<li> Compitable with different Browser. </li>
			</ul>
			<a href="#"> More detail</a><p></p>
		</div>
		<br>
		<div class="thumbnail">
			
			<h4>Webpage Customizations</h4>
			
			<h5>Drive your business in The Fast Track...</h5>
				<ul class="unstyled">
					<li> Customizing different websites  </li>
					<li> E-commersesite, Blogs and Forums etc.</li>
					<li> Customization web packages </li>
				</ul>
			<a href="#"> More detail</a><p></p>
		</div>
		<br>

		<div class="thumbnail">
			
			<h4>Optimizations</h4>
			<h5>For any online activities  ... </h5>
			<ul class="unstyled">
				<li>PSD to XHTML and CSS Conversion</li>
				<li> Updating old website to new generation. </li>
				<li> Compitable with different Browser. </li>
			</ul>
			<a href="#"> More detail</a><p></p>
		</div>
		</div>
		<div class="span4">
		<div class="thumbnail">
			
			<h4>Webpage Customizations</h4>
			
			<h5>Drive your business in The Fast Track...</h5>
				<ul class="unstyled">
					<li> Customizing different websites  </li>
					<li> E-commersesite, Blogs and Forums etc.</li>
					<li> Customization web packages </li>
				</ul>
			<a href="#"> More detail</a><p></p>
		</div>
		<br>
		<div class="thumbnail">
			
			<h4>Webpage Customizations</h4>
			
			<h5>Drive your business in The Fast Track...</h5>
				<ul class="unstyled">
					<li> Customizing different websites  </li>
					<li> E-commersesite, Blogs and Forums etc.</li>
					<li> Customization web packages </li>
				</ul>
			<a href="#"> More detail</a><p></p>
		</div>
		<br>
		<div class="thumbnail">
			
			<h4>Multimedia</h4>
			<h5>For any online activities  ... </h5>
			<ul class="unstyled">
				<li>PSD to XHTML and CSS Conversion</li>
				<li> Updating old website to new generation. </li>
				<li> Compitable with different Browser. </li>
			</ul>
			<a href="#"> More detail</a><p></p>
		</div>
		</div>
</div>
</div>
</div>

<!-- Our Experience======================================== -->
<div id="portfolioSection">
<h1 class="cntr">My Experience</h1>
<div class="container">	
	<ul class="nav nav-pills">
	<li class="active"><a href="#all" data-toggle="tab">ALL</a></li>
	<li class=""><a href="#new" data-toggle="tab">NEW</a></li>
	<li class=""><a href="#popular" data-toggle="tab">POPULAR</a></li>
	<li class=""><a href="#comingsoon" data-toggle="tab">COMING SOON</a></li>
	</ul>
<div class="clr"></div>
<div class="tabbable tabs">
<div class="tab-content label-primary">
	<div class="tab-pane active" id="all">
	<ul class="thumbnails">
	<li class="span3">
		<div class="thumbnail">
			<div class="blockDtl">
			<a href="#"><img src="" alt=""></a>
			<h4>Easy Interface</h4>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
			</div>
		</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li><li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li><li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>	
	</ul>
	<div class="pagination pull-right">
	  <ul>
		<li><a href="#">Prev</a></li>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">Next</a></li>
	  </ul>
	</div>	
	</div>
	<div class="tab-pane" id="new">
	<ul class="thumbnails">
	<li class="span3">
		<div class="thumbnail">
			<div class="blockDtl">
			<a href="#"><img src="" alt=""></a>
			<h4>Easy Interface</h4>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
			</div>
		</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li><li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li><li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>	
	</ul>
	
	</div>
	<div class="tab-pane" id="popular">
	<ul class="thumbnails">
	<li class="span3">
		<div class="thumbnail">
			<div class="blockDtl">
			<a href="#"><img src="" alt=""></a>
			<h4>Easy Interface</h4>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
			</div>
		</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li><li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li><li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>	
	</ul>
	

	</div>
	<div class="tab-pane" id="comingsoon">
	<ul class="thumbnails">
	<li class="span3">
		<div class="thumbnail">
			<div class="blockDtl">
			<a href="#"><img src="" alt=""></a>
			<h4>Easy Interface</h4>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
			</div>
		</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li><li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li><li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>
		<li class="span3">
			<div class="thumbnail">
				<div class="blockDtl">
				<a href="#"><img src="" alt=""></a>
				<h4>Easy Interface</h4>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
				</div>
			</div>
		</li>	
	</ul>
	

	</div>
</div>
</div>
</div>
</div>
<!-- ========================= -->
<!-- Contact Section -->
<div id="blogSection">
<h1 class="cntr"> OUR BLOG</h1>

<div class="container">
<div class="row">
	<div class="span9">
		<div class="blogBlk">
		<div class="inner">
		<input type="text" name="fullname" placeholder="Full Name">
<input type="text" name="subject" placeholder="Subject">
<input type="text" name="date" placeholder="Data">
		<h1><a href="#" rel="bookmark" title="Permanent Link to Cras in odio nisi">Cras in odio nisi</a></h1>
		<p class="meta">Added by <a href="#" title="Posts by admin">admin</a> on <a href="#">November 14th, 2010</a>, filed under 
		<a href="#" title="View all posts in Category 3" rel="category">Design </a></p>
		<p><img src="" class="attachment-wide wp-post-image" alt="78" title="78"></p>
		<p>Vivamus commodo placerat libero, eget pulvinar felis lobortis in. Curabitur ac enim nibh. Cras in odio nisi. Fusce et augue velit. 
		Nulla convallis, ipsum vitae tristique pretium, sapien odio viverra quam, eget mollis diam risus ut mi. Nullam ultrices ornare nisl,
		 sagittis ullamcorper dolor rutrum vitae. Sed accumsan mauris eget elit dictum vitae dapibus nisl [...]</p>
		<p>
			<a href="#" title="Comment on Cras in odio nisi">4 Comments</a> | 
			<a class="addcommentbutton" href="">Add Comments</a> | 
			<a href="#">More Details</a>
		</p>
		
		<div class="addcommentsection"><p > add comment</p></div>
		
		</div>
		<script>
		$(function(){
			addcommentsection
			$(".addcommentsection").hide();
			   $(".addcommentbutton").click(function () {
				   $(".addcommentsection").show();
			   });
			})
		</script>
		<hr class="soften"/>
		<div class="inner">
		<h1><a href="#" rel="bookmark" title="Permanent Link to Cras in odio nisi">Cras in odio nisi</a></h1>
		<p class="meta">Added by <a href="#" title="Posts by admin">admin</a> on <a href="#">November 14th, 2010</a>, filed under <a href="#" title="View all posts in Category 3" rel="category">Category 3</a></p>
		<p><img src="" class="attachment-wide wp-post-image" alt="78" title="78"></p>
		<p>Vivamus commodo placerat libero, eget pulvinar felis lobortis in. Curabitur ac enim nibh. Cras in odio nisi. Fusce et augue velit. 
		Nulla convallis, ipsum vitae tristique pretium, sapien odio viverra quam, eget mollis diam risus ut mi. Nullam ultrices ornare nisl,
		 sagittis ullamcorper dolor rutrum vitae. Sed accumsan mauris eget elit dictum vitae dapibus nisl [...]</p>
		<p>
			<a href="#" title="Comment on Cras in odio nisi">4 Comments</a> | 
			<a href="#">Add Comments</a> | 
			<a href="#">More Details</a>
		</p>
		</div>
		<hr class="soften"/>
		<div class="inner">
		<h1><a href="#" rel="bookmark" title="Permanent Link to Cras in odio nisi">Cras in odio nisi</a></h1>
		<p class="meta">Added by <a href="#" title="Posts by admin">admin</a> on <a href="#">November 14th, 2010</a>, filed under <a href="#" title="View all posts in Category 3" rel="category">Category 3</a></p>
		<p><img src="" class="attachment-wide wp-post-image" alt="78" title="78"></p>
		<p>Vivamus commodo placerat libero, eget pulvinar felis lobortis in. Curabitur ac enim nibh. Cras in odio nisi. Fusce et augue velit. 
		Nulla convallis, ipsum vitae tristique pretium, sapien odio viverra quam, eget mollis diam risus ut mi. Nullam ultrices ornare nisl,
		 sagittis ullamcorper dolor rutrum vitae. Sed accumsan mauris eget elit dictum vitae dapibus nisl [...]</p>
		<p>
			<a href="#" title="Comment on Cras in odio nisi">4 Comments</a> | 
			<a href="#">Add Comments</a> | 
			<a href="#">More Details</a>
		</p>
		</div>
		</div>
		<div class="pagination pull-right">
			  <ul>
				<li><a href="#">Prev</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">Next</a></li>
			  </ul>
		</div>	
</div>


<!-- Sidebar comumn -->
<div class="span3">
	<div class="well well-small">
		<h4>Categories</h4>
		<ul>
			<li><a href="#">ALL</a></li>
			<li><a href="#">Design (14)</a></li>
			<li><a href="#">SEO (18)</a></li>
			<li><a href="#">Development (8)</a></li>
			<li><a href="#">Optimizations (4)</a></li>
			<li><a href="#">Customizations (18)</a></li>
			<li><a href="#">Media</a></li>
		</ul>
	</div>
	<div id="clients">
		<div class="thumbnail">
			<div class="blockDtl">
			<a href="#"><img src="" alt=""></a>
			<h4>Download</h4>
			<a href="#">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, <br><strong>Download Now</strong></a>
			</div>
		</div>
	</div>
	<br>
	<div class="well well-small">
		<h4>Popular Posts</h4>
		<ul>
			<li><a href="#">Customizations</a></li>
			<li><a href="#">Media</a></li>
		</ul>
	</div>

	<div class="well well-small">
		<h4>Archives</h4>
		<ul>
			<li><a href="#">November 2012 (10)</a></li>
			<li><a href="#">October 2012 (19)</a></li>
			<li><a href="#">September 2012 (19)</a></li>
			<li><a href="#">August 2012 (22)</a></li>
			<li><a href="#">July 2012 (25)</a></li>
			<li><a href="#">June 2012 (19)</a></li>
			<li><a href="#">May 2012 (27)</a></li>
			<li><a href="#">April 2012 (15)</a></li>
			<li><a href="#">More...</a></li>
		</ul>
	</div>
</div>
</div>
	</div>
</div>
<!-- Contact Section -->
<div id="contactSection">
<h1 class="cntr">Contact Me</h1>
	<div class="container">	
		<div class="row">	
		<div class="span9">
			<div class="alert alert-error">( * )Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
				<fieldset>
				<form action="emailAction.do" method="POST">
				
				  <div class="control-group">
					<label class="control-label" for="input01">Name</label>
					<div class="controls">
					  <input type="text" name="fullname" class="input-xlarge" id="input01">
					 
					</div>
				  </div>
				   <div class="control-group">
					<label class="control-label" for="input11">Email</label>
					<div class="controls">
					  <input type="text" name="emailto" class="input-xlarge" id="input11">
					   <input type="hidden" name="emailsubject" class="input-xlarge" id="input11" value="Email sent to Shubham Yeole">
					</div>
				  </div>
				   <div class="control-group">
					<label class="control-label" for="textarea">Messages</label>
					<div class="controls">
					  <textarea class="input-xlarge" name="emailbody" id="textarea" rows="3" style="height:65px"></textarea>
					</div>
				  </div>
				  <div class="form-actions">
					<input type="submit" class="btn btn-success" value="send messages">
					<button class="btn">Cancel</button>
				  </div>
				  </form>
				</fieldset>
			  </form>
		</div> 
		<div class="span3">	
			<div>
				<h4>Address 1</h4>
				<p>
					Tulip LLC Los Angeles
					102 W. 1st St.
					Los Angeles, CA 90011<br>
					Phone: 1234567891<br>
					Fax: 109876543212<br>
					Email: <a href="mailto:info@tulipllc.com">info@tulipllc.com</a><br>
					website: <a href="http://www.tulipllc.com">www.tulipllc.com</a>
				</p>
			</div>
			<br>
			<br>
			<div>
				<h4>Address 2</h4>
				<p>
					Shubham Yeole,
					10 Front Street,
					Jersey City, NJ 07302<br>
					Phone: 2018875323<br>
					Email: <a href="mailto:shubham20.yeole@gmail.com">info@tulipllc.com</a><br>
				</p>
			</div>
		</div>
		
		</div> 
		</div> 
</div> 
<!-- Wrapper end -->

<div id="footerSection">
	<div class="container">
	<div class="socialMedia">
		<a class="facebook" href="#"></a>
		<a class="twitter" href="#"></a>
	</div>
	<div id="footerMenu">
		<a href="#carouselSection">Home	</a>
		<a href="#ourServices">My Skills</a>
		<a href="#portfolioSection">Portfolio</a>
		<a href="#blogSection">Blog</a>
		<a href="#contactSection">Support</a>
	</div>
		<p><small>www.tuplipllc.com &copy; 2013 All rights reserved.</small></p>
	</div>
</div>
<a href="#" class="go-top" style="display: none;"><i class="icon-double-angle-up"></i></a>

<!-- Javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

       <script> <%@ include file="/WEB-INF/jsp/themes/js/jquery-1.9.1.min.js"%></script>
       <script> <%@ include file="/WEB-INF/jsp/themes/js/bootstrap.min.js"%></script>
       <script> <%@ include file="/WEB-INF/jsp/themes/js/jquery.scrollTo-1.4.3.1-min.js"%></script>
       <script> <%@ include file="/WEB-INF/jsp/themes/js/jquery.easing-1.3.min.js"%></script>
       <script> <%@ include file="/WEB-INF/jsp/themes/js/jquery.scrollTo-1.4.3.1-min.js"%></script>
       <script> <%@ include file="/WEB-INF/jsp/themes/js/default.js"%></script>
       <script> <%@ include file="/WEB-INF/jsp/themes/js/typed.js"%></script>
       <script> <%@ include file="/WEB-INF/jsp/themes/js/homepage.js"%></script>


<script type="text/javascript">


</script>

<script>

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

      <button type="submit" id="loginbutton">SIGN UP</button>
    </div>

    <div class="containercontainer2" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>

</body>
</html>