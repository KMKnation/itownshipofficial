<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	if(session.getAttribute("sesId")==null){
		response.sendRedirect(request.getContextPath()+"/Login");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Admin Panel</title>
<link href="main.css"  type="text/css"  rel="stylesheet" />

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
            
            <div id="navbar_detail">
                   
                    <table id="dashbord_table">
                        <tr>
                        <td align="center"><a href="uimanager">Manage UI</a></td>
                        <td align="center">Manage WebPages</td>
                        <td align="center"><a href="Admin Panel_meeting.html">Manage Advertisement</a></td>
                        </tr>
                        
                        <tr>
                        <td align="center">Manage News</td>
                        <td align="center"><a href="Admin Panel_2.html">Manage Admins</a></td>
                        <td align="center">Manage Forum</td>
                        </tr>
                        
                        <tr>
                        <td align="center">Feedbacks</td>
                        <td align="center">Error Pages</td>
                        <td align="center">Logs</td>
                        </tr>
                        
                    </table>
                    
                    <div id="dash_guide">
                        <h2 align="center" style="background:#9B2727; color:white; height:35px; padding-top:5px;">GUIDE</h2>
                    </div>
                    
                            
                    <div id="cleardash">
                    </div>
                    
            </div>
            
            <div id="cleardash">
            </div>
            

</body>
</html>
