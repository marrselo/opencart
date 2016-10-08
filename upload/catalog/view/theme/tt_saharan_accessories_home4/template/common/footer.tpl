<?php echo $content_block9; ?>
<div class="footer footer-top">
	<div class="container">
		<div class="row">
			<div class="footer-home">
				<a href="#"></a>
			</div>
		</div>
	</div>
</div>
<div class="footer footer-bottom">
	<div class="container">
		<div class="row">
			<div class="f-col f-col-1 col-md-3 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
				<div class="footer-title title-group3"><h3><?php echo $text_information; ?></h3>
				</div>
				<ul class="footer-content toggle-footer">
					<?php foreach ($informations as $information) { ?>
					<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
					<?php } ?>
					<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
				</ul>
			</div>
			<div class="f-col f-col-2 col-md-3 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
			    <div class="footer-title title-group3"><h3><?php echo $text_service; ?></h3></div>
				<ul class="toggle-footer footer-content">
					 <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
					 <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
					 <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
					 <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
					 <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
			   </ul>
			</div>
			<div class="f-col f-col-3 col-md-3 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
				<?php echo $content_block7; ?>
			</div>
			<div class="f-col f-col-4 col-md-3 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
				<?php echo $content_block8; ?>
				<div class="box-follow">
					<div class="footer-title title-group3"><h3><?php echo $text_follow_title; ?></h3></div>
					<div class="toggle-footer">
					<?php echo $content_block6; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="powered">
			<div class="right-powered wow fadeInUp" data-wow-delay="100ms">
				<a href="#" class="payment"><img alt="" src="image/catalog/payment2.png"></a>
			</div>
			<div class="left-powered wow fadeInUp" data-wow-delay="100ms">
				<div> <?php echo $powered; ?></div>
			</div>
		</div>
	</div>
</div>
<div id="back-top" class="hidden-phone" style="display: block;"> </div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//--> 

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
<script type="text/javascript">
	$(document).ready(function(){

	 // hide #back-top first
	 $("#back-top").hide();
	 
	 // fade in #back-top
	 $(function () {
	  $(window).scroll(function () {
	   if ($(this).scrollTop() > 100) {
		$('#back-top').fadeIn();
	   } else {
		$('#back-top').fadeOut();
	   }
	  });
	  // scroll body to 0px on click
	  $('#back-top').click(function () {
	   $('body,html').animate({
		scrollTop: 0
	   }, 800);
	   return false;
	  });
	 });

	});
</script>
<script>
 new WOW().init();

</script>
</body></html>