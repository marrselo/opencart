<?php $tab_effect = 'wiggle'; ?>
<script type="text/javascript">
$(document).ready(function() {
	$(".<?php echo $cateogry_alias;?> .tab_content_category").hide();
	$(".<?php echo $cateogry_alias;?> .tab_content_category:first").show(); 
    $(".<?php echo $cateogry_alias;?> ul.tabs-categorys li:first").addClass("active");
	$(".<?php echo $cateogry_alias;?> ul.tabs-categorys li").click(function() {
		$(".<?php echo $cateogry_alias;?> ul.tabs-categorys li").removeClass("active");
		$(this).addClass("active");
		$(".<?php echo $cateogry_alias;?> .tab_content_category").hide();
		$(".<?php echo $cateogry_alias;?> .tab_content_category").removeClass("animate1 <?php echo $tab_effect;?>");
		var activeTab = $(this).attr("rel"); 
		$("#"+activeTab) .addClass("animate1 <?php echo $tab_effect;?>");
		$("#"+activeTab).fadeIn(); 
	});
});
</script>
<div class="product-tabs-category-container-slider special-button-owl title-group-parent <?php echo $cateogry_alias;?>">
	
		<ul class="tabs-categorys"> 
    	<?php $count=0; ?>
    	<?php foreach($category_products as $cate_id => $products ){ ?>
    		<li rel="tab_cate<?php echo $cate_id; ?>"  >
				<?php echo $array_cates[$cate_id]['name']; ?>
				<?php if($array_cates[$cate_id]['thumbnail_image']): ?>
					<img class="thumb-img" src="<?php echo $array_cates[$cate_id]['thumbnail_image']; ?>" alt="<?php echo $array_cates[$cate_id]['name']; ?>" />
				<?php endif; ?>
    		</li>
    			<?php $count= $count+1; ?>
    	<?php } ?>	
    	</ul>
		<div class="tab_container_category"> 
		<div class="tab-title title-group">
			<h2><?php echo $config_slide['title']; ?></h2>
		</div>
		<?php foreach($category_products as $cate_id => $products ){ ?>
			<div id="tab_cate<?php echo $cate_id; ?>" class="tab_content_category">
				<?php if($products): ?>
				<ul class="productTabContent owl-demo-tabcate">
				<?php 
					$count = 0; 
					$countproduct = count($products);
					$rows = $config_slide['f_rows']; 
					if(!$rows) {$rows=1;}
					
				?>
				<?php foreach ($products as $product){ ?>
							<?php if($count++ % $rows ==0){  echo  "<li class='row_item'><ul>"; } ?>
						<li class="item_product">
						<div class="product-thumb transition item-inner">
						  <div class="image">
							<?php if($config_slide['tab_cate_show_label']): ?>
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
								<?php if (isset($product['rating'])) { ?>
									<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="" /></div>
								<?php } ?>
								<div class="cart">
									<?php if($config_slide['tab_cate_show_addtocart']) { ?>
									<button type="button" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
									<?php } ?>
									<div class="add-to-links">
										<div class="wishlist"><button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span></span></button></div>
										<div class="compare"><button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span></span></button></div>
									</div>
								</div>
							</div>
						  </div>
						  <div class="caption">
							<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
							<?php if($config_slide['tab_cate_show_des']){ ?>
							<div class="des"><?php echo $product['description']; ?></div>
							<?php } ?>
							<?php if($config_slide['tab_cate_show_price']){ ?>
								<?php if ($product['price']) { ?>
								<div class="price-box <?php if ($product['special']) { ?>special-price<?php } ?>">
								  <?php if (!$product['special']) { ?>
								  <span class="price"><?php echo $product['price']; ?></span>
								  <?php } else { ?>
								  <span class="new-price"><?php echo $product['special']; ?></span>
								  <span class="old-price"><?php echo $product['price']; ?></span>
								  <?php } ?>
								</div> <?php } ?>
								<?php } ?>
						  </div>
						</div>
					</li>
						  	<?php if(($count % $rows == 0) || ($count == $countproduct)){  echo  "</ul></li>"; } ?>
				<?php } ?>
				
				</ul>
				<?php else: ?>
					<p><?php echo $text_empty; ?></p>
				<?php endif; ?>
			</div>

		<?php } ?>
	
	</div> <!-- .tab_container_category -->
</div>
<script type="text/javascript">
$(document).ready(function() { 
  $(".<?php echo $cateogry_alias;?> .owl-demo-tabcate").owlCarousel({
	autoPlay: <?php if($config_slide['tab_cate_autoplay']) { echo 'true' ;} else { echo 'false';} ?>,
	items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 3;} ?>,
	slideSpeed : <?php if($config_slide['tab_cate_speed_slide']) { echo $config_slide['tab_cate_speed_slide'] ;} else { echo 200;} ?>,
	navigation : <?php if($config_slide['tab_cate_show_nextback']) { echo 'true' ;} else { echo 'false';} ?>,
	paginationNumbers : true,
	pagination : <?php if($config_slide['tab_cate_show_ctr']) { echo 'true' ;} else { echo 'false';} ?>,
	stopOnHover : false,
	itemsDesktop : [1199,3],
	itemsDesktopSmall : [991,2],
	itemsTablet: [700,2],
	itemsMobile : [400,1],
  });
});
</script>