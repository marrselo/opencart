<div class="testimonial-container">
	<div class="title">
		<h3>
			<?php echo $title; ?>
		</h3>
	</div>
		<ul id="slides">
			<?php foreach ($testimonials as $testimonial) { ?>
			<?php if ($testimonial['content']) { ?>
			<li class="item-testimonials">
				<div class="testimonial-images">
					<?php   if($testimonial['image'] != null) { ?>
					<img class=" lazy"  src="image/catalog/loading.gif" data-original="<?php echo $testimonial['image'];?>" alt="" />
					<?php } ?>
					</div>
				<div class="box-testimonial">
					<div class="testimonial-std"><a href="<?php echo $more; ?>"><?php echo substr($testimonial['content'],0,200)."..."; ?></a></div>
					<div class="testimonial-name"><?php echo $testimonial['customer_name']; ?></div>
				</div>
			</li>
			<?php } ?>
			<?php } ?>
		</ul>
	</div>
<script type="text/javascript">
    $("#slides").owlCarousel({
		autoPlay : <?php if($slide['auto']) { echo 'true' ;} else { echo 'false'; } ?>,
		items : <?php echo $slide['items'] ?>,
		itemsDesktop : [1199,1],
		itemsDesktopSmall : [991,2],
		itemsTablet: [768,1],
		itemsMobile : [479,1],
		slideSpeed : <?php echo $slide['speed']; ?>,
		paginationSpeed : <?php echo $slide['speed']; ?>,
		rewindSpeed : <?php echo $slide['speed']; ?>,
		navigation : <?php if($slide['navigation']) { echo 'true' ;} else { echo 'false'; } ?>,
		pagination : <?php if($slide['pagination']) { echo 'true' ;} else { echo 'false'; } ?>
    });
</script>