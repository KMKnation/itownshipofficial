<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<div id="hader">
		<div id="h1">
	  	  	<ul>
			<li><a href="www.twitter.com/KMKnation"> <img src="<c:url value="/Resources/images/sociable/twitter.png" />" /></a></li>
			<li><a href="https://play.google.com/store?hl=en"><img src="<c:url value="/Resources/images/sociable/app_store.png" />" /></a></li>
			<li><a href="www.facebook.com/KMKnation"><img src="<c:url value="/Resources/images/sociable/facebook (1).png" />" /></a></li>
			<li><a href="www.yahoo.com"><img src="<c:url value="/Resources/images/sociable/yahoo.png" />" /></a></li>
			<li><a href="www.youtube.com/KMKnation"><img src="<c:url value="/Resources/images/sociable/youtube.png" />" /></a></li>
			<li><a href="plus.google.com/KMKnation"><img src="<c:url value="/Resources/images/sociable/google (1).png" />" /></a></li>
		</ul>	
		
		</div>
		<div id="search">
			<form action="Search" method="get">
				<input id="s" name="param" type="text" placeholder=" Search" />
				<input id="b" type="submit" value=" "/>
			</form>
		</div>
	</div>
	<div id="manu">
		<div id="logo">
		</div>
		
			   
			 <div id="header">
               <ul>  
			   <li><a href="<%=request.getContextPath() %>/home" class="m">Home</a>
			   	    <ul>
			         <li><a href="<%=request.getContextPath() %>/Login" class="s">Admin</a>
					 </li>
				     <li><a href="<%=request.getContextPath() %>/Login" class="s">User</a>
					 </li>
					 
				   </ul>
			   </li>
			  
			   <li style="width: 170px;"><a href="" class="m">Management</a> 
			       <ul>
			         <li><a href="<%=request.getContextPath() %>/expensemanager" class="s">Expense Manager</a>
					 </li>
				     <li><a href="<%=request.getContextPath() %>/meetingmanager" class="s">Meeting Manager</a>
					 </li>
					 <li><a href="<%=request.getContextPath() %>/notificationfeature" class="s">Push Notification</a>
					 </li>
					 <li><a href="<%=request.getContextPath() %>/websitemanager" class="s">Website Manager</a>
					 </li>
				     <li><a href="<%=request.getContextPath() %>/residentmanager" class="s">Residents Manager</a>
					 </li>
				   </ul>
				</li>
				<li><a href="" class="m">Tools</a>
			   		<ul>
			         <li><a href="" class="s">Notification</a> </li>
				     <li><a href="" class="s">E-voting</a> </li>
					 <li><a href="<%=request.getContextPath() %>/vrdashboard?vrId=Navratri/Navratri.html" class="s">VR</a>
					 	<ul>
			            <li><a href="<%=request.getContextPath() %>/vrdashboard?vrId=Navratri/Navratri.html" class="ss">Navratri</a></li>
				        <li><a href="<%=request.getContextPath() %>/vrdashboard?vrId=Club/Club.html" class="ss">Club</a></li>
				        </ul>
					 </li>
				     
				   </ul>
			   </li>
			   <li><a href="<%=request.getContextPath()%>/forum/ForumHome" class="m">Forum</a>
			   		<ul>
			         <li><a href="#" class="s">Block</a>
					 	<ul>
			            <li><a href="<%=request.getContextPath()%>/forum/Forum?blckID=A" class="ss">A Block</a></li>
				        <li><a href="<%=request.getContextPath()%>/forum/Forum?blckID=B" class="ss">B Block</a></li>
						<li><a href="<%=request.getContextPath()%>/forum/Forum?blckID=C" class="ss">C Block</a></li>
				        </ul>
					 </li>
				     <li><a href="/itownship/forum/ForumHome" class="s">All</a>
					 </li>
					 
				   </ul>
			   </li>
			   <li><a href="<%=request.getContextPath()%>/aboutus.jsp" class="m">About us</a>
			       <ul>
			         <li><a href="<%=request.getContextPath()%>/aboutus.jsp" class="s">Contact us</a>
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
	