<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
	

	<!-- --Header Starts here  -->
	
  	<jsp:include page="../colorschanger.jsp"></jsp:include>
	<!-- --- Header Ends here -->

	
</head>

<body>
	<div id="addmeeting">
		<div id="add-head">New Account in Itownship</div>
		<div id="add-data">
			<form action="setBankAmountData" method="get">
			<input type="text" name="bname" placeholder="Enter Bank Name" />
		</div>
		
		<div id="add-data"><form action="add2" method="get">
			<input type="text" name="amount" placeholder="$ Amount $" />
			
			<input type="hidden" name="loginId" value="${loginID }"/>
		</div>
		<div id="add-buttons">
			
			<input type="submit" value="CANCEL" id="button" />
			<input type="submit" value="NEXT" id="button" /></form>
		</div>
	</div>

</body>
</html>
