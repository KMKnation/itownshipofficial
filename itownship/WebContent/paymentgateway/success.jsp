<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transaction Success</title>
</head>
<body>

	<div class="title">
		<span class="title_icon"><img src="${pageContext.servletContext.contextPath }/resources/user/images/bu;;et1gif" /></span>
		
	</div>

	<div class="feat_prod_box_details">
		<div class="contact_form xacnhan">
			<div class="form_subtitle">Order Information</div>
			<div class="form_row">
				<label class="contact"><strong>Transaction id:</strong> </label>
				${result.txn_id }
			</div>
			
			<div class="form_row">
				<label class="contact"><strong>First Name:</strong> </label>
				${result.first_name }
			</div>
			
			<div class="form_row">
				<label class="contact"><strong>Last Name:</strong> </label>
				${result.last_name }
			</div>
			
			
			<div class="form_row">
				<label class="contact"><strong>Email:</strong> </label>
				${result.payer_email }
			</div>
			
			
			<div class="form_row">
				<label class="contact"><strong>Payment Gross:</strong> </label>
				${result.payment_gross }
			</div>
			
			
			<div class="form_row">
				<label class="contact"><strong>Payment Fee:</strong> </label>
				${result.payment_fee }
			</div>
		</div>
	</div>
</body>
</html>