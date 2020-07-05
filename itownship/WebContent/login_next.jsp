<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>idcard</title>
<link href="<c:url value="/Resources/css/icard.css" />" type="text/css" rel="stylesheet" />
<link href="<c:url value="/Resources/css/main.css" />"  type="text/css"  rel="stylesheet" />

</head>


<body>
<div id="back">
<div id="all">
    
    <!-- --Header Starts here  -->
	
  	<jsp:include page="header.jsp"></jsp:include>
	<!-- --- Header Ends here -->
    
    <div id="maincard">
    
            <div id="card">
                <div id="i-top" align="center">
                    <div id="i-name">${USERNAME }</div>
                </div>
                <div id="i-info" align="center">
                        <img src="<c:url value="/UPLOAD/MemberPhoto/${photo }" />" id="i-photo" />
                        <form id="i-login" action="index" method="post">
                        <input type="password" name="password" placeholder="PASSWORD" />
                        <input type="submit" name="unext" value="Next" />
                        </form>
                </div>
                <div id="i-bottom">
                   <a href="http://www.fb.com" style="text-decoration: none;"><img src="<c:url value="/Resources/images/facebook.png" />" id="fbicon"/></a>
                   <a href="http://www.twitter.com" style="text-decoration: none;"><img src="<c:url value="/Resources/images/twitter.png" />" id="twicon" /></a>
                  <a href="http://web.whatsapp.com" style="text-decoration: none;"><img src="<c:url value="/Resources/images/whatsapp.jpg" />" id="wicon"  /></a>
                  <a href="http://www.hike.com" style="text-decoration: none;"><img src="<c:url value="/Resources/images/hike.png" />" id="hicon" /></a>
                </div>
            </div>
    </div>
    
    	  <div align="center" style="margin-top: 20px;"><p><b><a href="Forgot" style="text-decoration: none; color: #9B2727;">Forgot password?</a></b></p></div>    

<!-- --Header Starts here  -->
	
  	<jsp:include page="footer.jsp"></jsp:include>
	<!-- --- Header Ends here -->


</div>	 
	 
</div>    
</body>
</html>