<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">

<style>
    ul {
        display:block;
        background: #3B2F63;
        list-style:none;
        margin:0;
        padding:12px 10px;
        height:21px;
    }
    ul li:last-child{ float:right; }
    ul li {
        float:left;
        font:13px helvetica;
        font-weight:bold;
        margin:3px 0;
    }
    ul li a {
        color:#FFF;
        text-decoration:none;
        padding:6px 15px;
        cursor:pointer;
    }
    ul li a:hover {
         background:white;
        color:#3B2F63;
        text-decoration:none;
        cursor:pointer;
    }
        
    #noti_Container {
        position:relative;
    }

.footer {
  font-family: "Helvetica Neue", Arial, sans-serif;

  position: absolute;
  right: 0;
  bottom: 0;
  left: 0;
  padding: 1rem;
  background-color: #efefef;
  text-align: center;
}
    /* A CIRCLE LIKE BUTTON IN THE TOP MENU. */
    #noti_Button {
        width:22px;
        height:22px;
        line-height:22px;
        border-radius:50%;
        -moz-border-radius:50%; 
        -webkit-border-radius:50%;
        background:#FFF;
        margin:-3px 10px 0 10px;
        cursor:pointer;
    }
         
    /* THE POPULAR RED NOTIFICATIONS COUNTER. */
    #noti_Counter {
        display:block;
        position:absolute;
        background:#E1141E;
        color:#FFF;
        font-size:12px;
        font-weight:normal;
        padding:1px 3px;
        margin:-8px 0 0 25px;
        border-radius:2px;
        -moz-border-radius:2px; 
        -webkit-border-radius:2px;
        z-index:1;
    }
        
    /* THE NOTIFICAIONS WINDOW. THIS REMAINS HIDDEN WHEN THE PAGE LOADS. */
    #notifications {
        display:none;
        width:430px;
        position:absolute;
        top:30px;
        right:0;
        background:#FFF;
        border:solid 1px rgba(100, 100, 100, .20);
        -webkit-box-shadow:0 3px 8px rgba(0, 0, 0, .20);
        z-index: 0;
    }
    /* AN ARROW LIKE STRUCTURE JUST OVER THE NOTIFICATIONS WINDOW */
    #notifications:before {         
        content: '';
        display:block;
        width:0;
        height:0;
        color:transparent;
        border:10px solid #CCC;
        border-color:transparent transparent #FFF;
        margin-top:-20px;
        margin-left:400px;
    }
        
    h3 {
        display:block;
        color:#333; 
        background:#FFF;
        font-weight:bold;
        font-size:13px;    
        padding:8px;
        margin:0;
        border-bottom:solid 1px rgba(100, 100, 100, .30);
    }
        
    .seeAll {
        background:#F6F7F8;
        padding:8px;
        font-size:12px;
        font-weight:bold;
        border-top:solid 1px rgba(100, 100, 100, .30);
        text-align:center;
    }
    .seeAll a {
        color:#3b5998;
    }
    .seeAll a:hover {
        background:#F6F7F8;
        color:#3b5998;
        text-decoration:underline;
    }
    .FixedHeightArchiveContainer
{
  float:center;
   height:330px;
    min-height:300px
  width:300%; 
  padding:3px; 
  color: black;
  background:white;
  font-size: 10px;
}

.ArchiveContent 
{
  height:90%;
   overflow:auto;
   color:#003366;
    background: white;
    font-size: 10px;
}
.headingdis{    font-weight: bold; color: #3B2F63;
 }
#container{ 
	font-family: 'Bree Serif', serif;
    background: #efefef;
	margin: auto;
    width: 50%;
    padding: 10px;
    text-align: center;
    min-height: 400px;
	box-shadow: 4px 4px 4px 3px rgba(0, 0, 0, 0.2);
    
    }
    input[type="text"] {
	padding: 1% 6% 1% 2%;
	outline: none;
	 border-radius: 25px;
	}
input[type="text"]:focus {
    border-bottom: 3px solid #3B2F63;
        background: #fcfcfc;
        color: #3B2F63;
}
input[type="submit"] {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 6px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
     background-color: white;
    color: black;
    border: 2px solid #3B2F63;
}


input[type="submit"]:hover {
    background-color: #3B2F63;
    color: white;
}
body{background: #f7f7f7;}
.twilio2head{ font-size: 2em;}
#twilio2dis{padding: 2%;text-align: left; color: #756d91; background-color: #f7f7f7; overflow-y: scroll; height:80px; font-size: 0.7em;
font-family: 'Montserrat', sans-serif;

}
</style>
<link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

<script>
    $(document).ready(function () {
        $('#part1').hide();
        $('#part2').hide();

        $('#homeid').click(function () {
            $('#part1').hide();
            $('#part2').hide();
            $('#home').show();
        });
        $('#part1id').click(function () {
            $('#part1').show();
            $('#part2').hide();
            $('#home').hide();
        });
        $('#part2id').click(function () {
            $('#part2').show();
            $('#part1').hide();
            $('#home').hide();
        });
        var userSize = $("#userSize").val();
        // ANIMATEDLY DISPLAY THE NOTIFICATION COUNTER.
        $('#noti_Counter')
            .css({ opacity: 0 })
            .text(userSize)              // ADD DYNAMIC VALUE (YOU CAN EXTRACT DATA FROM DATABASE OR XML).
            .css({ top: '-10px' })
            .animate({ top: '-2px', opacity: 1 }, 500);

        $('#noti_Button').click(function () {

            // TOGGLE (SHOW OR HIDE) NOTIFICATION WINDOW.
            $('#notifications').fadeToggle('fast', 'linear', function () {
                if ($('#notifications').is(':hidden')) {
                    $('#noti_Button').css('background-color', '#2E467C');
                }
                else $('#noti_Button').css('background-color', '#FFF');        // CHANGE BACKGROUND COLOR OF THE BUTTON.
            });

            $('#noti_Counter').fadeOut('slow');                 // HIDE THE COUNTER.

            return false;
        });

        // HIDE NOTIFICATIONS WHEN CLICKED ANYWHERE ON THE PAGE.
        $(document).click(function () {
            $('#notifications').hide();

            // CHECK IF NOTIFICATION COUNTER IS HIDDEN.
            if ($('#noti_Counter').is(':hidden')) {
                // CHANGE BACKGROUND COLOR OF THE BUTTON.
                $('#noti_Button').css('background-color', '#2E467C');
            }
        });

        $('#notifications').click(function () {
            return false;       // DO NOTHING WHEN CONTAINER IS CLICKED.
        });
    });
</script>
<body style="margin:0;padding:0;">
    <div>
        <ul>
            <li><a href="#" id="homeid">HOME</a></li>
            <li><a href="#" id="part1id">Twilio part 1</a></li>
            <li><a href="#" id="part2id">Twilio part 2</a></li>
            <li id="noti_Container">
                <div id="noti_Counter">
                 

                </div>   <!--SHOW NOTIFICATIONS COUNT.-->
                
                <!--A CIRCLE LIKE BUTTON TO DISPLAY NOTIFICATION DROPDOWN.-->
                <div id="noti_Button"></div>    

                <!--THE NOTIFICAIONS DROPDOWN BOX.-->
                <div id="notifications">
                    <h3>Notifications</h3>
                    <div style="height:300px;">
                      
                     <div class="FixedHeightArchiveContainer">
                     <div class="ArchiveContent">
                     	
						<c:forEach var="users" items="${users}">
						<table width="100%">
   							<tr>
   							<td><img src="https://www.drupal.org/files/profile_default.png" width="72" height="72"></td>
   								<td>${users.name} viewed this SMS service using ${users.phone} on ${users.dateOn} at ${users.timeOn}</td>
   							</tr>
   						</table>
   							
						</c:forEach>
                  	</div>
                  	</div>

                    </div>
                    <div class="seeAll"><a href="#">See All</a></div>
                </div>
            </li>
        </ul>
    </div>
    <input type="hidden" id="userSize" value="${userSize}"><br><br><br>
    <div id="container">
 <div id="home"><img width="680px" height="400px" src="https://scontent.fewr1-2.fna.fbcdn.net/v/t1.0-9/14725502_1114625415325073_4256083315944297788_n.jpg?oh=ce961346078bc24ef772265c90c42cda&oe=58A5BBC8"></div>
<div id="part1"><%@ include file="/WEB-INF/jsp/twiliopart1.jsp"%></div>
<div id="part2"><%@ include file="/WEB-INF/jsp/twiliopart2.jsp"%></div>
</div>
<div class="footer">CS 643 Mobile Innovation Course Project <strong>by Shubham Yeole</strong>.</div>
</body>
