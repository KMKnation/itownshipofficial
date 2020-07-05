<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>a_block</title>
<link href="<c:url value="/Resources/css/forum.css" />" type="text/css" rel="stylesheet" />
<link href="<c:url value="/Resources/css/main.css" />" type="text/css" rel="stylesheet" />
<link href="<c:url value="/Resources/css/icard.css" />" type="text/css" rel="stylesheet" />

</head>

<body>
<div id="back">
<div id="all">


	<!-- --Header Starts here  -->
	
  	<jsp:include page="header.jsp"></jsp:include>
	<!-- --- Header Ends here -->



	<!-- DATA
    --->
    
                                            
         	
<div id="forum">
	<div id="forum-header">
    	<div id="flogo">
        </div>
        <div id="ftitle">
       		<div id="htitle"><h1 align="center">Discuss | Communicate | Help</h1></div>
            <div id="hdesc"><p align="center">This is a platform given to the residents of i-Township to communicate and discuss problems as well as help each other by providing solution.</p></div> 
       </div>
       <div id="fmenu">
       </div>
    </div>
    <div id="forum-box">
    	<table id="ftable" >
        	<tr id="ft-head">
            	<td align="center" id="td1">Topics</td>
            	<td align="center" id="td2">Replies</td>
            	<td align="center" id="td3">Author</td>
            	<td align="center" id="td4">views</td>
            	<td align="center" id="td5">Last Posts</td>
            </tr>
            <tr>
            	<td id="dtd">A-Block|Root|I-Township</td>
                <td id="dtd" colspan="4" align="center">A-Block | Root</td>
            </tr>
            
            
            
			<c:forEach items="${posts }" var="post">            
            <tr>
            	<td id="dtd"><a href="ForumPosts?postid=${post.post_id }">${post.post_title }</a>

							<%
								if(session.getAttribute("sesId")!=null){
							%>
         	
								<a href="deletePost?postId=${post.post_id }"><button>Delete</button></a>
							<%
								}
							%>
						
							
            	</td>
                <td id="dtd">50</td>
                <td id="dtd">${post.post_author }</td>
                <td id="dtd">${post.post_views }</td>
                <td id="dtd">${post.lastpost }</td>
                
            </tr>
            </c:forEach>
            
            
            <tr>
            	<td id="dtd" >Parkig joie :p</td>
                <td id="dtd">22</td>
                <td id="dtd">Ronak Janani</td>
                <td id="dtd">598</td>
                <td id="dtd">01-10-2015</td>
            </tr>
            <tr>
            	<td id="dtd">Navratri</td>
                <td id="dtd">12</td>
                <td id="dtd">Keval Patel</td>
                <td id="dtd">201</td>
                <td id="dtd">14-10-2015</td>
                
            </tr>
            <tr>
            	<td id="dtd">Counter Strike</td>
                <td id="dtd">5</td>
                <td id="dtd">Smit Vyas</td>
                <td id="dtd">40</td>
                <td id="dtd">24-11-2015</td>
            </tr>
        </table>
    </div>
    <div id="latest-updates">
    	<marquee><p>Latest updates will be updated here...</p></marquee>
    </div>
    <div id="forum-online">
    	<div id="o-head"><h3 align="center">Online Members</h3></div>
        <div id="o-table">
        	<table>
            	<tr>
                	<td>Members</td>
                    <td>list of members</td>
                </tr>
            	<tr>
                	<td>Amdmins</td>
                    <td>list of admins</td>
                </tr>
            </table>
                    
        </div>
        
    </div>
    <div id="forum-footer">
    </div>
</div>

              
    				
    
   
    <!-- DATA END --->



<!-- - Footer Starts here -->
	
	<jsp:include page="footer.jsp"></jsp:include>
			
	
	<!--  Footer ends here -->


</div>	 
	 
</div> 
</body>
</html>
