<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Spring MVC Multiple File Upload</title>
   <link href="Resources/css/main.css"  type="text/css"  rel="stylesheet" />
</head>
<body>
<div id="back">
<div id="all">
	<!-- --Header Starts here  -->
	
  	<jsp:include page="header.jsp"></jsp:include>
	<!-- --- Header Ends here -->
	





    <h1>Photo Uploaded</h1>
    <p>Following files are uploaded successfully.</p>
    <ol>
        <c:forEach items="${files}" var="file">
            <li>${file}</li>
        </c:forEach>
    </ol>
    
    
    
    
   
   <!-- --Header Starts here  -->
	
  	<jsp:include page="footer.jsp"></jsp:include>
	<!-- --- Header Ends here -->
    
    
   
</div>	 
	 
</div>
</body>
</html>