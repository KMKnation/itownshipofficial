<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Forum | i-Township</title>
<link href="<c:url value="/Resources/css/forum.css" />" type="text/css" rel="stylesheet" />
<link href="<c:url value="/Resources/css/footer.css" />" rel="stylesheet" type="text/css" />
<link href="<c:url value="/Resources/css/main.css" />"  type="text/css"  rel="stylesheet" />
<link href="<c:url value="/Resources/css/vrmap.css" />" type="text/css" rel="stylesheet" />

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
			            <li><a href="" class="ss">S/w</a></li>
				        <li><a href="" class="ss">H/W</a></li>
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
			   <li><a href="" class="m">About us</a>
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
    
    
    <!-- Slider ----->
             
      <!--- Slider End ----->
               
					   
		<div id="forum">
			<div id="forum-header">
				<div id="flogo">
				</div>
				<div id="ftitle">
					<div id="htitle"><h1 align="center">Discuss | Communicate | Help</div>
					<div id="hdesc"><p align="center">This is a platform given to the residents of i-Township to communicate and discuss problems as well as help each other by providing solution.</p></div> 
			   </div>
			   <div id="fmenu">
			   </div>
			</div>
			<div id="forum-box">
				<table id="ftable" bordercolor="#9B2727" style="border-radius:15px 15px 0px 0px;">
					<tr id="ft-head">
						<td align="center" id="td1">Forum</td>
						<td align="center" id="td2">Topics</td>
						<td align="center" id="td3">Posts</td>
						<td align="center" id="td4">Last Post</td>
					</tr>
					<tr>
						<td id="dtd">Root|I-Township</td>
						<td id="dtd" colspan="3" align="center">Root</td>
					</tr>
					
											
					<c:forEach items="${blocks }" var="block" > 
					
						<tr>
							<td id="dtd"><a href="Forum?blckID=${block }" style="dec;">${block }-Block</a></td>
							<td id="dtd">3</td>
							<td id="dtd">4</td>
							<td id="dtd">14-10-2015</td>
							
						</tr>
						
					</c:forEach>
										
					
				</table>
			</div>
			<div id="latest-updates">
				<marquee><p>Latest updates will be updated here...</p></marquee>
			</div>
			<div id="forum-online">
				<div id="o-head"><h3 align="center">Online Members</h3></div>
				<div id="o-table">
					<table>
						<tr>
							<td>Members</td>
							<td>list of members</td>
						</tr>
						<tr>
							<td>Amdmins</td>
							<td>list of admins</td>
						</tr>
					</table>
							
				</div>
				
			</div>
			<div id="forum-footer">
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
				
			<a class="twitter-timeline"" data-dnt="true" href="https://twitter.com/KMKnation" data-widget-id="706093413720944640">Tweets by @KMKnation</a>
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
