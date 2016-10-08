<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1 ,maximum-scale=1, user-scalable=no">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js"
type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/jquery-ui.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery.lazyload.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/wow.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/jquery/css/jquery-ui.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/tt_saharan_accessories_home4/stylesheet/opentheme/oclayerednavigation/css/oclayerednavigation.css"
rel="stylesheet">
<link href="catalog/view/theme/tt_saharan_accessories_home4/stylesheet/opentheme/ocsearchcategory/css/ocsearchcategory.css"
rel="stylesheet">
<script src="catalog/view/javascript/opentheme/oclayerednavigation/oclayerednavigation.js"
type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href='https://fonts.googleapis.com/css?family=Lato:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!-- font-family: 'Lato', sans-serif; -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,,600,700,700italic' rel='stylesheet' type='text/css'>
<!-- font-family: 'Open Sans', sans-serif; -->
<link href='https://fonts.googleapis.com/css?family=Nunito:400,700' rel='stylesheet' type='text/css'>
<!-- font-family: 'Nunito', sans-serif; -->
<link href='https://fonts.googleapis.com/css?family=Raleway:400,400italic,500,500italic' rel='stylesheet' type='text/css'>
<!-- font-family: 'Raleway', sans-serif; -->
<link href='https://fonts.googleapis.com/css?family=Roboto:400,400italic,700,900,900italic' rel='stylesheet' type='text/css'>
<link href="catalog/view/theme/tt_saharan_accessories_home4/stylesheet/stylesheet.css" rel="stylesheet" type="text/css">
<link href="catalog/view/theme/tt_saharan_accessories_home4/stylesheet/animate.css" rel="stylesheet" type="text/css">
<link href="catalog/view/theme/tt_saharan_accessories_home4/stylesheet/opentheme/hozmegamenu/css/custommenu.css" rel="stylesheet" type="text/css">
<link href="catalog/view/theme/tt_saharan_accessories_home4/stylesheet/opentheme/vermegamenu/css/ocvergamenu.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/tt_saharan_accessories_home4/stylesheet/opentheme/ocquickview/css/ocquickview.css">
<script src="catalog/view/javascript/opentheme/ocquickview/ocquickview.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/owlcarousel/owl.carousel.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_saharan_accessories_home4/stylesheet/opentheme/css/owl.carousel.css" rel="stylesheet">
<script src="catalog/view/javascript/jquery/elevatezoom/jquery.elevatezoom.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/ocslideshow/jquery.nivo.slider.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_saharan_accessories_home4/stylesheet/opentheme/ocajaxlogin/css/ocajaxlogin.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<script type="text/javascript">
    $(document).ready(function() {
        $("*").find("a[href='"+window.location.href+"']").each(function(){
            $(this).addClass("current");
		}) ;
		
		
});
$(document).ready(function() {
	var current_page = window.location.href;
	if(current_page.match(/ocbestseller/)){
		$('a[href$="ocbestseller"]').addClass("current");
	};
	if(current_page.match(/ocnewproduct/)){
		$('a[href$="ocnewproduct"]').addClass("current");
	};
	if(current_page.match(/contact/)){
		$('a[href$="contact"]').addClass("current");
	};
	if(current_page.match(/blog/)){
		$('a[href$="blog"]').addClass("current");
	};
});
</script>
</head>
<body class="<?php echo $class; ?>">
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.6";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<header>

<div class="header">
	<div class="top-header">
			<div class="container">
				<div class="row">
					<div class="col1 col-lg-6 col-md-6 col-sm-4 col-xs-4">
						<div class="box-language-currency">
							<div class="language"><?php echo $language; ?></div>
							<div class="currency"><?php echo $currency; ?></div>
						</div>
					</div>
					<div class="col2 col-lg-6 col-md-6 col-sm-8 col-xs-8">
						<div class="top-link">
							<ul class="ul-account">
								<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
								<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
								<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
								<?php if ($logged) { ?>
								<li><a id="a-logout-link" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
								<?php } else { ?>
								<li><a id="a-login-link" href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
								<?php } ?>
							</ul>
						</div>
					</div>
				</div>
			</div>
	</div>
	<div class="bottom-header">
		<div class="container">
			<div class="row">
				<div id="logo" class="col-md-4 col-sm-12 col-xs-12">
					<div>
					<?php if ($logo) { ?>
					  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"/></a>
					  <?php } else { ?>
					  <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
					  <?php } ?>
					</div>
				</div>
				<div class="col-md-5 col-sm-12 col-xs-12">
					<?php echo $content_block4; ?>
				</div>
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div class="search-category">
						<?php echo $content_block; ?>
					</div>
				</div>
				<div class="top-cart-parent">
					<div class="top-cart">
						<?php echo $cart; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="homemenu">
		<div class="container">
			<?php echo $content_block2; ?>
		</div>
	</div>
</div>
</header>

<script type="text/javascript">
	responsiveResize();
	$(window).resize(responsiveResize);
	function responsiveResize()
	{
	 if ($(window).width() > 991){		 
		stickymenu(203);	  
	 }else{
		stickymenu(999999999); 
	 }
	}
	function stickymenu(number){
		$(window).scroll(function () {
		if ($(this).scrollTop() > number) {
		   $('.homemenu').addClass("fix-nav");
		} else {
		   $('.homemenu').removeClass("fix-nav");
		}
		 });
	}
</script>