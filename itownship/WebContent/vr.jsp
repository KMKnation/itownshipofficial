<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>VR Dashboard | iTownship</title>

<link href="<c:url value="/Resources/css/footer.css" />" rel="stylesheet" type="text/css" />
<link href="<c:url value="/Resources/css/main.css" />"  type="text/css"  rel="stylesheet" />
<link href="<c:url value="/Resources/css/vrmap.css" />" type="text/css" rel="stylesheet" />

</head>

<body>
<div id="back">
<div id="all">


   <!-- --Header Starts here  -->
	
  	<jsp:include page="header.jsp"></jsp:include>
	<!-- --- Header Ends here -->
    
	
		<!-- DATA
    --->
    
    
    <!-- Slider ----->
             
      <!--- Slider End ----->
               
                               
                
                <div id="map">
                    
                    <iframe id="sitemap" src="VR/${vrId }"></iframe>
                    
                    <div id="mapseprator">
						<p align="center" style="color:#E6E6E6"> If above screen not working then <a href="vrdashboard2?vrId=${vrId }" style="color:#A01212">click here</a>
					</div>
                    
                    <div id="vrlink">
                    <img src="<c:url value="/Resources/images/OculusRift1.jpg" />" id="vrlogo"/>
                    <h1 align="center">VR MAP</h1>
                    <button id="vrmap-button">Download</button>
                    </div>
                    
                    <div id="mapseprator"></p>
					</div>
                    
                    <div id="map-events">
                    <h1 align="center">: EVENTS :</h1>
                    	<table>
                        <tr>
                       		<td><a href="vrdashboard?vrId=club/club.html"><img src="<c:url value="/Resources/images/club.JPG" />" id="vrmaps"/></a></td>
                            <td><a href="vrdashboard?vrId=Navratri/Navratri.html"><img src="<c:url value="/Resources/images/navratri.JPG" />" id="vrmaps"/></a></td>
                            <td><img src="images/portfolio2-5.jpg" id="vrmaps"/></td>
                        </tr>
                        <tr>
                       		<td><img src="images/portfolio2-5.jpg" id="vrmaps"/></td>
                            <td><img src="images/portfolio2-5.jpg" id="vrmaps"/></td>
                            <td><img src="images/portfolio2-5.jpg" id="vrmaps"/></td>
                        </tr>
                        </table>
                    
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
