		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	    <meta http-equiv="X-UA-Compatible" content="IE=9">
	    <meta name="generator" content="Joomla! - Open Source Content Management">
  		<link href="images/favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon">
	  	<link rel="stylesheet" type="text/css" href="css/menu.gkmenu.css">
	  	<link rel="stylesheet" type="text/css" href="css/meyer.css">
	  	<link rel="stylesheet" type="text/css" href="css/layout.css">
	  	<link rel="stylesheet" type="text/css" href="css/template.css">
	  	<link rel="stylesheet" type="text/css" href="css/menu.css">
	  	<link rel="stylesheet" type="text/css" href="css/gk.stuff.css">
	  	<link rel="stylesheet" type="text/css" href="css/style3.css">
	  	<link rel="stylesheet" type="text/css" href="css/style.css">
  		<link rel="stylesheet" type="text/css" href="css/style2.css">
		<link rel="stylesheet" type="text/css" href="css/hyjyweb.css">
		<!--[if IE 9.0]><link rel="stylesheet" href="css/ie9.css" type="text/css" /><![endif]-->
		<!--[if IE 8.0]><link rel="stylesheet" href="css/ie8.css" type="text/css" /><![endif]-->
		<!--[if IE 7.0]><link rel="stylesheet" href="css/ie7.css" type="text/css" /><![endif]-->
		<script src="js/mootools-core.js" type="text/javascript"></script>
		<script src="js/core.js" type="text/javascript"></script>
		<script src="js/caption.js" type="text/javascript"></script>
		<script src="js/mootools-more.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
		
		<script src="slides/js/jquery.slideBox.min.js" type="text/javascript"></script>
		<link rel="stylesheet" type="text/css" href="slides/css/jquery.slideBox.css">
		
		<script type="text/javascript">
			window.addEvent('load', function() {
				new JCaption('img.caption');
			});
						
			jQuery.noConflict();  
			jQuery(document).ready(function(){
				jQuery('#work li').hover(function(){
					jQuery(this).find('.ilink').animate({paddingTop:"-120px"});
					jQuery(this).find('.plinkInfo').fadeIn(1000);
				},	function(){
					jQuery(this).find('.ilink').fadeIn(1000);
					jQuery(this).find('.plinkInfo').fadeOut(1000);
				});
				
				jQuery(".hidetion .miun_pice").hover(function(){
					jQuery(this).stop().animate({"opacity":"0.5"})
				},function(){
					jQuery(this).stop().animate({"opacity":"1.0"})
				});
			});
		</script>