<div id="blog_home" class="menu-recent title-group-parent wow fadeInUp" data-wow-delay="100ms">
		
	  <div class="blog-title title2">
		<h3>
			<?php echo $title; ?>
		</h3>
	  </div>
	<div class="row">
	<?php
			$count = 0;
			$rows = $slide['rows'];
			if(!$rows) { $rows = 1; }
		?>
	 <?php if ($articles) { ?>
      <div class="articles-container">
        <?php foreach ($articles as $article) { ?>
		  <?php  if($count % $rows == 0 ) { echo '<div class="row_items wow fadeInUp" data-wow-delay="'.$count.'00ms">'; } $count++; ?>
          <div class="articles-inner item-inner">
				<div class="articles-image"><img class=" lazy"  src="image/catalog/loading.gif" data-original="<?php echo $article['image']; ?>" alt=""/></div>
				<div class="articles-date">
				   <a class="articles-name" href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a>
				   <div class="date-blog">
						<?php echo $article['date_added']; ?><?php if($article['author'] != null && $article['author'] != ""): ?>
						<?php endif; ?>
					</div>
				   <div class="articles-intro"><?php echo $article['intro_text']; ?></div>
				   <!-- <div class="athor-blog"> <?php echo $article['author']; ?> </div> -->
				</div>
			</div>
		  <?php if($count % $rows == 0 || $count == count($articles)): ?>
	  		</div>
		 <?php endif; ?>
        <?php } ?>
      </div>
      <?php } ?>
	  
      <?php if (!$articles) { ?>
      <p class="no-product"><?php echo $text_empty; ?></p>
      <?php } ?>
	</div>
</div>
	 <script>
	 $(document).ready(function() { 
		  $(".articles-container").owlCarousel({
				autoPlay : <?php if($slide['auto']) { echo 'true' ;} else { echo 'false'; } ?>,
				items : <?php echo $slide['items'] ?>,
				itemsDesktop : [1199,1],
				itemsDesktopSmall : [991,3],
				itemsTablet: [767,2],
				itemsMobile : [400,1],
				slideSpeed : <?php echo $slide['speed']; ?>,
				paginationSpeed : <?php echo $slide['speed']; ?>,
				rewindSpeed : <?php echo $slide['speed']; ?>,
				navigation : <?php if($slide['navigation']) { echo 'true' ;} else { echo 'false'; } ?>,
				pagination : <?php if($slide['pagination']) { echo 'true' ;} else { echo 'false'; } ?>,
				stopOnHover : true
		  });
	 });
	 </script>
