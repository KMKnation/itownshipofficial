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
<link href="<c:url value="/Resources/css/desc1.css" />" type="text/css" rel="stylesheet" />

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
	
	
   <!-- --Header Starts here  -->
	
  	<jsp:include page="header.jsp"></jsp:include>
	<!-- --- Header Ends here -->
    
	
		<!-- DATA
    --->
                

	<div id="containall">
	
	
			<div id="name11">
				<span class="name111">
					Resident Manager
					
				</span>
			</div>
			<div id="pic11">
				<a href="#"><img src="<%=request.getContextPath() %>/Resources/images/reseident.JPG" /></a>
			</div>
			<div id="features11">
				<span class="feat11">
					Features
				</span>
				<ul class="feat22">
		<li>Resident accounts can be added, approved, deactivated.Bulk upload from spreadsheet to create Resident Accounts.</li>
					<br />
					<li>Admin Access to users provided from this Application.</li><br />
					<li>Manager roles can be created for Office Staff.</li><br />
					<li>Search on Any Family Information, Vehicle Information, User, Part Phone number etc.</li><br />
							</ul>
			</div>
	</div>
	
    
   
    <!-- DATA END --->


   <!-- --Header Starts here  -->
	
  	<jsp:include page="footer.jsp"></jsp:include>
	<!-- --- Header Ends here -->
    

</div>	 	 
</div> 
</body>
</html>
