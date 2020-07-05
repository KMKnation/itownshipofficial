<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Admin Panel</title>
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


	
</head>


<body>
<div id="back">
<div id="all">
	<!-- --Header Starts here  -->
	
  	<jsp:include page="header.jsp"></jsp:include>
	<!-- --- Header Ends here -->
	
	<div id="admin-panel">
            <div id="dash_head">
                        <h1 align="center">Search Results</h1>
            </div>
            
            
            <div id="search" align="center">
            
            
                    <table id="search_table">
                    
                    <%
						if(session.getAttribute("sesId")==null){
						
					%>
                    
                    <tr>
					<td>Please <span><b><a href="<%=request.getContextPath() %>/Login" style="text-decoration: none; color: #9B2727;">Log In</a></b></span> to see the results...  </td>
					</tr>
					
					<% }
						else{
							
						
					
					%>
					
                    <c:forEach items="${searchList }" var="searchList">
					<tr>
						
					<td>${searchList }</td>
					
					</tr>
					
					<tr>
					<td>  </td>
					</tr>
					
					<tr>
					<td>  </td>
					</tr>
					
					
					</c:forEach>
					
					<% } %>
		            </table>
                    
                            
                    <div id="cleardash">
                    </div>
                    
            </div>
            
            <div id="cleardash">
            </div>
            
    </div>
	
	<!-- - Footer Starts here -->
	
	<jsp:include page="footer.jsp"></jsp:include>
			
	
	<!--  Footer ends here -->
	
</div>	 
	 
</div>
</body>
</html>
