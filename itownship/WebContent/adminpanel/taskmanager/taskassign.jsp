<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Add Transaction | Spend</title>

<style>
	#expense-transaction{
		width:100%;
		height:100%;
	}
	
	
	#expense-transaction #e-t-form{
		width:100%;
		height:770px;
		border:2px solid #9B2727;
	}
	
	
	#expense-transaction #e-t-form #etf-header{
		width:100%;
		height:150px;
		background:#9B2727;
		color:white;
	}
	
	#expense-transaction #e-t-form #etf-header input{
		width:30%;
		color:#9B2727;
		height:40px;
		margin-top:20px;
		font-size:36px;
	}
	
	
	#expense-transaction #e-t-form #etf-bottom{
		width:100%;
		height:550px;
		background:#F4F4F4;
	}	
	
	
	#expense-transaction #e-t-form #etf-bottom #etf-table{
		width:100%;
		height:100px;
	}	
	
	
	#expense-transaction #e-t-form #etf-bottom #etf-table #image{
		width:10%;
	}	
	
	#expense-transaction #e-t-form #etf-bottom #etf-table #title{
		color:#9B2727;
	}
	
	
	#expense-transaction #e-t-form #etf-bottom #etf-table select{
		color:#9B2727;
		width:100%;
		height:30px;
		border:hidden;
		border-bottom:2px solid #CCCCCC;
	}
	
	
	#expense-transaction #e-t-form #etf-bottom #etf-table input{
		color:#9B2727;
		width:100%;
		height:30px;
		border:hidden;
		border-bottom:2px solid #CCCCCC;
	}
	
</style>

	<!-- --Header Starts here  -->
	
  	<jsp:include page="../colorschanger.jsp"></jsp:include>
	<!-- --- Header Ends here -->

</head>

<body>
	<div id="expense-transaction">


			<a href="taskmanagershow"><button>Show Tasks</button></a>
			<form:form action="submitTask" method="get" id="e-t-form" modelAttribute="uploadForm" enctype="multipart/form-data">
				
				
				<div id="etf-bottom">
				
					<table id="etf-table">
						<tr>
							<td rowspan="2" id="image">IMAGE</td>
							<td id="title">TO :</td>
							
						</tr>
				
						<tr>
						
							<td>
								<select name="mem_id">
								<c:forEach items="${residents }" var="resi"> 
									<option value="${resi.mem_id }">${resi.mem_name }</option>
								</c:forEach>
								</select>
							</td>
						</tr>
						
					</table>
					
					<table id="etf-table">
						<tr>
							<td rowspan="2" id="image">From</td>
							<td id="title">BY :</td>
							
						</tr>
				
						<tr>
							<td><select name="chr_id"><option value="${loginID }">${sesName }</option>
								</select>
							</td>
						</tr>
						
					</table>
					
					<table id="etf-table">
						<tr>
							<td rowspan="2" id="image">IMAGE</td>
							<td id="title">Task Decription</td>
							
						</tr>
						
						<tr>
							<td><input type="text" name="task_desc" placeholder="Enter Tsk Description"/></td>
						</tr>
						
					</table>
					
					
					<table id="etf-table">
						<tr>
							<td rowspan="2" id="image">IMAGE</td>
							<td id="title">Priority</td>
							
						</tr>
						
						<tr>
							<td><select name="priority"><option value="High">High</option>
													<option value="Medium">Med</option>
													<option value="Low">Low</option>
								</select></td>
						</tr>
						
					</table>
					
					
					<table id="etf-table">
						<tr>
							<td rowspan="2" id="image">IMAGE</td>
							<td id="title">Progress</td>
							
						</tr>
						
						<tr>
							<td><input type="text" name="progress" placeholder="Do not add % sign"/></td>
						</tr>
						
					</table>
					
					
					<table id="etf-table">
						<tr>
							<td rowspan="2" id="image">IMAGE</td>
							<td id="title">DeadLine</td>
							
						</tr>
						
						<tr>
							<td><input type="text" name="deadline" placeholder="if task will complete in X days then enter X"/></td>
							
						</tr>
						
					</table>
					
					
				<input type="submit" value="Assign" />	
							
				</div>
				 	
			</form:form>
			
	</div>
</body>
</html>
