<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
    
<title>poll</title>
    
<link rel='stylesheet prefetch' href="<c:url value="/Resources/css/texteditor/css/content.min.css" />" />
<link rel='stylesheet prefetch' href="<c:url value="/Resources/css/texteditor/css/skin.min.css" />" />

<link href="<c:url value="/Resources/css/forum.css" />" type="text/css" rel="stylesheet" />
<link href="<c:url value="/Resources/css/main.css" />" type="text/css" rel="stylesheet" />
<link href="<c:url value="/Resources/css/icard_forum.css" />" type="text/css" rel="stylesheet" />



<!-- USERPROFILE - -->

<link href="<c:url value="/Resources/css/bootstrap.min.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/Resources/css/londinium-theme.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/Resources/css/styles.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/Resources/css/icons.css" />" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>

<script type="text/javascript" src="<c:url value="/Resources/js/plugins/charts/sparkline.min.js" />"></script>

<script type="text/javascript" src="<c:url value="/Resources/js/plugins/forms/uniform.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/forms/select2.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/forms/inputmask.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/forms/autosize.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/forms/inputlimit.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/forms/listbox.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/forms/multiselect.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/forms/validate.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/forms/tags.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/forms/switch.min.js" />"></script>

<script type="text/javascript" src="<c:url value="/Resources/js/plugins/forms/uploader/plupload.full.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/forms/uploader/plupload.queue.min.js" />"></script>

<script type="text/javascript" src="<c:url value="/Resources/js/plugins/forms/wysihtml5/wysihtml5.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/forms/wysihtml5/toolbar.js" />"></script>

<script type="text/javascript" src="<c:url value="/Resources/js/plugins/interface/daterangepicker.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/interface/fancybox.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/interface/moment.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/interface/jgrowl.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/interface/datatables.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/interface/colorpicker.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/interface/fullcalendar.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/plugins/interface/timepicker.min.js" />"></script>

<script type="text/javascript" src="<c:url value="/Resources/js/bootstrap.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/Resources/js/application.js" />"></script>


<!-- END -->
	
<style>
div.mce-edit-area {
    background: #fff;
    filter: none;
    height: 250px;
}
</style>

<style>
#fcomments #fcomments-body{
width:100%;
height:300px;

border:1px solid red;
}

#fcomments #fcomments-body #cmnt-icard{
	width:300px;
	height:100%;
	border:1px solid green;
	float:left;
}

#fcomments #fcomments-body #cmnt-text{
	width:75%;
	height:100%;
	border:1px solid black;
	float:right;
}

#fcomments #fcomments-body #cmnt-text #cmnt-likes{
	
	width: 50px;
    height: 50px;
    float: left;
    margin-top: 248px;
    margin-left: 790px;
    background-image: url(images/like/like120.png);
    background-repeat: no-repeat;
}



#fcomments #fcomments-body #cmnt-text #cmnt-dislikes{
	
	width: 50px;
    height: 50px;
    float: right;
    margin-top: 248px;
    background-image: url(images/like/dislike120.png);
    background-repeat: no-repeat;
}
</style>

</head>

<body>
<div id="back">
<div id="all">
	<div id="hader">
		<div id="h1">
	  	  	<ul>
			<li><a href="#"> <img src="<c:url value="/Resources/images/sociable/twitter.png" />" /></a></li>
			<li><a href="#"><img src="<c:url value="/Resources/images/sociable/app_store.png" />" /></a></li>
			<li><a href="#"><img src="<c:url value="/Resources/images/sociable/facebook (1).png" />" /></a></li>
			<li><a href="#"><img src="<c:url value="/Resources/images/sociable/yahoo.png" />" /></a></li>
			<li><a href="#"><img src="<c:url value="/Resources/images/sociable/youtube.png" />" /></a></li>
			<li><a href="#"><img src="<c:url value="/Resources/images/sociable/google (1).png" />" /></a></li>
		</ul>	
		
		</div>
		<div id="search">
			<form>
				<input id="s" type="text" placeholder=" Search" />
				<input id="b" type="submit" value=" "/>
			</form>
		</div>
	</div>
	<div id="manu">
		<div id="logo">
		</div>
		
			   
			 <div id="header">
               <ul>  
			   <li><a href="/itownship/home" class="m">Home</a>
			   	    <ul>
			         <li><a href="/itownship/Login" class="s">Admin</a>
					 </li>
				     <li><a href="/itownship/Login" class="s">User</a>
					 </li>
					 
				   </ul>
			   </li>
			  
			   <li style="width: 170px;"><a href="" class="m">Management</a> 
			       <ul>
			         <li><a href="expensemanager" class="s">Expense Manager</a>
					 </li>
				     <li><a href="meetingmanager" class="s">Meeting Manager</a>
					 </li>
					 <li><a href="websitemanager" class="s">Website Manager</a>
					 </li>
				     <li><a href="residentmanager" class="s">Residents Manager</a>
					 </li>
				   </ul>
				</li>
				<li><a href="" class="m">Tools</a>
			   		<ul>
			         <li><a href="" class="s">Notification</a> </li>
				     <li><a href="" class="s">E-voting</a> </li>
					 <li><a href="sitemap.html" class="s">VR</a>
					 	<ul>
			            <li><a href="" class="ss">S/w</a></li>
				        <li><a href="" class="ss">H/W</a></li>
				        </ul>
					 </li>
				     
				   </ul>
			   </li>
			   <li><a href="" class="m">Forum</a>
			   		<ul>
			         <li><a href="#" class="s">Block</a>
					 	<ul>
			            <li><a href="/itownship/forum/Forum?blckID=A" class="ss">A Block</a></li>
				        <li><a href="/itownship/forum/Forum?blckID=B" class="ss">B Block</a></li>
						<li><a href="/itownship/forum/Forum?blckID=C" class="ss">C Block</a></li>
				        </ul>
					 </li>
				     <li><a href="/itownship/forum/ForumHome" class="s">All</a>
					 </li>
					 
				   </ul>
			   </li>
			   <li><a href="" class="m">About us</a>
			       <ul>
			         <li><a href="aboutus.html" class="s">Contact us</a>
					 <!--	<ul>
			            <li><a href="" class="ss">S/w</a></li>
				        <li><a href="" class="ss">H/W</a></li>
				        </ul>-->
					 </li>
				     
				   </ul>
			   </li>
			   </ul>
			   </div>
	
	
	</div>

	<!-- DATA
    --->
    
    
    <div id="forum-post">
	<div id="post-poll">
    	<div id="poll-head" align="center">POLL</div>
    	<div id="optionA">
        	<div id="opt">India</div>
            <div id="votes">55%</div>
        </div>
        <div id="optionB">
        	<div id="opt">India</div>
            <div id="votes">55%</div>
        </div>
        <div id="poll-footer">
        </div>
    </div>
    
    <div id="fpost">
    	<div id="fpost-head" align="center">${post.post_title }</div>
    	<div id="user-data" align="center">
        	<div id="u-icard">
             <!-- i card concept -->
             			    <div id="maincard">
                            
                                    <div id="card">
                                        <div id="i-top" align="center">
                                            <div id="i-name">${member.mem_name }</div>
                                        </div>
                                        <div id="i-info" align="center">
                                              <img src="<c:url value="/UPLOAD/MemberPhoto/${sesIcard }" />" id="i-photo" />
                                        </div>
                                        <div id="i-bottom">
                                            <img src="<c:url value="/Resources//images/facebook.png" />" id="fbicon"/>
                                            <img src="<c:url value="/Resources//images/twitter.png" />" id="twicon" />
                                            <img src="<c:url value="/Resources//images/whats.png" />" id="wicon"  />
                                            <img src="<c:url value="/Resources//images/hike.png" />" id="hicon" />
                                        </div>
                                    </div>
                            </div>   


            </div>
        </div>
        <div id="user-post">
         	${post.post_desc }
         </div>
        <div id="fclear"></div>
    </div>
    
    <div id="fcomments">
    	<div id="fcomments-head" align="center">Comments</div>
    	
	    	
	    	<div id="fcomments-body">
				<div id="cmnt-icard">
				
				<!--- ICARD -->
							
					<div id="maincard">
					
							<div id="card">
								<div id="i-top" align="center">
									<div id="i-name">${member.mem_name }</div>
								</div>
								<div id="i-info" align="center">
                                            <img src="<c:url value="/UPLOAD/MemberPhoto/${sesIcard }" />" id="i-photo" />
								</div>
							</div>
					</div>   
				
					<!---	 ICARD ENF -->		
				
				</div>
				
				<div id="cmnt-text">
					<div id="cmnt-likes">
					</div>	
					<div id="cmnt-dislikes">
					</div>	
				</div>		
			</div>
	    	
	    	
    	
    </div>
    
    <div id="freply">
    	<div id="freply-head" align="center">Reply</div>
        <div id="freply-form">
        	<form action="#" method="post">
	    
	    	        

			<%
				if(session.getAttribute("sesId")!=null){
			%>

			<div class="panel-body">
						<div class="block-inner">
							<ul class="wysihtml5-toolbar wysihtml5-commands-disabled"><li class="dropdown"><a class="btn btn-default dropdown-toggle disabled" data-toggle="dropdown" href="#"><i class="icon-font"></i>&nbsp;<span class="current-font">Normal text</span>&nbsp;<b class="caret"></b></a><ul class="dropdown-menu"><li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="div" tabindex="-1" href="javascript:;" unselectable="on" class="">Normal text</a></li><li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h1" tabindex="-1" href="javascript:;" unselectable="on">Heading 1</a></li><li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h2" tabindex="-1" href="javascript:;" unselectable="on">Heading 2</a></li><li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h3" tabindex="-1" href="javascript:;" unselectable="on">Heading 3</a></li><li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h4" href="javascript:;" unselectable="on">Heading 4</a></li><li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h5" href="javascript:;" unselectable="on">Heading 5</a></li><li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h6" href="javascript:;" unselectable="on">Heading 6</a></li></ul></li><li class="dropdown"><a class="btn btn-default dropdown-toggle disabled" data-toggle="dropdown" href="#" tabindex="-1"><i class="icon-droplet"></i><span class="current-color">Black</span>&nbsp;<b class="caret"></b></a><ul class="dropdown-menu color-select"><li><div class="wysihtml5-colors" data-wysihtml5-command-value="black"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="black" href="javascript:;" unselectable="on">Black</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="silver"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="silver" href="javascript:;" unselectable="on">Silver</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="gray"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="gray" href="javascript:;" unselectable="on">Grey</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="maroon"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="maroon" href="javascript:;" unselectable="on">Maroon</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="red"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="red" href="javascript:;" unselectable="on">Red</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="purple"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="purple" href="javascript:;" unselectable="on">Purple</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="green"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="green" href="javascript:;" unselectable="on">Green</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="olive"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="olive" href="javascript:;" unselectable="on">Olive</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="navy"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="navy" href="javascript:;" unselectable="on">Navy</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="blue"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="blue" href="javascript:;" unselectable="on">Blue</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="orange"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="orange" href="javascript:;" unselectable="on">Orange</a></li></ul></li><li><div class="btn-group"><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="bold" title="Bold" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-bold"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="italic" title="Italic" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-italic"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="underline" title="Underline" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-underline"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="strikeThrough" title="Strike through" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-strikethrough"></i></a></div></li><li><div class="btn-group"><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="justifyleft" title="Align left" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-paragraph-left2"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="justifyright" title="Align right" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-paragraph-right2"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="justifycenter" title="Align center" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-paragraph-center2"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="justifyfull" title="Justify" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-paragraph-justify2"></i></a></div></li><li><div class="btn-group"><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="insertUnorderedList" title="Unordered list" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-list"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="insertOrderedList" title="Ordered list" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-numbered-list"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="Outdent" title="Outdent" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-indent-decrease"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="Indent" title="Indent" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-indent-increase"></i></a></div></li><li><div class="bootstrap-wysihtml5-insert-link-modal modal fade"><div class="modal-dialog"><div class="modal-content"><div class="modal-header"><a class="close" data-dismiss="modal">×</a><h4 class="modal-title"><i class="icon-link"></i>Insert link</h4></div><div class="modal-body with-padding"><div class="form-group"><input type="text" value="http://" class="bootstrap-wysihtml5-insert-link-url form-control"><label class="checkbox"> <div class="checker"><span class="checked"><input type="checkbox" class="bootstrap-wysihtml5-insert-link-target styled" checked=""></span></div>Open link in new window</label></div></div><div class="modal-footer"><a href="#" class="btn btn-warning disabled" data-dismiss="modal">Cancel</a><a href="#" class="btn btn-primary disabled" data-dismiss="modal">Insert link</a></div></div></div></div><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="createLink" title="Insert link" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-link"></i></a></li><li><div class="bootstrap-wysihtml5-insert-image-modal modal fade"><div class="modal-dialog"><div class="modal-content"><div class="modal-header"><a class="close" data-dismiss="modal">×</a><h4 class="modal-title"><i class="icon-image2"></i>Insert image</h4></div><div class="modal-body with-padding"><div class="form-group"><input type="text" value="http://" class="bootstrap-wysihtml5-insert-image-url form-control"></div></div><div class="modal-footer"><a href="#" class="btn btn-warning disabled" data-dismiss="modal">Cancel</a><a href="#" class="btn btn-primary disabled" data-dismiss="modal">Insert image</a></div></div></div></div><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="insertImage" title="Insert image" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-image2"></i></a></li><li><div class="btn-group"><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="undo" title="Undo" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-undo"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="redo" title="Redo" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-redo"></i></a></div></li><li><div class="btn-group"><a class="btn btn-success btn-icon wysihtml5-action-active" data-wysihtml5-action="change_view" title="Edit HTML" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-code"></i></a></div></li></ul><textarea class="editor" placeholder="Enter text ..."></textarea>
						</div>
		                <div class="form-actions text-right">
			                <button type="submit" class="btn btn-danger">Cancel</button>
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					&lt;
	        	</div>
	        	
	        <%
				}
	        %>
		

            </form>
        </div>
    </div>

</div>
              
    				
    
   
    <!-- DATA END --->
	  <div id="footer">
	  		
			<div class="foot_div">NOTIFICATION</div>
			<div class="foot_div">FEATURES</div>
			<div class="foot_div">INSTANT POLL</div>
			<div class="foot_div">TESTIMONIALS</div>
			<div id="note"> DP<br />KMK <br />RJ<br /> jhbshbcjbsd chsdbjbcsbdcbjsdbvbsjbdhvjbdh jbjd hc bd jbs kjdbc hs bh</div>
			<div class="h_line"></div>
			<div id="features">
					 <ul >
					 	<li><a href=""> Management</a></li>
						<li><a href=""> Forum</a></li>
						<li><a href=""> Notifications</a></li>
						<li><a href=""> Socity Bank</a></li>
					</ul>	
			 </div>
			<div class="h_line"></div>
			<div id="poll">
				<ul>
					<li>Datt<input class="button" type="button"  value="+1" /></li>
					<li>Mayur<input class="button" type="button"  value="+1" /></li>
					<li>Ronak<input class="button" type="button"  value="+1" /></li>
				</ul> 
		    </div>
			<div class="h_line"></div>
			<div id="testi" style="margin-right35px; width: 300px; float: right;">
				
			<a class="twitter-timeline"" data-dnt="true" href="https://twitter.com/KMKnation" data-widget-id="706093413720944640">Tweets by @KMKnation</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
		
		
		
			 </div>
	</div>
	<div id="line">
	</div>
	<div id="nev">
		
		                <ul id="foot-menu">
                            <li><a href="">Home</a></li> 
                            <li><a href="">Management</a></li> 
                            <li><a href="">E-voting</a></li> 
                            <li><a href="">Forum</a></li> 
                            <li><a href="">Notification</a></li> 
                            <li id="lst"><a href="">About Us</a></li>
                        </ul>
						<div id="foot-logo">
						
						</div>
						
						<div id="copy">© 2015 Designed and Coded by <b> DP-Themes </b> </div>
					
	</div>
</div>	 
</div> 
</body>
</html>
