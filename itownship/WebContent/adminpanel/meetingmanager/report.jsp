<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Final Report</title>
	<!-- --Header Starts here  -->
	
  	<jsp:include page="../colorschanger.jsp"></jsp:include>
	<!-- --- Header Ends here -->

</head>
<body>
<div align="center">
	<h1>Title :</h1>${title } <br>
	<h2>About :</h2>${about } <br>
	<h3>Place :</h3>${place } <br>
	<h4>Present :</h4>
	<c:forEach items="${icard }" var="p"> 
			${p }<br>
	</c:forEach>
	<h2>Agenda :</h4>${agenda } <br>
	<h3>Discussion : </h3>${discuss } <br>
	<h1 style="color:red;">Conclusion :</h4>${concl } <br>
	

	<img  src="<c:url value="${sign }" />">
</div>

</body>
</html>