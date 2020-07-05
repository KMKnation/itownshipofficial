<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Meeting Manager</title>

	
<style>
#meetings{
	position:absolute;
	top:0px;
	left:0px;
	width:100%;
	height:100%;
}

#meetings #top{
	width:100%;
	height:100px;
	background:#9B2727;
	color:white;

}

#meetings #top #logo{
	width:30%;
	height:100px;
	font-size:36px;
	font-weight:bolder;
	float:left;
}

#meetings #top #searchbar{
	width:30%;
	height:100px;
	float:left;
}


#meetings #top #searchbar input{
	width:60%;
	height:30px;
	margin-top:30px;
	color:#9B2727;
	text-align:center;
}



#meetings #top #addmeeting{
	width:30%;
	height:100px;
	float:right;
}


#meetings #top #addmeeting input{
	width:20%;
	margin-top:30px;
	height:50px;
	background:white;
	color:#9B2727;
	border-radius:20px;
	font-size:16px;
	font-weight:bolder;
}

#meetings #bottom{
	width:100%;
	height:100%;
	background:#F7F7F7;
}


#meetings #bottom #upcoming{ 
	width:100%;
}

#meetings #bottom #upcoming #u-head{ 
	width:100%;
	height:100px;
	border-bottom:3px solid #000000;
	color:#9B2727;
	font-size:36px;
}

#meetings #bottom #upcoming #u-data{ 
	width:100%;
	height:auto;
	color:#9B2727;
}

#meetings #bottom #upcoming #tbl{ 
	width:100%;
	height:auto;
	border: 2px solid #9B2727;
	
}



#meetings #bottom #passed{ 
	width:100%;
	height:250px;
}

#meetings #bottom #passed #p-head{ 
	width:100%;
	height:100px;
	border-bottom:3px solid #000000;
	color:#9B2727;
	font-size:36px;
}

#meetings #bottom #passed #p-data{ 
	width:100%;
	height:150px;
	color:#9B2727;
}
</style>

	<!-- --Header Starts here  -->
	
  	<jsp:include page="../colorschanger.jsp"></jsp:include>
	<!-- --- Header Ends here -->

</head>

<body>
	<div id="meetings">
		<div id="top">
			<div id="logo">Meeting Manager</div>
			
			<div id="addmeeting" align="center">
			
			<%
				if(session.getAttribute("sesType").equals("admin")){
						
			%>
						<a href="addmeeting"><input type="button"  value="Add"/></a>
			
			<% 
				}
			%>
			
			
			</div>
			<div id="clear" style="clear:both"></div>
		</div>
		<div id="bottom" align="center">
			<div id="upcoming">
				<div id="u-head">UPCOMING MEETINGS</div>
				<div id="u-data"> meetings
				
					<table border="1" id="tbl">
						
						
						<c:forEach items="${meeting }" var="m" > 
							<tr>
								<td>${m.m_name }</td>
								<td><a href="MeetingReport?metid=${m.m_id }"><button>Show</button></a></td>
							<%
								if(session.getAttribute("sesType").equals("admin")){
										
							%>
								<td><a href="deleteMeeting?deleteID=${m.m_id }"><button>Delete</button></a></td>
							
							<% 
								}
							%>
								
							</tr>
						</c:forEach>
								
					
					</table>
				
							
				</div>
			</div>
			
			<div id="passed">
				<div id="p-head">PASSED MEETINGS</div>
				<div id="p-data"> meetings</div>
			</div>
		</div>
	</div>
</body>
</html>
