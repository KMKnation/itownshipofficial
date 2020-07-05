<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>AddMeeting</title>
<link href="<c:url value="/Resources/css/addmeeting.css" />" type="text/css" rel="stylesheet" />

<style>
#attendeesdata{
	width:100%;
	height:100%;
}

#attendeesdata #top{
	width:100%;
	height:200px;
	border-bottom:3px solid #9B2727;
}


#attendeesdata #top #select{
	width:100%;
	height:80px;
	margin-top:50px;
}
#attendeesdata #top select{
	width:80%;
	height:40px;
	border-bottom:3px solid #9B2727;
}

#attendeesdata #top input{
	width:80%;
	height:30px;
	border-bottom:3px solid #9B2727;
}

#attendeesdata #top #addbutton{
	margin-top:40px;
	width:100%;
	height:70px;
}


#attendeesdata #top #addbutton #button{
	width:15%;
	height:40px;
	color:white;
	background: #9B2727;
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

#attendeesdata #bottom #profiles #agenda{
	width:100%;
	height:33px;
	border-bottom:1px solid #CCCCCC;
}

</style>

	<!-- --Header Starts here  -->
	
  	<jsp:include page="../colorschanger.jsp"></jsp:include>
	<!-- --- Header Ends here -->

	
</head>

<body>
	<div id="addmeeting">
		<div id="add-head">Agenda</div>
		<div id="attendeesdata">
			<div id="top" >
				<div id="select" align="center">
					<form action="addAgendaData" method="get" >
					<input type="text" name="a_title" placeholder="Agenda" />
					<input type="text" name="a_discuss" placeholder="Discussion" />
					<input type="text" name="a_concl" placeholder="Conclusion " />
				</div>
				<div id="addbutton" align="center">
					<input type="submit" id="button" value="Add"/>
					</form>
				</div>
			</div>
			
			<div id="bottom" align="center">
				<div id="profiles">
					<div id="agenda">${title }</div>
					<div id="agenda">${discuss }</div>
					<div id="agenda">${concl }</div>
				</div>
			
			</div>
		</div>
		<div id="add-buttons">
			<button>CANCEL</button>
			<a href="addSignature"><button>NEXT</button></a>
		</div>
	</div>

</body>
</html>
