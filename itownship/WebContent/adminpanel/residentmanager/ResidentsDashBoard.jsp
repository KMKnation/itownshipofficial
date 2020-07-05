<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	if(session.getAttribute("sesId")==null){
		response.sendRedirect(request.getContextPath()+"/Login");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Resident Manager</title>

<style>
#true{
	background: green;
	background-image: url("#");
}
#false{
	background: orange;
	background-image: url("#");
}

#ResiSearchBar{
	width: 100%;
	height: 200px;
	border-bottom: 1px solid menu;
}
#ResiSearchBar #header{
	width: 100%;
	height: 120px;
}

#ResiSearchBar #header #head{
	margin-top:20px;
	width: 40%;
	font-size: 38px;;
	color: white;
	background: #9B2727;
	border-radius:10px; 
}

#ResiSearchBar #search{
	width: 100%;
	height: 180px;
}



</style>

	<!-- --Header Starts here  -->
	
  	<jsp:include page="../colorschanger.jsp"></jsp:include>
	<!-- --- Header Ends here -->

</head>

<body>

<div id="ResiSearchBar">
	
		<div id="header" align="center">
			<label id="head">I-TOWNSHIP MEMBERS</label>
		</div>
		
		<div id="search" align="center">
				<form action="residentsdata" method="get" class="form-inline">
				  <div class="form-group">
				    <label for="exampleInputName2">Search : </label>
				    <select class="form-control" id="exampleSelect1" name="selectedid" >
				     <option value="mem_name">Name</option>
				     <option value="email">Email</option>
				   </select>
				  </div>
				  <div class="form-group">
				    <input type="name" class="form-control" id="exampleInputName2" name="searchStr" placeholder="Type here...">
				  </div>
				  <button type="submit" class="btn btn-primary">GO</button>
				</form>
		</div>

</div>
<div id="ResiData">
	<table class="table table-hover">
		<tr>	
			<th>Name</th>
			<th>EMail</th>
			<th>Mob. Number</th>
			<th>Block</th>
			<th>Last Visited</th>
			<th>Status</th>
			<th>icard</th>
			<th colspan="4" style="text-align: center;">OPERATION</th>
		</tr>
		
			<c:forEach items="${residents }" var="res">
			<tr>
				
			<td>${res.mem_name }</td>
			<td>${res.email }</td>
			<td>${res.number }</td>
			<td>${res.block }</td>
			<td>${res.last_visited }</td>
			<td id="${res.status }">${res.status }</td>
			<td><a href="#"></a></td><!-- <td>res.block.icard</td> -->
			
			<td><a href="editResidentData?resid=${res.mem_id }"><button type="button" class="btn btn-info">EDIT</button></a></td>
			<td><a href="deleteResidentData?resid=${res.mem_id }"><button type="button" class="btn btn-danger">DELETE</button></a></td>
			<td><a href="#"><button type="button" class="btn btn-success-outline">SEND NOTICE</button></a></td>
			<td><a href="#"><button type="button" class="btn btn-primary active">BLOCK</button></a></td>
			
			</tr>
			</c:forEach>
	</table>
</div>

</body>
</html>
