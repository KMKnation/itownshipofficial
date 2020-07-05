<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Admin Panel</title>

<link href="<c:url value="/Resources/css/main.css" />"  type="text/css"  rel="stylesheet" />

<style>

#admin-panel{
margin-top:15px;
}

#navbar{
	width:20%;
	height:544px;
	background:#9B2727;
	color:white;
	border-radius:0px 10px 10px 0px;
	float:left;
}

#navbar_detail{
	width:78%;
	height:530px;
	float:right;
	border:3px solid #9B2727;
	border-radius:10px;
}


#navbar #admin-navbar-ul{
	width:100%;
	font-size:24px;
	margin: 7px -15%;
}


#navbar #admin-navbar-li{
	width:100%;
	list-style:none;
	border:1px solid white;
	height:41px;
	padding-top:10px;
}
#navbar #admin-navbar-li:hover{
	background:#e67d00;
	-webkit-transition-duration:.5s;
}

#navbar #admin-navbar-li:hover a{
	color:#000000;
	-webkit-transition-duration:.5s;
}
#navbar #admin-navbar-a{
	text-decoration:none;
	color:white;
	margin:50px;
}
#navbar_detail
{
padding:5px;
}
#dash_head{
	float:right;
	height:60px;
	width:100%;
	background:#e67d00;	
	margin-bottom:15px;
	padding-top:7px;
	font-size:24px;
}
#navbar_detail #dashbord_table{
	float:left;
	width:560px;
}

#navbar_detail #dashbord_table tr{
	
}

#navbar_detail #dashbord_table tr td{
	height:134.5px;
	background:#9B2727;
	font-size:18px;
	color:white;
	padding:20px;
	border-radius:10px;
}


#navbar_detail #dashbord_table tr td:hover{
	background:#e67d00;
	color:#000000;
	-webkit-transition-duration:.5s;

}

#navbar_detail #dash_guide{
	width:487px;
	height:520px;
	border:3px solid #9B2727;
	border-radius:10px 10px 0px 0px;
	float:left;
	margin:0px;
	margin-left:5px;
	margin-top:2px;
}

#cleardash{
	clear:both;
}

</style>

	<!-- --Header Starts here  -->
	
  	<jsp:include page="../colorschanger.jsp"></jsp:include>
	<!-- --- Header Ends here -->
	
</head>


<body>
<div id="back">
<div id="all">
	
	<!-- --Header Starts here  -->
	
  	<jsp:include page="../header.jsp"></jsp:include>
	<!-- --- Header Ends here -->
	
	
	
	
	<div id="admin-panel">
            <div id="dash_head">
                        <h1 align="center">Resident Manager</h1>
            </div>
                    
           <!-- --Header Starts here  -->
	
  			<jsp:include page="../navbar.jsp"></jsp:include>
			
			<!-- --- Header Ends here -->
            
            
    
            <div id="navbar_detail">
            
                    <iframe src="ResidentsDashBoard" width="100%" height="100%" style="border:hidden" ></iframe>        
            </div>
            
            <div id="cleardash">
            </div>
            
    </div>
	
	
	 <div id="footer">
	  		
			<div class="foot_div">NOTIFICATION</div>
			<div class="foot_div">FEATURES</div>
			<div class="foot_div">INSTANT POLL</div>
			<div class="foot_div">TESTIMONIALS</div>
			<div id="note"> DP<br />KMK <br />RJ<br /> jhbshbcjbsd chsdbjbcsbdcbjsdbvbsjbdhvjbdh jbjd hc bd jbs kjdbc hs bh</div>
			<div class="h_line"></div>
			<div id="features">
					 <ul >
					 	<li><a href=""> Management</a></li>
						<li><a href=""> Forum</a></li>
						<li><a href=""> Notifications</a></li>
						<li><a href=""> Socity Bank</a></li>
					</ul>	
			 </div>
			<div class="h_line"></div>
			<div id="poll">
				<ul>
					<li>Datt<input class="button" type="button"  value="+1" /></li>
					<li>Mayur<input class="button" type="button"  value="+1" /></li>
					<li>Ronak<input class="button" type="button"  value="+1" /></li>
				</ul> 
		    </div>
			<div class="h_line"></div>
			<div id="testi" style="margin-right:35px; width: 300px; float: right;">
				
			<a class="twitter-timeline" data-dnt="true" href="https://twitter.com/KMKnation" data-widget-id="706093413720944640">Tweets by @KMKnation</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
		
		
		
			 </div>
	</div>
	<div id="line">
	</div>
	<div id="nev">
		
		                <ul id="foot-menu">
                            <li><a href="">Home</a></li> 
                            <li><a href="">Management</a></li> 
                            <li><a href="">E-voting</a></li> 
                            <li><a href="">Forum</a></li> 
                            <li><a href="">Notification</a></li> 
                            <li id="lst"><a href="">About Us</a></li>
                        </ul>
						<div id="foot-logo">
						
						</div>
						
						<div id="copy">© 2015 Designed and Coded by <b> DP-Themes </b> </div>
					
	</div>
</div>	 
	 
</div> 
</body>
</html>
