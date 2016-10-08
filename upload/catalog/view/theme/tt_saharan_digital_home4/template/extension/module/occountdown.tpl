<script type="text/javascript">
	if (typeof OC == 'undefined') OC = { };
	OC.Countdown = {
		TEXT_YEARS 		: '<?php echo $text_years ?>',
		TEXT_MONTHS 	: '<?php echo $text_months ?>',
		TEXT_WEEKS 		: '<?php echo $text_weeks ?>',
		TEXT_DAYS 		: '<?php echo $text_days ?>',
		TEXT_HOURS 		: '<?php echo $text_hours ?>',
		TEXT_MINUTES 	: '<?php echo $text_minutes ?>',
		TEXT_SECONDS 	: '<?php echo $text_seconds ?>'
	};
</script>
<script type="text/javascript" src="catalog/view/javascript/jquery.countdown.js"></script>
<div class="ttcountdown_module wow fadeInUp" data-wow-delay="100ms">
<div class="title-countdown">
	<h2>
		<span><?php echo $title; ?></span>
	</h2>
</div>
<div class="product-layout countdown-products">
		<div class="countdown-tab-content">
	<div class="countdown-product-inner">
    <?php foreach ($products as $product) : ?>
    <div class="timer-item">
		<div class="box-item item-inner">
			<div class="box-price col-lg-7 col-md-7 col-sm-7 col-xs-7">
				<?php if(strtotime($product['date_end'])) { ?>
					<div id="Countdown<?php echo $product['product_id']?>" class="box-timer"></div>
				<?php } ?>
				<div class="des-container">
					<div class="name">
							<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
					</div>
					<?php if (isset($product['rating'])) { ?>
							<div class="rating">
							<img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="" />
							</div>
						<?php } ?>
						<?php if ($product['orgprice']) { ?>
						<?php if (!$product['special']) { ?>
							<div class="price-box">
								<span class="regular-price">
									<span class="price"><?php echo $product['orgprice']; ?></span>
								</span>
							</div>
						<?php } else { ?>
							<div class="price-box">
								<p class="special-price"><?php echo $product['special']; ?></p>
								<p class="price-old"><?php echo $product['orgprice']; ?></p>
							</div>
						<?php } ?>
					<?php } ?>
					
				</div><!--des-container-->
				<div class="actions">
					<?php if($config_slide['f_show_addtocart']) { ?>
						<div class="cart">
							<button type="button" data-toggle="tooltip" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
						</div>
					<?php } ?>
					<div class="add-to-links">
						<div class="wishlist"><button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span></span></button></div>
						<div class="compare"><button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span></span></button></div>
					</div>
				</div>
			</div>
			<div class="product-image col-lg-5 col-md-5 col-sm-5 col-xs-5">
				<div class="images-container">
					<?php if($config_slide['f_show_label']): ?>
						<?php if ($product['special']) { ?>
							<div class="label-pro-sale"><?php echo $text_sale; ?></div>
						<?php } ?>
						<?php if ($product['is_new']){?>
							<div class="label-pro-new"><?php echo $text_new; ?></div>
						<?php } ?>
					<?php endif; ?>
					<div class="image">
						<a class="product-image" href="<?php echo $product['href']; ?>">
							<img class=" lazy"  src="image/catalog/loading.gif" data-original="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
							<?php if($product['rotator_image']): ?>
							<div class="img2"><img class=" lazy"  src="image/catalog/loading.gif" data-original="<?php echo $product['rotator_image']; ?>" alt="<?php echo $product['name']; ?>" /></div>
							<?php endif; ?>
						</a>
					</div>
				</div><!-- images-container -->
			</div>
		</div>
		<?php if(strtotime($product['date_end'])) { ?>
			<script type="text/javascript">

				$(function () {
					var austDay = new Date();
					austDay = new Date(austDay.getFullYear() + 1, 1 - 1, 26);
					$('#Countdown<?php echo $product['product_id'];?>').countdown({
						until: new Date(
							<?php echo date("Y",strtotime($product['date_end']))?>,
							<?php echo date("m",strtotime($product['date_end']))?> -1, 
							<?php echo date("d",strtotime($product['date_end']))?>,
							<?php echo date("H",strtotime($product['date_end']))?>,
							<?php echo date("i",strtotime($product['date_end']))?>, 
							<?php echo date("s",strtotime($product['date_end']))?>
							)
					});
					//$('#Countdown<?php echo $product['product_id'];?>').countdown('pause');
				});
			</script>
		<?php } ?>
		
    </div><!-- timer-item -->
    

    <?php endforeach;  ?>
	</div><!-- countdown-product-inner -->
	</div>
	</div>
</div>
<script type="text/javascript">
	$('.countdown-product-inner').owlCarousel({
		autoPlay : <?php if($config_slide['autoplay']) { echo 'true' ;} else { echo 'false';} ?>,
		items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 3;} ?>,
		itemsDesktop : [1199,1],
		itemsDesktopSmall : [991,1],
		itemsTablet: [700,1],
		itemsMobile : [400,1],
		slideSpeed : <?php if($config_slide['f_speed']) { echo $config_slide['f_speed'] ;} else { echo 2000;} ?>,
		paginationSpeed : 3000,
		navigation : <?php if($config_slide['f_show_nextback']) { echo 'true' ;} else { echo 'false';} ?>,
		stopOnHover : true,
		pagination : <?php if($config_slide['f_show_ctr']) { echo 'true' ;} else { echo 'false';} ?>,
		scrollPerPage:true,
		afterMove: function(){
			x = $( ".countdown-tab-content .owl-pagination .owl-page" ).index( $( ".countdown-tab-content .owl-pagination .active" ));
			var thumbinner = ".thumbinner"+x;
			$(".list-thumb .thumb li").removeClass('active');
			$(thumbinner).addClass('active');
		}
	});
	
	var owltimerslider = $(".countdown-product-inner").data('owlCarousel');
	function timerslider(x){
		owltimerslider.goTo(x)
	}
</script>