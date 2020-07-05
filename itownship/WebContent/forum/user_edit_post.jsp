<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1">
<title>Add Post | Forum | Itownship</title>

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

</head>

<body>

	<!-- Navbar -->
	<div class="navbar navbar-inverse" role="navigation">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"><img src="itownship/Resources/images/logo.png" alt="Londinium"></a>
			<a class="sidebar-toggle"><i class="icon-paragraph-justify2"></i></a>
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-icons">
				<span class="sr-only">Toggle navbar</span>
				<i class="icon-grid3"></i>
			</button>
			<button type="button" class="navbar-toggle offcanvas">
				<span class="sr-only">Toggle navigation</span>
				<i class="icon-paragraph-justify2"></i>
			</button>
		</div>

		<ul class="nav navbar-nav navbar-right collapse" id="navbar-icons">
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown">
					<i class="icon-people"></i>
					<span class="label label-default">2</span>
				</a>
				<div class="popup dropdown-menu dropdown-menu-right">
					<div class="popup-header">
						<a href="#" class="pull-left"><i class="icon-spinner7"></i></a>
						<span>Activity</span>
						<a href="#" class="pull-right"><i class="icon-paragraph-justify"></i></a>
					</div>
	                <ul class="activity">
		                <li>
		                	<i class="icon-cart-checkout text-success"></i>
		                	<div>
			                	<a href="#">Eugene</a> ordered 2 copies of <a href="#">OEM license</a>
			                	<span>14 minutes ago</span>
		                	</div>
		                </li>
		                <li>
		                	<i class="icon-heart text-danger"></i>
		                	<div>
			                	Your <a href="#">latest post</a> was liked by <a href="#">Audrey Mall</a>
			                	<span>35 minutes ago</span>
		                	</div>
		                </li>
		                <li>
		                	<i class="icon-checkmark3 text-success"></i>
		                	<div>
			                	Mail server was updated. See <a href="#">changelog</a>
			                	<span>About 2 hours ago</span>
		                	</div>
		                </li>
		                <li>
		                	<i class="icon-paragraph-justify2 text-warning"></i>
		                	<div>
			                	There are <a href="#">6 new tasks</a> waiting for you. Don't forget!
			                	<span>About 3 hours ago</span>
		                	</div>
		                </li>
	                </ul>
                </div>
			</li>

			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown">
					<i class="icon-paragraph-justify2"></i>
					<span class="label label-default">6</span>
				</a>
				<div class="popup dropdown-menu dropdown-menu-right">
					<div class="popup-header">
						<a href="#" class="pull-left"><i class="icon-spinner7"></i></a>
						<span>Messages</span>
						<a href="#" class="pull-right"><i class="icon-new-tab"></i></a>
					</div>
					<ul class="popup-messages">
						<li class="unread">
							<a href="#">
								<img src="http://placehold.it/300" alt="" class="user-face">
								<strong>Eugene Kopyov <i class="icon-attachment2"></i></strong>
								<span>Aliquam interdum convallis massa...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="http://placehold.it/300" alt="" class="user-face">
								<strong>Jason Goldsmith <i class="icon-attachment2"></i></strong>
								<span>Aliquam interdum convallis massa...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="http://placehold.it/300" alt="" class="user-face">
								<strong>Angel Novator</strong>
								<span>Aliquam interdum convallis massa...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="http://placehold.it/300" alt="" class="user-face">
								<strong>Monica Bloomberg</strong>
								<span>Aliquam interdum convallis massa...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="http://placehold.it/300" alt="" class="user-face">
								<strong>Patrick Winsleur</strong>
								<span>Aliquam interdum convallis massa...</span>
							</a>
						</li>
					</ul>
				</div>
			</li>

			<li class="dropdown">
				<a data-toggle="dropdown" class="dropdown-toggle">
					<i class="icon-grid"></i>
				</a>
				<div class="popup dropdown-menu dropdown-menu-right">
					<div class="popup-header">
						<a href="#" class="pull-left"><i class="icon-spinner7"></i></a>
						<span>Tasks list</span>
						<a href="#" class="pull-right"><i class="icon-new-tab"></i></a>
					</div>
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Description</th>
								<th>Category</th>
								<th class="text-center">Priority</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><span class="status status-success item-before"></span> <a href="#">Frontpage fixes</a></td>
								<td><span class="text-smaller text-semibold">Bugs</span></td>
								<td class="text-center"><span class="label label-success">87%</span></td>
							</tr>
							<tr>
								<td><span class="status status-danger item-before"></span> <a href="#">CSS compilation</a></td>
								<td><span class="text-smaller text-semibold">Bugs</span></td>
								<td class="text-center"><span class="label label-danger">18%</span></td>
							</tr>
							<tr>
								<td><span class="status status-info item-before"></span> <a href="#">Responsive layout changes</a></td>
								<td><span class="text-smaller text-semibold">Layout</span></td>
								<td class="text-center"><span class="label label-info">52%</span></td>
							</tr>
							<tr>
								<td><span class="status status-success item-before"></span> <a href="#">Add categories filter</a></td>
								<td><span class="text-smaller text-semibold">Content</span></td>
								<td class="text-center"><span class="label label-success">100%</span></td>
							</tr>
							<tr>
								<td><span class="status status-success item-before"></span> <a href="#">Media grid padding issue</a></td>
								<td><span class="text-smaller text-semibold">Bugs</span></td>
								<td class="text-center"><span class="label label-success">100%</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				
			</li>

			<li class="user dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown">
					<img src="<c:url value="/UPLOAD/MemberPhoto/${sesIcard }" />">
					<span>${sesName }</span>
					<i class="caret"></i>
				</a>
				<ul class="dropdown-menu dropdown-menu-right icons-right">
					<li><a href="#"><i class="icon-user"></i> Profile</a></li>
					<li><a href="#"><i class="icon-bubble4"></i> Messages</a></li>
					<li><a href="#"><i class="icon-cog"></i> Settings</a></li>
					<li><a href="#"><i class="icon-exit"></i> Logout</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!-- /navbar -->


	<!-- Page container -->
 	<div class="page-container">


		<!-- Sidebar -->
		<div class="sidebar">
			<div class="sidebar-content">

				<!-- User dropdown -->
				<div class="user-menu dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						
						<img src="<c:url value="/UPLOAD/MemberPhoto/${sesIcard }" />">
					
						<div class="user-info">
							${sesName } <span>${sesType }</span>
						</div>
					</a>
					<div class="popup dropdown-menu dropdown-menu-right">
					    <div class="thumbnail">
					    	<div class="thumb">
								<img src="<c:url value="/UPLOAD/MemberPhoto/${sesIcard }" />">
								<div class="thumb-options">
									<span>
										<a href="#" class="btn btn-icon btn-success"><i class="icon-pencil"></i></a>
										<a href="#" class="btn btn-icon btn-success"><i class="icon-remove"></i></a>
									</span>
								</div>
						    </div>
					    
					    	<div class="caption text-center">
					    		<h6>${sesName } <small>${sesEmail }</small></h6>
					    	</div>
				    	</div>

				    	<ul class="list-group">
							<li class="list-group-item"><i class="icon-pencil3 text-muted"></i> My posts <span class="label label-success">289</span></li>
							<li class="list-group-item"><i class="icon-people text-muted"></i> Users online <span class="label label-danger">892</span></li>
							<li class="list-group-item"><i class="icon-stats2 text-muted"></i> Reports <span class="label label-primary">92</span></li>
							<li class="list-group-item"><i class="icon-stack text-muted"></i> Balance <h5 class="pull-right text-danger">$45.389</h5></li>
						</ul>
					</div>
				</div>
				<!-- /user dropdown -->


				<!-- Main navigation -->
				<ul class="navigation">
					<li class="active"><a href="index.html"><span>Dashboard</span> <i class="icon-screen2"></i></a></li>
					<li>
						<a href="#"><span>Management</span> <i class="icon-paragraph-justify2"></i></a>
						<ul>
							<li><a href="form_components.html">Expense Manager</a></li>
							<li><a href="form_layouts.html">Meeting Manager</a></li>
							<li><a href="form_grid.html">Layout Manager</a></li>
						</ul>
					</li>
					<li>
						<a href="#"><span>Society Bank</span> <i class="icon-grid"></i></a>
					</li>
					<li>
						<a href="#"><span>Forum</span> <i class="icon-copy"></i></a>
						<ul>
							<li><a href="sidebar_wide_left.html">A Block</a></li>
							<li><a href="sidebar_wide_right.html">B Block</a></li>
							<li><a href="sidebar_narrow_left.html">C Block</a></li>
							<li><a href="sidebar_narrow_right.html">D Block</a></li>
						</ul>
					</li>
					<li>
						<a href="#"><span>Task manager</span> <i class="icon-numbered-list"></i></a>
						<ul>
							<li><a href="task_grid.html">Task grid</a></li>
							<li><a href="task_list.html">Task list</a></li>
							<li><a href="task_detailed.html">Task detailed</a></li>
						</ul>
					</li>
					<li><a href="charts.html"><span>Charts</span> <i class="icon-bars"></i></a></li>
					<li>
						<a href="#"><span>User</span> <i class="icon-user"></i></a>
						<ul>
							<li><a href="team.html">Team</a></li>
							<li><a href="contacts.html">Contact list</a></li>
							<li><a href="profile.html">User profile</a></li>
						</ul>
					</li>
					<li>
						<a href="#"><span>Support</span> <i class="icon-bubble6"></i></a>
						<ul>
							<li><a href="faq.html">FAQ's</a></li>
							<li><a href="chat_tabs.html">Chat with tabs</a></li>
							<li><a href="chat_contacts.html">Chat with contacts</a></li>
						</ul>
					</li>
					<li>
						<a href="#"><span>Tables</span> <i class="icon-table2"></i></a>
						<ul>
							<li><a href="tables_static.html">Static tables</a></li>
							<li><a href="tables_dynamic.html">Data tables</a></li>
						</ul>
					</li>
					<li><a href="search.html"><span>Search page</span> <i class="icon-search3"></i></a></li>
					<li>
						<a href="#"><span>Invoice</span> <i class="icon-coin"></i></a>
						<ul>
							<li><a href="invoice.html">Invoice template</a></li>
							<li><a href="invoice_list.html">Invoice list</a></li>
						</ul>
					</li>
					<li>
						<a href="#"><span>Login page</span> <i class="icon-user-plus"></i></a>
						<ul>
							<li><a href="login_simple.html">Simple login form</a></li>
							<li><a href="login_advanced.html">Login form with user image</a></li>
						</ul>
					</li>
					<li>
						<a href="#"><span>Error pages</span> <i class="icon-warning"></i></a>
						<ul>
							<li><a href="403.html">403 page</a></li>
							<li><a href="404.html">404 page</a></li>
							<li><a href="405.html">405 page</a></li>
							<li><a href="500.html">500 page</a></li>
							<li><a href="503.html">503 page</a></li>
							<li><a href="offline.html">Offline page</a></li>
							<li><a href="error_sidebar.html">Error page with sidebar</a></li>
						</ul>
					</li>
					<li>
						<a href="#"><span>Blank pages</span> <i class="icon-insert-template"></i></a>
						<ul>
							<li><a href="blank_left_sidebar.html">Left sidebar</a></li>
							<li><a href="blank_right_sidebar.html">Right sidebar</a></li>
							<li><a href="blank_collapsed_sidebar.html">Collapsed sidebar</a></li>
							<li><a href="blank_full_width.html">Full width page</a></li>
						</ul>
					</li>
					<li>
						<a href="#"><span>Navigation levels</span> <i class="icon-stack"></i></a>
						<ul>
							<li><a href="#">Second level first item</a></li>
							<li><a href="#">Second level second item</a>
								<ul>
									<li><a href="#">Third level first item</a></li>
									<li><a href="#">Third level third item</a>
										<ul>
											<li><a href="#">Fourth level first item</a></li>
											<li><a href="#">Fourth level second item</a></li>
											<li><a href="#">Fourth level third item</a></li>
										</ul>
									</li>
									<li><a href="#">Third level second item</a></li>
									<li><a href="#">Third level third item</a>
										<ul>
											<li><a href="#">Fourth level first item</a></li>
											<li><a href="#">Fourth level second item</a></li>
											<li><a href="#">Fourth level third item</a></li>
										</ul>
									</li>
									<li><a href="#">Third level second item</a></li>
								</ul>
							</li>
							<li><a href="#">Second level third item</a></li>
						</ul>
					</li>
				</ul>
				<!-- /main navigation -->
				
			</div>
		</div>
		<!-- /sidebar -->


		<!-- Page content -->
	 	<div class="page-content">


			<!-- Page header -->
			<div class="page-header">
				<div class="page-title">
					<h3>Forum <small>Welcome ${sesName }. ${seslast } since last visit</small></h3>
				</div>

				<div id="reportrange" class="range">
					<div class="visible-xs header-element-toggle">
						<a class="btn btn-primary btn-icon"><i class="icon-calendar"></i></a>
					</div>
					<div class="date-range"></div>
					<span class="label label-danger">9</span>
				</div>
			</div>
			<!-- /page header -->


			<!-- Breadcrumbs line -->
			<div class="breadcrumb-line">
				<ul class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li class="active">Dashboard</li>
				</ul>

				<div class="visible-xs breadcrumb-toggle">
					<a class="btn btn-link btn-lg btn-icon" data-toggle="collapse" data-target=".breadcrumb-buttons"><i class="icon-menu2"></i></a>
				</div>

				<ul class="breadcrumb-buttons collapse">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-search3"></i> <span>Search</span> <b class="caret"></b></a>
						<div class="popup dropdown-menu dropdown-menu-right">
							<div class="popup-header">
								<a href="#" class="pull-left"><i class="icon-paragraph-justify"></i></a>
								<span>Quick search</span>
								<a href="#" class="pull-right"><i class="icon-new-tab"></i></a>
							</div>
							<form action="#" class="breadcrumb-search">
								<input type="text" placeholder="Type and hit enter..." name="search" class="form-control autocomplete">
								<div class="row">
									<div class="col-xs-6">
										<label class="radio">
											<input type="radio" name="search-option" class="styled" checked="checked">
											Everywhere
										</label>
										<label class="radio">
											<input type="radio" name="search-option" class="styled">
											Invoices
										</label>
									</div>

									<div class="col-xs-6">
										<label class="radio">
											<input type="radio" name="search-option" class="styled">
											Users
										</label>
										<label class="radio">
											<input type="radio" name="search-option" class="styled">
											Orders
										</label>
									</div>
								</div>

								<input type="submit" class="btn btn-block btn-success" value="Search">
							</form>
						</div>
					</li>

					<li class="language dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="images/flags/german.png" alt=""> <span>German</span> <b class="caret"></b></a>
						<ul class="dropdown-menu dropdown-menu-right icons-right">
							<li><a href="#"><img src="images/flags/ukrainian.png" alt=""> Ukrainian</a></li>
							<li class="active"><a href="#"><img src="images/flags/english.png" alt=""> English</a></li>
							<li><a href="#"><img src="images/flags/spanish.png" alt=""> Spanish</a></li>
							<li><a href="#"><img src="images/flags/german.png" alt=""> German</a></li>
							<li><a href="#"><img src="images/flags/hungarian.png" alt=""> Hungarian</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<!-- /breadcrumbs line -->


			<!--  Forum Post blocks -->

					<form class="form-horizontal" role="form" action="submitPost" method="get">

						<div class="form-group">
							<label class="col-sm-2 control-label">TItle: </label>
							<div class="col-sm-10">
								<input type="text" name="post_title" class="form-control">
							</div>
							
							<label class="col-sm-2 control-label">Date: </label>
							<div class="col-sm-10">
								<input type="text" name="lastpost" value="${seslast }" class="form-control">
							</div>
							
							<label class="col-sm-2 control-label">Block: </label>
							<div class="col-sm-10">
								<input type="text" name="block_name" class="form-control" value="${sesBlock }">
								<input type="hidden" name="post_author" class="form-control" value="${resident.mem_id }">
							</div>
							
							
							<label class="col-sm-2 control-label">Description: </label>
							<div class="col-sm-10">
							
								<div class="panel-body">
									<div class="block-inner">
										<ul class="wysihtml5-toolbar wysihtml5-commands-disabled"><li class="dropdown"><a class="btn btn-default dropdown-toggle disabled" data-toggle="dropdown" href="#"><i class="icon-font"></i>&nbsp;<span class="current-font">Normal text</span>&nbsp;<b class="caret"></b></a><ul class="dropdown-menu"><li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="div" tabindex="-1" href="javascript:;" unselectable="on">Normal text</a></li><li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h1" tabindex="-1" href="javascript:;" unselectable="on">Heading 1</a></li><li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h2" tabindex="-1" href="javascript:;" unselectable="on">Heading 2</a></li><li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h3" tabindex="-1" href="javascript:;" unselectable="on">Heading 3</a></li><li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h4" href="javascript:;" unselectable="on">Heading 4</a></li><li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h5" href="javascript:;" unselectable="on">Heading 5</a></li><li><a data-wysihtml5-command="formatBlock" data-wysihtml5-command-value="h6" href="javascript:;" unselectable="on">Heading 6</a></li></ul></li><li class="dropdown"><a class="btn btn-default dropdown-toggle disabled" data-toggle="dropdown" href="#" tabindex="-1"><i class="icon-droplet"></i><span class="current-color">Black</span>&nbsp;<b class="caret"></b></a><ul class="dropdown-menu color-select"><li><div class="wysihtml5-colors" data-wysihtml5-command-value="black"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="black" href="javascript:;" unselectable="on">Black</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="silver"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="silver" href="javascript:;" unselectable="on">Silver</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="gray"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="gray" href="javascript:;" unselectable="on">Grey</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="maroon"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="maroon" href="javascript:;" unselectable="on">Maroon</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="red"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="red" href="javascript:;" unselectable="on">Red</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="purple"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="purple" href="javascript:;" unselectable="on">Purple</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="green"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="green" href="javascript:;" unselectable="on">Green</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="olive"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="olive" href="javascript:;" unselectable="on">Olive</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="navy"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="navy" href="javascript:;" unselectable="on">Navy</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="blue"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="blue" href="javascript:;" unselectable="on">Blue</a></li><li><div class="wysihtml5-colors" data-wysihtml5-command-value="orange"></div><a class="wysihtml5-colors-title" data-wysihtml5-command="foreColor" data-wysihtml5-command-value="orange" href="javascript:;" unselectable="on">Orange</a></li></ul></li><li><div class="btn-group"><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="bold" title="Bold" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-bold"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="italic" title="Italic" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-italic"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="underline" title="Underline" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-underline"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="strikeThrough" title="Strike through" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-strikethrough"></i></a></div></li><li><div class="btn-group"><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="justifyleft" title="Align left" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-paragraph-left2"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="justifyright" title="Align right" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-paragraph-right2"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="justifycenter" title="Align center" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-paragraph-center2"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="justifyfull" title="Justify" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-paragraph-justify2"></i></a></div></li><li><div class="btn-group"><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="insertUnorderedList" title="Unordered list" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-list"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="insertOrderedList" title="Ordered list" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-numbered-list"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="Outdent" title="Outdent" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-indent-decrease"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="Indent" title="Indent" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-indent-increase"></i></a></div></li><li><div class="bootstrap-wysihtml5-insert-link-modal modal fade"><div class="modal-dialog"><div class="modal-content"><div class="modal-header"><a class="close" data-dismiss="modal">×</a><h4 class="modal-title"><i class="icon-link"></i>Insert link</h4></div><div class="modal-body with-padding"><div class="form-group"><input type="text" value="http://" class="bootstrap-wysihtml5-insert-link-url form-control"><label class="checkbox"> <div class="checker"><span class="checked"><input type="checkbox" class="bootstrap-wysihtml5-insert-link-target styled" checked=""></span></div>Open link in new window</label></div></div><div class="modal-footer"><a href="#" class="btn btn-warning disabled" data-dismiss="modal">Cancel</a><a href="#" class="btn btn-primary disabled" data-dismiss="modal">Insert link</a></div></div></div></div><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="createLink" title="Insert link" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-link"></i></a></li><li><div class="bootstrap-wysihtml5-insert-image-modal modal fade"><div class="modal-dialog"><div class="modal-content"><div class="modal-header"><a class="close" data-dismiss="modal">×</a><h4 class="modal-title"><i class="icon-image2"></i>Insert image</h4></div><div class="modal-body with-padding"><div class="form-group"><input type="text" value="http://" class="bootstrap-wysihtml5-insert-image-url form-control"></div></div><div class="modal-footer"><a href="#" class="btn btn-warning disabled" data-dismiss="modal">Cancel</a><a href="#" class="btn btn-primary disabled" data-dismiss="modal">Insert image</a></div></div></div></div><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="insertImage" title="Insert image" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-image2"></i></a></li><li><div class="btn-group"><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="undo" title="Undo" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-undo"></i></a><a class="btn btn-default btn-icon disabled" data-wysihtml5-command="redo" title="Redo" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-redo"></i></a></div></li><li><div class="btn-group"><a class="btn btn-success btn-icon wysihtml5-action-active" data-wysihtml5-action="change_view" title="Edit HTML" tabindex="-1" href="javascript:;" unselectable="on"><i class="icon-code"></i></a></div></li></ul><textarea name="post_desc" class="editor" placeholder="Enter text ..." style="display: inline-block;"></textarea><input type="hidden" name="_wysihtml5_mode" value="1"><input type="hidden" name="_wysihtml5_mode" value="1">
									</div>
					                <div class="form-actions text-right">
						                <button type="submit" class="btn btn-danger">Cancel</button>
										<button type="submit" class="btn btn-primary">Submit</button>
									</div>
						
				        		</div>
										
							</div>
							
							
					</form>
	        	</div>
	        </div>
							
						</div>
			      </form>
					
	        <!-- Footer -->
	        <div class="footer clearfix">
		        <div class="pull-left">&copy; 2013. Londinium Admin Template by <a href="http://themeforest.net/user/Kopyov">Eugene Kopyov</a></div>
	        	<div class="pull-right icons-group">
	        		<a href="#"><i class="icon-screen2"></i></a>
	        		<a href="#"><i class="icon-balance"></i></a>
	        		<a href="#"><i class="icon-cog3"></i></a>
	        	</div>
	        </div>
	        <!-- /footer -->


		</div>
		<!-- /page content -->


	</div>
	<!-- /page container -->

</body>
</html>