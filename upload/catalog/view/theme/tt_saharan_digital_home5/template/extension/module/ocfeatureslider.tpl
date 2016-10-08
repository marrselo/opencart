<div class="ocfeatureslider title-parent3">
	<div class="title3">
        <h3>
			<?php if ($title) { ?>
			<?php echo $title; ?>
			<?php } else { ?>
			<?php echo $heading_title; ?>
			<?php } ?>
		</h3>
    </div>
  <?php
	  $count = 0;
	  $rows = $config_slide['f_rows'];
	  if(!$rows) { $rows=1; }
   ?>
   <div class="row">
  <div class="featured-product-slider">
    <?php foreach ($products as $product) { ?>
    <?php  if($count % $rows == 0 ) { echo '<div class="row_items wow fadeInUp" data-wow-delay="'.$count.'00ms">'; } $count++; ?>
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
  <?php if($count % $rows == 0 || $count == count($products)): ?>
</div>
<?php endif; ?>
<?php } ?>
</div>
</div>
</div>
<script type="text/javascript">
  $(document).ready(function() {
    $(".featured-product-slider").owlCarousel({
      autoPlay: <?php if($config_slide['autoplay']) { echo 'true' ;} else { echo 'false'; } ?>,
    items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 3; } ?>,
    slideSpeed : <?php if($config_slide['f_speed']) { echo $config_slide['f_speed']; } else { echo 200;} ?>,
    navigation : <?php if($config_slide['f_show_nextback']) { echo 'true' ;} else { echo 'false'; } ?>,
    paginationNumbers : true,
            pagination : <?php if($config_slide['f_show_ctr']) { echo 'true' ;} else { echo 'false';} ?>,
    stopOnHover : false,
            itemsDesktop : [1199,4],
            itemsDesktopSmall : [991,3],
            itemsTablet: [767,2],
            itemsMobile : [400,1],
  });
  });
</script>