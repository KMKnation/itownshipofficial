<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*" %>

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

			<form:form action="submitExpenseData" method="get" id="e-t-form" modelAttribute="uploadForm" enctype="multipart/form-data">
				
				<div id="etf-header">
				
					<h1>CASH</h1>
					<label style="font-size:36px;">$</label>
					<input type="text" name="e_amount" placeholder="0"/>
				</div>
				
				<div id="etf-bottom">
					
					<table id="etf-table">
						<tr>
							<td rowspan="2" id="image">IMAGE</td>
							<td id="title">Spend/Income/Transfer/Loan</td>
							
						</tr>
						
						<tr>
							<td><select name="e_type"><option value="Spend">Spend</option>
													<option value="Income">Income</option>
													<option value="Transfer">Transfer</option>
													<option value="Loan">Loan</option>
								</select></td>
						</tr>
						
					</table>
					
					<table id="etf-table">
						<tr>
							<td rowspan="2" id="image">IMAGE</td>
							<td id="title">Sender/Reciever</td>
							
						</tr>
						
						<tr>
							<td><input type="text" name="e_receiver" placeholder="Paid to"/></td>
						</tr>
						
					</table>
					
					
					<table id="etf-table">
						<tr>
							<td rowspan="2" id="image">IMAGE</td>
							<td id="title">Category</td>
							
						</tr>
						
						<tr>
							<td><select name="e_category"><option value="Finance">Finance</option>
													<option value="Bike">Bike</option>
													<option value="Dining">Dining</option>
													<option value="Fashion">Fashion</option>
													<option value="Medical">Medical</option>
								</select></td>
						</tr>
						
					</table>
					
					
					<table id="etf-table">
						<tr>
							<td rowspan="2" id="image">IMAGE</td>
							<td id="title">Date</td>
							
						</tr>
						
						<tr>
							<td><input type="date" name="e_date"/></td>
						</tr>
						
					</table>
					
					
					<table id="etf-table">
						<tr>
							<td rowspan="2" id="image">IMAGE</td>
							<td id="title">Bill/Receipt</td>
							
						</tr>
						
						<tr>
							<td><input type="text" name="e_receipt"/></td>
							<td><a href="show" target="_blank">Add Documents</a> </td>
					
							
						</tr>
						
					</table>
					
					
					
					<table id="etf-table">
						<tr>
							<td rowspan="2" id="image">IMAGE</td>
							<td id="title">Notes</td>
							
						</tr>
						
						<tr>
							<td><input type="text" name="e_notes"/></td>
						</tr>
						
						<tr>
							<td><input type="submit" value="Upload" name="submit"/></td>
						</tr>
						
					</table>
					
				</div>	
			</form:form>
	</div>
</body>
</html>
