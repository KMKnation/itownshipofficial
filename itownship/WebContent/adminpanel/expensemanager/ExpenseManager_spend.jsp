<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Spend | Expense Manager</title>
	<!-- --Header Starts here  -->
	
  	<jsp:include page="../colorschanger.jsp"></jsp:include>
	<!-- --- Header Ends here -->

	
<style>
	
#spendclick{
	width:100%;
	height:100%;
	border:3px solid #9B2727;
	border-radius:7px;
	
}
#spendclick #spendmenu{
	width:100%;
	height:200px;
	border:3px solid #9B2727;
	border-bottom:5px inset #333333;
	border-radius:7px;
	background:#EAEAEA;
	color:#9B2727;
}


#spendclick #spendmenu #spend-title{
	width:30%;
	height:200px;
	float:left;
}

#spendclick #spendmenu #spend-font{
	font-weight:bolder;
	font-size:46px;

}


#spendclick #spendmenu #spend-amount{
	width:65%;
	height:200px;
	float:right;
}

#spendclick #spend-user{
	width:100%;
	height:200px;
	border-bottom:1px outset;
	border-radius:7px;
	background:#EAEAEA;
	color:#9B2727;
}

#spendclick #spend-user #spend-user-table{
	width:100%;
	height:200px;
}

</style>
</head>

<body>
	<div id="spendclick">
	
			<div id="spendmenu">
				
						<div id="spend-title" align="center"><p id="spend-font">Spend</p></div>
						<div id="spend-amount" align="right">
							<p id="spend-font">$${tspendamount }</p>
							<p>Oct 2015</p>
						</div>
						<div id="spend-clear" style="clear:both"></div>
						
			</div>
			
				
					<c:forEach items="${exp }" var="exp"> 
				
					<div id="spend-user">
						<table id="spend-user-table">
							<tr>
								<td align="center" rowspan="3" style="border:1px solid">IMAGE</td>
								<td align="left">${exp.e_id }</td>
								<td align="right"><h4>$${exp.e_amount }</h4></td>
							</tr>
							<tr>
								<td >${exp.e_receiver }</td>
								<td align="right">${exp.e_date }</td>
							</tr>
							
							
							<tr>
								<td><a href="C:/Users/Mayur/workspace/itownship/WebContent/UPLOAD/Expenses/${exp.e_receipt }" target="_blank">Download</a> Reciepts : </td>
								<td align="right">
								<a href="ExpenseManager_spendDELETE?spendid=${exp.e_id }&spendAmount=${exp.e_amount }"><button>DELETE</button></a>
								</td>
							</tr>
							
							<tr>
								<td colspan="2"><strong style="color: "red"">Note: </strong>${exp.e_notes }</td>
								<td align="right">
<%-- 				<% --%>
<!--  // 				if(session.getAttribute("sesType").equals("admin")){ -->
						
<%-- 				%> --%>
	
								<a target="_blank" href="paymentcheckout?exp_id=${exp.e_id }&expName=${exp.e_receiver }+${exp.e_category }&expAmount=${exp.e_amount }"><button>Check Out</button></a>
<%-- 				<% } %> --%>
								</td>
							</tr>
							
						</table>
					</div>
					
			
			</c:forEach>
			
			
			
			
			
	</div>
</body>
</html>
