<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	if(session.getAttribute("sesId")==null){
		response.sendRedirect(request.getContextPath()+"/Login");
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
	String pushStatus = "";
	Object pushStatusObj = request.getAttribute("pushStatus");

	if (pushStatusObj != null) {
		pushStatus = pushStatusObj.toString();
	}
%>
<head>
<title>Google Cloud Messaging (GCM) Server in PHP</title>
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
text-decoration: none;
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
                        <h1 align="center">Push Notification</h1>
            </div>
    
    		<div>
    		
    			<h1>Google Cloud Messaging (GCM) Server</h1>

				<form action="GCMNotification" method="post">
			
					<div>
						<textarea rows="2" name="message" cols="23"
							placeholder="Message to transmit via GCM"></textarea>
					</div>
					<div>
						<input type="submit" value="Send Push Notification via GCM" />
					</div>
				</form>
				<p>
					<h3>
						<%=pushStatus%>
					</h3>
				</p>
    		
            </div>
            
            <div id="cleardash">
            </div>
            
    </div>
    
<!-- - Footer Starts here -->
	
	<jsp:include page="../footer.jsp"></jsp:include>
			
	
	<!--  Footer ends here -->
	
</div>	 
	 
</div>    
	
</body>
</html>
