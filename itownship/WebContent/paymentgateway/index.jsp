<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
  <head>
    <meta charset="UTF-8">
    <title>Log-in</title>
    
    <link href="<c:url value="/Resources/css/main.css" />"  type="text/css"  rel="stylesheet" />
    
    <link rel='stylesheet prefetch' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'>

        <link rel="stylesheet" href="<c:url value="/Resources/css/paymentgateway.css" />">

    <style>
	#paypalbutton{
		margin-top:10px;
		margin-left:62px;
		border:1px solid #b9b9b9;
		border-radius:10px;
	}
	</style>
    <script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script>
	$(document).ready(function() {
		//add more file components if Add is clicked
		$('#addFile').click(function() {
			var fileIndex = $('#fileTable tr').children().length - 1;
			$('#fileTable').append(
					'<tr><td>'+
					'   <input type="hidden" name="files['+ fileIndex +']" />'+
					'   <input type="text" name="item_name_'+fileIndex+'" placeholder="Expense Name" />'+
					'   <input type="hidden" name="item_number_'+fileIndex+'" />'+
					'   <input type="text" name="amount_'+fileIndex+'" placeholder="Amount" />'+
					'   <input type="hidden" name="quantity_'+fileIndex+'" value="1" />'+
					'</td></tr>');
		});
		 
	});
	</script>
    
  </head>

  <body>
  <div id="back">
<div id="all">

	<!-- --Header Starts here  -->
	
  	<jsp:include page="../header.jsp"></jsp:include>
	<!-- --- Header Ends here -->


	
	

    <div class="login-card">
    <h1>Pay Pal</h1><br>
  <form method="post" action="${initParam['posturl'] }">
		<input type="hidden" name="upload" value="1" />
		<input type="hidden" name="return" value="${initParam['returnurl'] }" />
		<input type="hidden" name="cmd" value="_cart" />
		<input type="hidden" name="business" value="${initParam['business'] }" />
	
	
	
		<table id="fileTable">
      	<tr>
        	 <td>
        	 	<!--  Product 1 -->
		<input type="text" name="item_name_1" value="${expName }" placeholder="Maintenance" />
		<input type="text" name="item_number_1" value="${expId }" placeholder="ID" />
		<input type="text" name="amount_1" value="${expAmount }" placeholder="Amount"/>
		<input type="hidden" name="quantity_1" value="1" />
			</td>	
        </tr>
        </table>
			
		
    
	<!--     <input id="addFile" type="button" value="Add items" class="login login-submit" /> -->
	
	
	<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/x-click-but6.gif"  id="paypalbutton"/>
	
  </form>
    
  <div class="login-help">
    <a href="#">The safer</a> • <a href="#">easier way to pay</a>
  </div>
</div>

<!-- <div id="error"><img src="https://dl.dropboxusercontent.com/u/23299152/Delete-icon.png" /> Your caps-lock is on.</div> -->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>

    
    
    

	<!-- --Header Starts here  -->
	
  	<jsp:include page="../footer.jsp"></jsp:include>
	<!-- --- Header Ends here -->



    
</div>	 
	 
</div> 
    
    
  </body>
</html>
