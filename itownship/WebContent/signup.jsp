<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Sign Up</title>
<link href="<c:url value="/Resources/css/signup.css" />" type="text/css" rel="stylesheet" />
<link href="<c:url value="/Resources/css/main.css" />" type="text/css" rel="stylesheet" />

</head>

<body>
<div id="back">
<div id="all">



   <!-- --Header Starts here  -->
	
  	<jsp:include page="header.jsp"></jsp:include>
	<!-- --- Header Ends here -->
    
    
	<!-- DATA
    --->
	<div id="wrappersu">
			${Warning }
     <div id="register" >
                            <form  action="RegDataSubmit" autocomplete="on"> 
                                <h1> Sign up </h1>
								<hr />
								 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Your Name</label><br />
                                    <input class="c" name="mem_name" required="required" type="text" placeholder="Enter your full name" />
                                </p>
								<span class="a">
										<input class="a" type="radio" name="mem_type" value="admin" checked> Chairman
  										<input class="a" type="radio" name="mem_type" value="user" > Resident
  								</span>		
							
								<p> 
                                    &nbsp;&nbsp;Block no
                                    <input class="b" name="block" required="required" type="text" placeholder="eg.B-5"/>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Photo
                              <a href="show" target="_blank"><input class="b" required="required" type="button" value="Upload"/></a>
                                
                                </p>
								<p> 
                                    Mobile no
                                    <input class="b" name="phone" required="required" type="text" placeholder="eg.9913992249"/>&nbsp;&nbsp;&nbsp;
																		Housemates
                                    <input class="b"  name="icard" required="required" type="text" placeholder="Paste uploaded filename"/>
									        
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your email ID</label><br />	
                                    <input class="c"  name="email" required="required" type="email" placeholder="itownship@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label><br />
                                    <input class="c" name="password" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please confirm your password </label><br />
                                    <input class="c" name="cpassword" required="required" type="password" placeholder="Same As Above"/>
                                </p>
								
                                <p class="signin button"> 
									<input type="submit" value="Sign up"/> 
								</p>
                                <p class="change_link">  
									Already a member ?
									<a href="Login" class="to_register"> Go and log in </a>								</p>
                            </form>
                        </div>
						
						
						</div>
						
						
    <!-- Slider ----->
             
      <!--- Slider End ----->
               
               					
    
   
    <!-- DATA END --->
    
    
   <!-- --Header Starts here  -->
	
  	<jsp:include page="footer.jsp"></jsp:include>
	<!-- --- Header Ends here -->
    
    
</div>	 
	 
</div> 
</body>
</html>
