<?php echo $content_block9; ?>
<div class="footer-top">
	<div class="container">
		<div class="row">
			<div class="f-col f-col-1 col-md-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-delay="100ms">
				<div class="footer-title2"><h3><?php echo $text_about_us; ?></h3></div>
				<div class="footer_about_us">
				<div class="des-about-img"> <a href="#"><img alt="" src="image/catalog/about_us.jpg"></a> </div>
				<div class="des-about"><?php echo $text_introduction; ?></div>
				<?php echo $content_block6; ?>
				</div>
			</div>
			<div class="f-col f-col-2 col-md-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-delay="100ms">
				<div class="footer-title2"><h3><?php echo $text_facebook; ?></h3></div>
				<div class="block-facebook"><?php echo $content_block7; ?></div>
			</div>
			<div class="f-col f-col-3 col-md-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-delay="100ms">
				<?php echo $content_block8; ?>
			</div>
		</div>
	</div>
</div>
<div class="footer">
	<div class="container">
		<div class="row">
			<div class="column col5 col-md-3 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
				<div class="footer-title title-group3"><h3><?php echo $text_contact; ?></h3></div>
				<ul class="toggle-footer footer-content">
					<li><span class="address-footer icon-footer"><?php echo $text_address; ?></span><?php echo $address; ?></li>
					<li><span class="telephone-footer icon-footer"><?php echo $text_telephone; ?></span><?php echo $telephone; ?></li>
					<li><span class="email-footer icon-footer"><?php echo $text_email; ?></span><?php echo $email; ?></li>
					<li><span class="website-footer icon-footer"></span><?php echo $text_website; ?></li>
				</ul>
			</div>
			<div class="column col1 col-md-2 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
				<div class="footer-title title-group3"><h3><?php echo $text_account; ?></h3></div>
			   <ul class="footer-content toggle-footer">
				 <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				 <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				 <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
				 <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
			   </ul>
			</div>
			<div class="column col2 col-md-2 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
			  <div class="footer-title title-group3"><h3><?php echo $text_extra; ?></h3></div>
			  <ul class="footer-content toggle-footer">
				 <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
				 <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
				 <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
				 <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
			   </ul>
			</div>
			<div class="column col3 col-md-2 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
			   <div class="footer-title title-group3"><h3><?php echo $text_information; ?></h3>
				</div>
				<ul class="footer-content toggle-footer">
					<?php foreach ($informations as $information) { ?>
					<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
					<?php } ?>
				</ul>
			</div>
			<div class="column col4 col-md-3 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
				<div class="footer-title title-group3"><h3><?php echo $text_business_hours; ?></h3></div>
				<ul class="toggle-footer footer-content">
					 <li><?php echo $text_business_hours1; ?></li>
					 <li><?php echo $text_business_hours2; ?></li>
					 <li><?php echo $text_business_hours3; ?></li>
					 <li><a href="#" class="payment"><img alt="" src="image/catalog/payment1.png"></a></li>
			   </ul>
			</div>
		</div>
	</div>
</div>
<div class="powered powered-top"> 
	<ul>
		<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
		<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
		<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
	</ul>
</div>
<div class="powered">
	<div class="container">
		<div class="left-powered wow fadeInUp" data-wow-delay="100ms">
			<div> <?php echo $powered; ?></div>
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