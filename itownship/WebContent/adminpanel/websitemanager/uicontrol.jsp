<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>UIControl</title>

<style>
#uimanager{
	width:100%;
	height:100%;
}

#uimanager #uicontrol{
	width:20%;
	height:700px;
	border-right:2 px solid #999999;
	float:left
}


#uimanager #uicontrol label{
	display:block;
}

#uimanager #uicontrol input{
	width:70%;
	height:40px;
}

#uimanager #colorpickertool{
	width:79%;
	height:700px;
	float:left;
}

#uimanager #clearboth{
	clear:both;
}
</style>

	<!-- --Header Starts here  -->
	
  	<jsp:include page="../colorschanger.jsp"></jsp:include>
	<!-- --- Header Ends here -->

</head>

<body>

<div id="uimanager">
	<div id="uicontrol">
		<form action="change" method="get">
			<label>Background color : </label>
			<input type="text" name="bgcolor" placeholder="Use color picker for help" />
			<label>Font color : </label>
			<input type="text" name="fontcolor" placeholder="Use color picker for help" />
			<label> Title </label>
			<input type="text" name="sitetitle" placeholder="Enter title of site" />
			<label> Choose Logo </label>
			<input type="file" name="sitelogo" />
			<input type="submit" name="submit" />
			</form>
		</form>
	</div>
	<div id="colorpickertool">
		<iframe src="colorpickertool"  width="100%" height="700px"/>
	</div>
	
	<div id="clearboth">
	</div>
</div>
</body>
</html>
