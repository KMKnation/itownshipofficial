<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>AddMeeting</title>

<link href="<c:url value="/Resources/css/addmeeting.css" />" type="text/css" rel="stylesheet" />
	<!-- --Header Starts here  -->
	
  	<jsp:include page="../colorschanger.jsp"></jsp:include>
	<!-- --- Header Ends here -->

</head>

<body>
	<div id="addmeeting">
		<div id="add-head">Signatures</div>
		<div id="add-data" style="height: 200px;">
	<%
		String saveFile = new String();
		String contenType = request.getContentType();
		String rprefix = "/Resources/signatures/";
		String rsaveFile = "";
		
		if((contenType != null) && (contenType.indexOf("multipart/form-data") >= 0)){
		
			DataInputStream in = new DataInputStream(request.getInputStream());
			int formDataLength = request.getContentLength();
			byte dataBytes[] = new byte[formDataLength];
			int byteRead = 0;
			int totalBytesRead = 0;
			
			while(totalBytesRead < formDataLength){
				byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
				totalBytesRead+=byteRead;
			}
			
			String file = new String(dataBytes);
			saveFile = file.substring(file.indexOf("filename=\"") + 10);
			saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
			saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
			
			int lastIndex = contenType.lastIndexOf("=");
			
			String boundary = contenType.substring(lastIndex + 1, contenType.length());
			
			int pos;
			
			pos = file.indexOf("filename=\"");
			pos = file.indexOf("\n", pos) + 1;
			pos = file.indexOf("\n", pos) + 1;
			pos = file.indexOf("\n", pos) + 1;
			
			int boundaryLocation = file.indexOf(boundary, pos) - 4;
			
			int startPos = ((file.substring(0, pos)).getBytes()).length;
			int endPos = ((file.substring(0,boundaryLocation)).getBytes()).length;
			
			rsaveFile = saveFile;
			
			saveFile = "C:/Users/Mayur/workspace/itownship/WebContent/Resources/theme1/signatures/" + saveFile;
			
			File ff = new File(saveFile);
			
			try{
				FileOutputStream fileOut = new FileOutputStream(ff);
				fileOut.write(dataBytes, startPos, (endPos - startPos));
				fileOut.flush();
				fileOut.close();
			}catch(Exception e){
				out.println(e);
			}
			
		}   
		
		
	%>
			<form name="uploadForm" action="addSignature" method="post" enctype="multipart/form-data">
			<input type="file" name="file" value=""  />
			<input type="submit" value="Submit" name="submit"/>
			
			</form>
			
				<div id="" align="center">
					<h5>Did you uploaded signature ?</h5>
					<%
						rsaveFile = rprefix + rsaveFile;
					%>
					<a href="addSignatureData?filename=<%out.print(rsaveFile);%>"><button style="width: 30%; height: 30px;">YES</button></a>
				</div>
			</div>
			 
		<div id="add-buttons">
			<button>CANCEL</button>
			<a href="MeetingReport?metid=${metid }"><button>NEXT</button></a>
		</div>
	</div>

</body>
</html>
    