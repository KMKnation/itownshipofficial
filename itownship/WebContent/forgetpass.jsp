<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PassWord Recovery</title>
<link href="<c:url value="/Resources/css/main.css" />"  type="text/css"  rel="stylesheet" />

</head>
<body>

<!-- --Header Starts here  -->
	
  	<jsp:include page="header.jsp"></jsp:include>
	<!-- --- Header Ends here -->

<div align="center">
<form class="form-horizontal mt0" action="<%=request.getContextPath() %>/ForgotPasswordController"  method="get"><div class=form-group><div class=col-md-12><!-- col-md-12 start here --><label for="">Email:</label></div><!-- col-md-12 end here --><div class=col-lg-12><div class="input-group input-icon"><input type="hidden" name="flag" value="forgot"><input name=email id=email class=form-control placeholder="Type your email ..." required> <span class=input-group-addon><i class="fa fa-envelope s16"></i></span></div></div></div><div class="form-group mb0"><div class=col-md-12><button class="btn btn-default" type=submit>Recover Password</button></div></div></form>
</div>

<!-- - Footer Starts here -->
	
	<jsp:include page="footer.jsp"></jsp:include>
			
	
	<!--  Footer ends here -->
	

</body>
</html>