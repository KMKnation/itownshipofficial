<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="<c:url value="/Resources/js/jquery-ui.js" />"></script>
<script src="<c:url value="/Resources/js/jquery.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>AddMeeting</title>

	
<style>
#addmeeting{
 	width:60%;
	margin:auto;
	height:100%;
	background:#F9F9F9;
	border-radius:10px;
 }
 
#addmeeting #add-head{
	width:100%;
	height:60px;
	color:#9B2727;
	font-size:48px;
	font-weight:bolder;
	border-bottom:3px solid #9B2727;
}

#addmeeting #add-data{
	width:90%;
	margin:auto;
	height:60px;
	border-bottom:3px solid #9B2727;
}


#addmeeting #add-data input{
	width:99.5%;
	height:54px;
	color:#9B2727;
	font-size:40px;
	font-weight:bolder;
}


#addmeeting #add-data #forminputs input{
	width:99.5%;
	height:30px;
	color:#9B2727;
	font-size:20px;
	font-weight:bolder;
	border-radius:5px;
	border-bottom:3px solid #999999;
}

#addmeeting #add-data #forminputs input:hover{
	border-bottom:3px solid #9B2727;
}


#addmeeting #add-data #forminputs select{
	width:99.5%;
	height:40px;
	color:#9B2727;
	font-size:20px;
	font-weight:bolder;
	border-radius:5px;
	border-bottom:3px solid ##9B2727;
}

#addmeeting #add-data #forminputs button{
	width:20%;
	height:40px;
	color:white;
	background:#9B2727;
	font-size:20px;
	font-weight:bolder;
	border-radius:5px;
	
}


#addmeeting #add-buttons{
	width:100%;
	margin-top:20px;
	height:80px;
}


#addmeeting #add-buttons #button{
	width:50%;
	height:60px;
	background:#9B2727;
	border:1px solid #white;
	border-radius:5px;
	color:white;
	float:left;
}
</style>
	

<style>
#attendeesdata{
	width:100%;
	height:100%;
}

#attendeesdata #top{
	width:100%;
	height:150px;
	border-bottom:3px solid #9B2727;
}


#attendeesdata #top #select{
	width:100%;
	height:80px;
	margin-top:50px;
}
#attendeesdata #top select,input{
	width:80%;
	height:40px;
	color:#9B2727;
	font-size:24px;
	border-bottom:3px solid #9B2727;
}

#attendeesdata #top #addbutton{
	width:100%;
	height:70px;
}


#attendeesdata #top #addbutton button{
	width:15%;
	height:40px;
}


#attendeesdata #bottom{
	width:100%;
}


#attendeesdata #bottom #profiles{
	width:80%;
	margin-top:20px;
	height:100px;
	background:white;
	border-radius:10px;
		
	-webkit-box-shadow: 0px 1px 14px 0px rgba(0,0,0,0.75);
	-moz-box-shadow: 0px 1px 14px 0px rgba(0,0,0,0.75);
	box-shadow: 0px 1px 14px 0px rgba(0,0,0,0.75);
}

</style>
 <script>
  $(function() {
    var availableTags = [
      "ActionScript",
      "AppleScript",
      "Asp",
      "BASIC",
      "C",
      "C++",
      "Clojure",
      "COBOL",
      "ColdFusion",
      "Erlang",
      "Fortran",
      "Groovy",
      "Haskell",
      "Java",
      "JavaScript",
      "Lisp",
      "Perl",
      "PHP",
      "Python",
      "Ruby",
      "Scala",
      "Scheme"
    ];
    $("#attendees").autocomplete({
      source: availableTags
    });
  });
  </script>

	<!-- --Header Starts here  -->
	
  	<jsp:include page="../colorschanger.jsp"></jsp:include>
	<!-- --- Header Ends here -->

</head>

<body>
	<div id="addmeeting">
		<div id="add-head">Attendees in <span name="meetingName">${meeting1.m_name }</span></div>
		<div id="attendeesdata">
			<div id="top" >
				<div id="select" align="center">
					<form action="AddAttendees">
			<!--  		<input type="text" id="#attendees" name="attndname" /> -->
					<select name="attndid">
						<c:forEach items="${member }" var="member"> 
							<option value="${member.mem_id }">${member.mem_name }</option>
						</c:forEach>
					</select> 
				</div> 
				<div id="addbutton" align="center">
					<input type="hidden" name="meetingID" value="${mUiD }"/> 
					<input type="submit" id="button" value="ADD" />
					</form>
				</div>
			</div>
			
			<div id="bottom" align="center">
	
				
				<c:forEach items="${participated }" var="part">
							<div id="profiles">
								<h3>${part.presenId }</h3>
								<h3>${part.presentIcard }</h3>			
							</div>
				</c:forEach>
				
				
			</div>
		</div>
		<div id="add-buttons">
			<button>CANCEL</button>
			<a href="Add4"><button>NEXT</button></a>
		</div>
	</div>

</body>
</html>
