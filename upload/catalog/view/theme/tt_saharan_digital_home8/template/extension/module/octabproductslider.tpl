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
<div class="product-tabs-container-slider title-group-box wow fadeInUp" data-wow-delay="100ms">
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
                            <div class="product-thumb transition item-inner wow fadeInUp" data-wow-delay="'.$count.'00ms">
					<div class="image">
						<div class="img-other">
							<a class="product-image" href="<?php echo $product['href']; ?>">
								<img class=" lazy"  src="image/catalog/loading.gif" data-original="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
								<?php if($product['rotator_image']): ?>
								<div class="img2"><img class=" lazy"  src="image/catalog/loading.gif" data-original="<?php echo $product['rotator_image']; ?>" alt="<?php echo $product['name']; ?>" /></div>
								<?php endif; ?>
							</a>
						</div>
					</div>
					<div class="box-view-actions">
					  <div class="box-view">
						<div class="name">
							<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
						</div>
						<?php if($config_slide['f_show_des']){ ?>
								<div class="des"><?php echo $product['description']; ?></div>
						<?php } ?>
						<?php if($config_slide['f_show_price']){ ?>
						<?php if ($product['price']) { ?>
						<div class="price-box <?php if ($product['special']) { ?>special-price<?php } ?>">
						  <?php if (!$product['special']) { ?>
						  <span class="price"><?php echo $product['price']; ?></span>
						  <?php } else { ?>
						  <span class="old-price"><?php echo $product['price']; ?></span>
						  <span class="new-price"><?php echo $product['special']; ?></span>
						  <?php } ?>
						  <?php if ($product['tax']) { ?>
						  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
						  <?php } ?>
						</div> <?php } ?>
						<?php } ?>
						<?php if (isset($product['rating'])) { ?>
							<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="" /></div>
						<?php } ?>
					  </div> <!-- caption -->
				  </div> <!-- box-content -->
				</div><!-- product-thumb transition-->
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
		itemsDesktop : [1199,1], 
		itemsDesktopSmall : [980,3],
		itemsTablet: [768,2], 
		itemsMobile : [479,1]
  });
 
});
</script>



