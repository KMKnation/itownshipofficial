<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Home</title>
<link href="<c:url value="/Resources/css/main.css" />"  type="text/css"  rel="stylesheet" />
<link href="<c:url value="/Resources/css/vrmap.css" />" type="text/css" rel="stylesheet" />

<style>
#data
{
margin:50px;
}
#intromsg
 {
  width:80%; 
  height:180px;
  margin:2% 10% 2% 10%; 
  border-bottom:2px groove #E0D4D4;
 }
#intro-head span
{
color:#9B2727;
}
#seprator
{
 border-bottom:2px inset #828080;
}
#intro-data p
{
margin-top:30px;
padding:10px;
}
#intro-data button
{
color:#FFF; 
background:#9B2727; 
width:70px; 
height: 20px; 
border-radius: 5px;
}
#intro-data button:hover
{
color:#000000;
transition-duration:.5s;
}
#chairman-intro
{
width:700px; 
height:100px;
 background:#F1F1F1; 
 border:2px solid #828080; 
 margin-top:100px; 
 margin-left:22%; 
 margin-right:22%; 
 margin-bottom:80px; 
 border-radius:5px; 
 border-bottom:3px groove #9B2727; 
 border-top:3px groove #9B2727;
}
#chairman-intro #chairman-img img
{
margin:-7% 43% 0 43%; 
border-radius:40px;
}
#chairman-intro #chairman-para button
{
color:#FFF; 
background:#9B2727; 
width:100px; 
height: 35px; 
border-radius: 5px; 
margin-left: 42%; 
margin-right: 42%;
}
#chairman-intro #chairman-para button:hover
{
color:#000000;
transition-duration:.5s;
}
#featur
{
width:80%; 
margin:0 10% 0 10%; 
border-top:3px outset #E0D4D4;
}
#featur #f1
{
width:29%; 
border:1px solid #9B2727; 
margin-top:40px; 
float:left;
}
#featur #f_head
{
background:#9B2727; 
padding:10px;
}
#featur #f_head h2
{
 text-align:center;
 color:#FFF;
 }
 #featur #f_data
 {
 background:#F1F1F1;
 }
 #featur #f_data .h_ul
 {
 	font-size:20px;
 }
 #featur #f2
 {
 width:29%; 
 border:1px solid #9B2727;  
 float:left; 
 margin:40px 5% 0 6%;
 }
 #featur #f3
 {
 width:29%; 
 border:1px solid #9B2727; 
 margin-top:40px; 
 float:right;
 }
 #featur ul
 {
	 color:#990000;
	 }
 #featur ul li
	 {
	 margin:10px;
	 font-size:20px;
	 }
 #featur ul li a
	 {
	 color:#000000;
	 text-decoration:none;
	 }
 #featur ul li:hover a
	 {
	 color:#e67d00;
	 transition-duration:.5s;
	 }

</style>
</head>

<body>
<div id="back">
<div id="all">
	<div id="hader">
		<div id="h1">
	  	  	<ul>
			<li><a href="#"> <img src="<c:url value="/Resources/images/sociable/twitter.png" />" /></a></li>
			<li><a href="#"><img src="<c:url value="/Resources/images/sociable/app_store.png" />" /></a></li>
			<li><a href="#"><img src="<c:url value="/Resources/images/sociable/facebook (1).png" />" /></a></li>
			<li><a href="#"><img src="<c:url value="/Resources/images/sociable/yahoo.png" />" /></a></li>
			<li><a href="#"><img src="<c:url value="/Resources/images/sociable/youtube.png" />" /></a></li>
			<li><a href="#"><img src="<c:url value="/Resources/images/sociable/google (1).png" />" /></a></li>
		</ul>	
		
		</div>
		<div id="search">
			<form>
				<input id="s" type="text" placeholder=" Search" />
				<input id="b" type="submit" value=" "/>
			</form>
		</div>
	</div>
	<div id="manu">
		<div id="logo">
		</div>
		
			   
			 <div id="header">
               <ul>  
			   <li><a href="/itownship/home" class="m">Home</a>
			   	    <ul>
			         <li><a href="/itownship/Login" class="s">Admin</a>
					 </li>
				     <li><a href="/itownship/Login" class="s">User</a>
					 </li>
					 
				   </ul>
			   </li>
			  
			   <li style="width: 170px;"><a href="" class="m">Management</a> 
			       <ul>
			         <li><a href="expensemanager" class="s">Expense Manager</a>
					 </li>
				     <li><a href="meetingmanager" class="s">Meeting Manager</a>
					 </li>
					 <li><a href="websitemanager" class="s">Website Manager</a>
					 </li>
				     <li><a href="residentmanager" class="s">Residents Manager</a>
					 </li>
				   </ul>
				</li>
				<li><a href="" class="m">Tools</a>
			   		<ul>
			         <li><a href="" class="s">Notification</a> </li>
				     <li><a href="" class="s">E-voting</a> </li>
					 <li><a href="sitemap.html" class="s">VR</a>
					 	<ul>
			            <li><a href="/itownship/vrdashboard?vrId=club/club.html" class="ss">CLUB</a></li>
				        <li><a href="/itownship/vrdashboard?vrId=club/club.html" class="ss">Navratri</a></li>
				        </ul>
					 </li>
				     
				   </ul>
			   </li>
			   <li><a href="" class="m">Forum</a>
			   		<ul>
			         <li><a href="#" class="s">Block</a>
					 	<ul>
			            <li><a href="/itownship/forum/Forum?blckID=A" class="ss">A Block</a></li>
				        <li><a href="/itownship/forum/Forum?blckID=B" class="ss">B Block</a></li>
						<li><a href="/itownship/forum/Forum?blckID=C" class="ss">C Block</a></li>
				        </ul>
					 </li>
				     <li><a href="/itownship/forum/ForumHome" class="s">All</a>
					 </li>
					 
				   </ul>
			   </li>
			   <li><a href="aboutus.jsp" class="m">About us</a>
			       <ul>
			         <li><a href="aboutus.html" class="s">Contact us</a>
					 <!--	<ul>
			            <li><a href="" class="ss">S/w</a></li>
				        <li><a href="" class="ss">H/W</a></li>
				        </ul>-->
					 </li>
				     
				   </ul>
			   </li>
			   </ul>
			   </div>
	
	
	</div>
	<!-- DATA
    --->
    
     	<div id="data">
                   
                   					<div id="intromsg" >
                                                <div id="intro-head"><h1>Welcome to <span >I-Township</span> - Your Comfort is Our Business</h1></div>
                                                <div id="seprator"></div>
                                                <div id="intro-data" ><p>Apartment living is growing fast in India and other Asian Countries.Apartment Ownesr Association have the responsibility of building and sustaining their apartment community - quite like running a little country of their own! They do fantastic administration for thier apartment community, and many also drive community initiatives...<button >More</button></p></div>
                                    </div>
                        
                                    <div  id="chairman-intro" >
                                            <div id="chairman-img">
                                                <img src="<c:url value="/Resources/images/authour1.jpg" />"  />
                                            </div>
                                            <div id="chairman-para">
                                                <p align="center">Welcome to i-Township - Your Comfort is Our Business</p>
                                                <button >Contact me</button>
                                            </div>
                                    </div>
                                    
                                    
                                    <div  id="featur" >
                                    	<div id="f1" >
                                        		<div id="f_head" ><h2>Management Tools</h2></div>
                                                <div id="f_data" >
                                                	<ul class="h_ul">
                                                    	<li><a href="#">Participative Forums</a></li>
                                                        <li><a href="#">Quick Post Noticeboard</a></li>
                                                        <li><a href="#">Residents Directory</a></li>
                                                        <li><a href="#">Snap Opinion Polls</a></li>
                                                     </ul>   
                                                </div>
                                        </div>
                                        
                                        <div id="f2" >
                                        	<div id="f_head"><h2 >Maintenance Tools</h2></div>    
                                            <div id="f_data" >
                                                	<ul class="h_ul" >
                                                    	<li><a href="#">Participative Forums</a></li>
                                                        <li><a href="#">Quick Post Noticeboard</a></li>
                                                        <li><a href="#">Residents Directory</a></li>
                                                        <li><a href="#">Snap Opinion Polls</a></li>
                                                     </ul>   
                                            </div>
                                        </div>
                                        
                                        <div id="f3" >
                                        	<div id="f_head"><h2>Accounting Tools</h2></div>
                                            <div id="f_data" >
                                                	<ul class="h_ul">
                                                    	<li><a href="#">Participative Forums</a></li>
                                                        <li><a href="#">Quick Post Noticeboard</a></li>
                                                        <li><a href="#">Residents Directory</a></li>
                                                        <li><a href="#">Snap Opinion Polls</a></li>
                                                     </ul>   
                                            </div>
                                        </div>
                                        
                                        <div id="clear" style="clear:both;">
                                        </div>
                                    </div>
                                    
                   </div>
    
               
               					
    
   
    <!-- DATA END --->
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
