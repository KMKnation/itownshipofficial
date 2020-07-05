<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $meta_title; ?></title>
<meta name=description content="<?php echo $meta_description; ?>">
<meta name=keywords content="<?php echo $meta_keywords; ?>">

<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/shortcode.css" rel="stylesheet" type="text/css" />
<link href="css/responsive.css" rel="stylesheet" type="text/css" />
<link href="skins/orange/orange.css" rel="stylesheet" type="text/css" id="color_skin_css" />

<!-- Icon Font
================================================== -->
<link href="assets/css/font-awesome.css" rel="stylesheet" type="text/css" />

<!--[if lt IE 9]>
	<link rel="stylesheet" type="text/css" href="css/ie8-and-down.css" />
<![endif]-->

<!--[if IE 7]>
	<link rel="stylesheet" type="text/css" href="css/ie7.css">
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome-ie7.min.css">
<![endif]-->

<link rel="stylesheet" href="js/layerslider/layerslider.css" type="text/css" />

<!--[if lt IE 9]>
	<script src="js/layerslider/html5.js"></script>
<![endif]-->

<!-- ******** Google Fonts ******** -->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Economica' rel='stylesheet' type='text/css' />

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu/jacked.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu/ddsmoothmenu.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu/jacked.nav.js"></script>
<link href="js/ddsmoothmenu/ddsmoothmenu.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/hovereffect/jquery-hover-effect.js"></script>
<link href="js/hovereffect/hover-style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/isotope/jquery.isotope.min.js"></script>
<link href="js/isotope/isotope-style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/prettyphoto/jquery.prettyPhoto.js"></script>
<link href="js/prettyphoto/prettyPhoto.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery.tabs.min.js"></script>
<script type="text/javascript" src="js/jquery.minitwitter.js"></script>

<script type="text/javascript" src="js/jquery.tinynav.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
</head>

<body>
	<!-- wrapper Div starts here -->
	<div class="wrapper">
    	<!-- header Div starts here -->
        <div id="header">
        	<!-- Top-strip starts here -->
            <div class="top-strip custom-skin">
            	<div class="container">
                    <ul class="social-media">
                        <li><a href="#">
                            <img src="images/sociable/hover/facebook.png" alt=""  title="" />
                            <img src="images/sociable/facebook.png"  alt=""  title="" />
                        </a></li>
                        <li><a href="#">
                            <img src="images/sociable/hover/google.png"  alt=""  title="" />
                            <img src="images/sociable/google.png" alt="" title="" />
                        </a></li>
                        <li><a href="#">
                            <img src="images/sociable/hover/linkedin.png" alt="" title="" />
                            <img src="images/sociable/linkedin.png" alt="" title="" />
                        </a></li>
                        <li><a href="#">
                            <img src="images/sociable/hover/twitter.png" alt="" title="" />
                            <img src="images/sociable/twitter.png" alt="" title="" />
                        </a></li>
                        <li><a href="#">
                            <img src="images/sociable/hover/yahoo.png" alt="" title="" />
                            <img src="images/sociable/yahoo.png" alt="" title="" />
                        </a></li>
                        <li><a href="#">
                            <img src="images/sociable/hover/youtube.png" alt="" title="" />
                            <img src="images/sociable/youtube.png" alt="" title="" />
                        </a></li>
                    </ul>
                    <div class="float-right">
                        <form action="#" id="searchform">
                            <fieldset>
                                <input type="text" title="Enter text to search" value="Enter text to search" class="Textbox" name="s" id="s" />
                                <input type="submit" value="" class="button" name="submit" />
							</fieldset>	
	                    </form>
					</div>
                </div>
            </div>
            <!-- Top-strip ends here -->
			<div class="menu-top-line"></div>
            <!-- menu-wrapper starts here -->
            <div class="main-menu-container">
            	<div class="container">
					<div class="logo">
                    	<a href="index.html">Elegant Business</a>
                    </div>
                    <div id="smoothmenu" class="ddsmoothmenu float-right">
                        <ul id="main-menu">
                            <li class="menu-item<?php echo $home_active; ?>"><a href="index.php">Home</a></li>
                            <li class="menu-item<?php echo $about_active; ?>"><a href="about-us.php">About</a></li>
                            <li class="menu-item<?php echo $product_active; ?>"><a href="#">Products</a>
                                <ul class="sub-menu">
                                    <li class="menu-item"><a href="blog-type-I.html">Blog Type - I</a></li>
                                    <li class="menu-item"><a href="blog-type-II.html">Blog Type - II</a></li>
                                    <li class="menu-item"><a href="blog-type-III.html">Blog Type - III</a></li>
                                    <li class="menu-item"><a href="blog-sidebar-left.html">Blog with Left Sidebar</a></li>
                                    <li class="menu-item"><a href="blog-sidebar-right.html">Blog with Right Sidebar</a></li>
                                    <li class="menu-item"><a href="blog-fullwidth.html">Blog Fullwidth</a></li>
                                    <li class="menu-item"><a href="blog-details.html">Blog Details</a></li>                                        
                                </ul>
                            </li>
                            <li class="menu-item<?php echo $process_active; ?>"><a href="process.php">Process</a></li></li>
                            <li class="menu-item<?php echo $contact_active; ?>"><a href="contact-us.php">Contact Us</a></li>
                        </ul>
                    </div>
                    <span id="submenuArrow"><span class="arrow-up"></span></span>
                </div>
            </div>
            <!-- menu-wrapper ends here -->
		</div>
        <!-- header Div Ends here -->