<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>AddMeeting</title>
<link href="css/addmeeting.css" type="text/css" rel="stylesheet" />

<style>
#mreport{
	width:100%;
	height:100%;
}

#mreport #m-head{
	width:100%;
	height:60px;
	color:#9B2727;
	font-size:48px;
	font-weight:bolder;
	border-bottom:3px solid #9B2727;
}
#meetingsreport{
	width:100%;
	height:100%;
}

#meetingsreport #top{
	width:100%;
	height:100px;
	border-bottom:3px solid #9B2727;
}


#meetingsreport #bottom{
	width:100%;
}


#meetingsreport #bottom #profiles{
	width:80%;
	margin-top:20px;
	margin-bottom:20px;
	height:600px;
	background:white;
	border:2px solid #CCCCCC;
	border-radius:10px;
		
	-webkit-box-shadow: 0px 1px 14px 0px rgba(0,0,0,0.75);
	-moz-box-shadow: 0px 1px 14px 0px rgba(0,0,0,0.75);
	box-shadow: 0px 1px 14px 0px rgba(0,0,0,0.75);
}


#meetingsreport #bottom #profiles i-frame{
	border:1px solid red;
}

#meetingsreport #meetingtable{
	width:100%;
	height:100%;
	background:black;
	color:#FF9900;
}

</style>

	<!-- --Header Starts here  -->
	
  	<jsp:include page="../colorschanger.jsp"></jsp:include>
	<!-- --- Header Ends here -->

</head>

<body>
	<div id="mreport">
		<div id="m-head">Report</div>
		<div id="meetingsreport">
			<div id="top" >
				<table id="meetingtable" border="1">
					<tr>
						<td>Attendence</td>
						<td>Agenda</td>
						<td>Signatures</td>
					</tr>
				</table>
			</div>
			
			<div id="bottom" align="center">
				<div id="profiles">
					<iframe src="FinalReport?metid=${metid }" id="i-frame" width="97%" height="100%" style="border:hidden;"></iframe>
				</div>
				
			</div>
		</div>
	</div>

</body>
</html>
