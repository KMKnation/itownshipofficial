<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Resident Form</title>
	<!-- --Header Starts here  -->
	
  	<jsp:include page="../colorschanger.jsp"></jsp:include>
	<!-- --- Header Ends here -->

</head>

<body>
<div style="width:50px;">
<form action="updateResidentData" method="get">

<input type="hidden" name="mem_id" value="${resident1.mem_id }"></input>
<label>Name </label>
<input type="text" size="25" name="mem_name" maxlength="25" value="${resident1.mem_name }" />
<label>EMail</label>
<input type="text" size="25" maxlength="25" value="${resident1.email }" name="email"/>
<label>Mobile Number</label>
<input type="text" size="10" maxlength="10" value="${resident1.number }" name="number" />
<label>Block No.</label>
<input type="text" size="7" maxlength="7" value="${resident1.block }" name="block" />
<label>Last Visited : ${resident1.last_visited }</label>
<input type="hidden" name="last_visited" value="${resident1.last_visited }"></input>
<label>Status : ${resident1.status }</label>
<input type="hidden" name="status" value="${resident1.status }"></input>
<label>Photo</label>
<input type="file" name="icard" />
<a href="#"></a>
<input type="submit" value="update"/>
<input type="reset" value="Reset"/>

</form>
</div>
</body>
</html>
