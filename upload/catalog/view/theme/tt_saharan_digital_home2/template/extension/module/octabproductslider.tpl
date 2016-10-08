<?php $tab_effect = 'wiggle'; ?>
<script type="text/javascript">
$(document).ready(function() {

	$(".tab_content").hide();
	$(".tab_content:first").show(); 

	$("ul.tabs li").click(function() {
		$("ul.tabs li").removeClass("active");
		$(this).addClass("active");
		$(".tab_content").hide();
		$(".tab_content").removeClass("animate1 <?php echo $tab_effect;?>");
		var activeTab = $(this).attr("rel"); 
		$("#"+activeTab) .addClass("animate1 <?php echo $tab_effect;?>");
		$("#"+activeTab).fadeIn(); 
	});
});

</script>
<div class="product-tabs-container-slider title-parent3">
	<div class="title-product-tabs">
			<ul class="tabs"> 
			<?php $count=0; ?>
			<?php foreach($productTabslider as $productTab ){ ?>
				<li rel="tab_<?php echo $productTab['id']; ?>"  >
					<a class="tab_<?php echo $productTab['id']; ?>"><?php echo $productTab['name']; ?></a>
				</li>
					<?php $count= $count+1; ?>
			<?php } ?>	
			</ul>
	</div>
	<div class="tab_container">
		<?php foreach($productTabslider as $productTab){ ?>
			<div id="tab_<?php echo $productTab['id']; ?>" class="tab_content">
				<div class="row">
				<div class="owl-demo-tabproduct">
                <?php if($productTab['productInfo']): ?>
                    <?php
                        $count = 0;
                        $rows = $config_slide['f_rows'];
                        if(!$rows) { $rows=1; }
                    ?>
                    <?php foreach ($productTab['productInfo'] as $product) { ?>
                        <?php  if($count % $rows == 0 ) { echo '<div class="row_items">'; } $count++; ?>
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
											<button type="button" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
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
									<?php if (isset($product['rating'])) { ?>
										<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="" /></div>
									<?php } ?>
									<?php if($config_slide['f_show_des']){ ?>
									<div class="des"><?php echo $product['description']; ?></div>
									<?php } ?>
									<?php if($config_slide['f_show_price']){ ?>
										<?php if ($product['price']) { ?>
										<div class="price-box <?php if ($product['special']) { ?>special-price<?php } ?>">
										  <?php if (!$product['special']) { ?>
										  <span class="price"><?php echo $product['price']; ?></span>
										  <?php } else { ?>
										  <span class="new-price"><?php echo $product['special']; ?></span>
										  <span class="old-price"><?php echo $product['price']; ?></span>
										  <?php } ?>
										  <?php if ($product['tax']) { ?>
										  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
										  <?php } ?>
										</div> <?php } ?>
										<?php } ?>
								  </div>
								</div>
							</div>
                        <?php if($count % $rows == 0 || $count == count($productTab['productInfo'])) { echo '</div>'; } ?>
                    <?php } ?>
                <?php else: ?>
                    <p><?php echo $productTab['text_empty']; ?></p>
                <?php endif; ?>
				</div>
				</div><!-- .row -->
			</div>

		<?php } ?>
	</div><!-- .tab_container -->
</div>
<script type="text/javascript">
$(document).ready(function() { 
 $(".product-tabs-container-slider .tabs li:first").addClass("active");
  $(".owl-demo-tabproduct").owlCarousel({
		items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 3;} ?>,
		autoPlay : <?php if($config_slide['autoplay']) { echo 'true' ;} else { echo 'false';} ?>,
		slideSpeed: <?php if($config_slide['f_speed']) { echo $config_slide['f_speed'] ;} else { echo 3000;} ?>,
		navigation : <?php if($config_slide['f_show_nextback']) { echo 'true' ;} else { echo 'false';} ?>,
		paginationNumbers : true,
		pagination : <?php if($config_slide['f_show_ctr']) { echo 'true' ;} else { echo 'false';} ?>,
		stopOnHover : false,
		itemsDesktop : [1199,4], 
		itemsDesktopSmall : [980,3], 
		itemsTablet: [768,2], 
		itemsMobile : [479,1]
  });
 
});
</script>



