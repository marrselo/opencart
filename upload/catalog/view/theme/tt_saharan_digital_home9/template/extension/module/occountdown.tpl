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
<div class="ttcountdown_module quick-view-container wow fadeInUp" data-wow-delay="100ms">
<div class="title">
	<h3>
		<span><?php echo $title; ?></span>
	</h3>
</div>
<?php
  $count = 0;
  $rows = $config_slide['f_rows'];
  if(!$rows) { $rows=1; }
?>
<div class="row">
<div class="product-layout countdown-products">
		<div class="countdown-tab-content">
	<div class="countdown-product-inner">
    <?php foreach ($products as $product) : ?>
	<?php  if($count % $rows == 0 ) { echo '<div class="row_items wow fadeInUp" data-wow-delay="'.$count.'00ms">'; } $count++; ?>
    <div class="timer-item">
		<div class="item_product">
		<div class="product-thumb transition item-inner">
		  <div class="image">
			<?php if($config_slide['f_show_label']): ?>
				<?php if ($product['special']) { ?>
					<div class="label-pro-sale"><?php echo $text_sale; ?></div>
				<?php } ?>
				<?php if ($product['is_new']){?>
					<div class="label-pro-new"><?php echo $text_new; ?></div>
				<?php } ?>
			<?php endif; ?>
			<div class="img-other">
			  <a href="<?php echo $product['href']; ?>">
				<img class=" lazy"  src="image/catalog/loading.gif" data-original="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"/>
				<?php if($product['rotator_image']): ?>
				<div class="img2"><img class=" lazy"  src="image/catalog/loading.gif" data-original="<?php echo $product['rotator_image']; ?>" alt="<?php echo $product['name']; ?>" /></div>
				<?php endif; ?>
			  </a>
			</div>
			
			<div class="actions">
				<div class="cart">
					<?php if($config_slide['f_show_addtocart']) { ?>
					<button type="button" data-toggle="tooltip" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
					<?php } ?>
				</div>
				<div class="add-to-links">
					<div class="wishlist"><button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span></span></button></div>
					<div class="compare"><button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span></span></button></div>
				</div>
			</div>
		  </div>
		  <div class="caption">
			<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
			<?php if ($product['orgprice']) { ?>
					<?php if (!$product['special']) { ?>
						<div class="price-box">
							<span class="price"><?php echo $product['orgprice']; ?></span>
						</div>
					<?php } else { ?>
						<div class="price-box">
							<span class="old-price"><?php echo $product['orgprice']; ?></span>
							<span class="new-price"><?php echo $product['special']; ?></span>
						</div>
					<?php } ?>
				<?php } ?>
				<?php if (isset($product['rating'])) { ?>
				<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="" /></div>
				<?php } ?>
				<?php if(strtotime($product['date_end'])) { ?>
					<div id="Countdown<?php echo $product['product_id']?>" class="box-timer"></div>
				<?php } ?>
		  </div>
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
	<?php if($count % $rows == 0 || $count == count($products)): ?>
	</div>
	<?php endif; ?>
    

    <?php endforeach;  ?>
	</div><!-- countdown-product-inner -->
	</div>
	</div>
	</div>
</div>
<script type="text/javascript">
	$('.countdown-product-inner').owlCarousel({
		autoPlay : <?php if($config_slide['autoplay']) { echo 'true' ;} else { echo 'false';} ?>,
		items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 3;} ?>,
		itemsDesktop : [1199,1],
		itemsDesktopSmall : [991,3],
		itemsTablet: [767,2],
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