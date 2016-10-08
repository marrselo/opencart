<?php echo $content_block9; ?>
<div class="footer-top">
	<div class="container">
		<div class="row">
			<div class="f-col f-col-1 col-md-3 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
				<div class="footer-title2"><h3><?php echo $text_about_us; ?></h3></div>
				<div class="des-about"><?php echo $text_introduction; ?></div>
				<div class="follow-us"><?php echo $content_block6; ?></div>
			</div>
			<div class="f-col f-col-2 col-md-3 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
				<div class="footer-title2"><h3><?php echo $text_contact; ?></h3></div>
				<ul class="footer-content-contact">
					<li><span class="fa fa-map-marker"></span><span class="contact-content"><?php echo $address; ?></span></li>
					<li><span class="fa fa-phone"></span><span class="contact-content"><?php echo $telephone; ?></span></li>
					<li><span class="fa fa-envelope"></span><span class="contact-content"><?php echo $email; ?></span></li>
				</ul>
			</div>
			<div class="f-col f-col-2 col-md-3 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
				<?php echo $content_block7; ?>
			</div>
			<div class="f-col f-col-3 col-md-3 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
				<?php echo $content_block8; ?>
			</div>
		</div>
	</div>
</div>
<div class="footer">
	<div class="container">
		<div class="row">
			<div class="column col1 col-md-3 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
				<div class="footer-title title-group3"><h3><?php echo $text_account; ?></h3></div>
			   <ul class="footer-content toggle-footer">
				 <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				 <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				 <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
				 <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
				 <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
			   </ul>
			</div>
			<div class="column col2 col-md-3 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
			  <div class="footer-title title-group3"><h3><?php echo $text_extra; ?></h3></div>
			  <ul class="footer-content toggle-footer">
				 <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
				 <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
				 <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
				 <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
				 <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
			   </ul>
			</div>
			<div class="column col3 col-md-3 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
			   <div class="footer-title title-group3"><h3><?php echo $text_service; ?></h3>
				</div>
				<ul class="footer-content toggle-footer">
					 <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
					 <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
					 <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
					 <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
					 <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
				</ul>
			</div>
			<div class="column col-md-3 col-sm-6 col-xs-6 wow fadeInUp" data-wow-delay="100ms">
				<div class="footer-title title-group3"><h3><?php echo $text_information; ?></h3></div>
				<ul class="toggle-footer footer-content">
					<?php foreach ($informations as $information) { ?>
					<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
					<?php } ?>
					<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
				</ul>
			</div>
		</div>
	</div>
<div class="powered">
	<div class="container">
		<div class="right-powered wow fadeInUp" data-wow-delay="100ms">
			<a href="#" class="payment"><img alt="" src="image/catalog/payment.png"></a>
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