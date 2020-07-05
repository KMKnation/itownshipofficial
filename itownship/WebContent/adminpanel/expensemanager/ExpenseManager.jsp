<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Expense Manager</title>

	
<style>
#expense{
	width:100%;
	height:100%;
}

#expense #bankbalance{
	width:100%;
	height:200px;
	border:3px solid #9B2727;
	border-radius:7px;
	background:#EAEAEA;
}

#expense #bankbalance #bank-title{
	width:30%;
	height:200px;
	float:left;
}

#expense #bankbalance #bank-font{
	color:#9B2727;
	font-weight:bolder;
	font-size:46px;
	
}


#expense #bankbalance #bank-amount{
	width:65%;
	height:200px;
	float:right;
}

#expense #spend{
	width:100%;
	height:200px;
	border:3px solid #9B2727;
	border-radius:7px;
	background:#EAEAEA;
	margin-top:20px;
	color:#9B2727;
}


#expense #spend #spend-title{
	width:30%;
	height:200px;
	float:left;
}

#expense #spend #spend-font{
	font-weight:bolder;
	font-size:46px;

}


#expense #spend #spend-amount{
	width:65%;
	height:200px;
	float:right;
}

#expense #cash{
	width:100%;
	margin-top:20px;
	height:200px;
	border:3px solid #9B2727;
	border-radius:7px;
	background:#EAEAEA;
}


#expense #cash a{
	text-decoration:none;
}

#expense #cash #cash-counter{
	width:100%;
	height:200px;
}

#expense #cash #cash-counter #cash-title{
	color:#9B2727;
	font-weight:bolder;
	font-size:30px;
	
}

#expense #cash #cash-counter #counter-bar{
	background:#9B2727;
	width:98%;
	border-radius:10px;
	height:25px;
	margin:auto;
}

#expense #cash #cash-counter #bank-bar{
	background:green;
	width:${bankBar}%;
	border-radius:10px 0px 0px 10px;
	height:25px;
	margin:auto;
	float: left;
}

#expense #cash #cash-counter #spend-bar{
	background:yellow;
	width:${spendBar}%;
	border-radius:0px 10px 10px 0px;
	height:25px;
	margin:auto;
	float: left;
}

#expense #expense-notice{
	width:100%;
	height:200px;
	border:3px solid #9B2727;
	border-radius:7px;
	margin-top:20px;
	background:#EAEAEA;
}

#expense #new-expense{
	width:15%;
	height:50px;
	margin-top:20px;
	border-radius:20px;
	font-size:24px;
	color:white;
	background:#9B2727;
}
</style>

	<!-- --Header Starts here  -->
	
  	<jsp:include page="../colorschanger.jsp"></jsp:include>
	<!-- --- Header Ends here -->

</head>

<body>

	<div id="expense">
			<div id="bankbalance">
				<div id="bank-title" align="center"><p id="bank-font">Bank Balance<p></div>
				<div id="bank-amount" align="right">
					<p id="bank-font">$${bank }</p>
					<p style="color:#0033CC">Estimated</p>
				</div>
				<div id="bank-clear" style="clear:both"></div>
			</div>
			
			<div id="spend">
				<a href="ExpenseManager_spend">
				<div id="spend-title" align="center"><p id="spend-font">Spend</p></div>
				<div id="spend-amount" align="right">
					<p id="spend-font">$${tspendamount }</p>
					<p>Oct 2015</p>
				</div>
				<div id="spend-clear" style="clear:both"></div>
				</a>
			</div>
			
			<div id="cash">
				<a href="#">
				<table id="cash-counter" >
					<tr id="cash-title">
						<td>Cash</td>
						<td style="color:#00FF33;">$0</td>
					</tr>
					<tr>
						<td>Oct 2015</td>
						<td>Cash IN: $0</td>
					</tr>
					
					<tr>
						<td colspan="2" >
								<div id="counter-bar">
									
									<div id="bank-bar"></div>
									<div id="spend-bar"></div>
									<div id="clear" style="clear: both;"></div>
								</div>
								
						</td>
					</tr>
					
					<tr>
						<td>Remaining : NA</td>
						<td style="color:#9B2727;">OUT: $${tspendamount }</td>
					</tr>
					
				</table>
				</a>
			</div>
			<div id="expense-notice">
			</div>
			<div align="center">
					<a href="AddExpense"><input type="button" id="new-expense" value="Add Expense"/></a>
			</div>
	</div>
</body>
</html>
