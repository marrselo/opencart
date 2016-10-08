<div class="banner7">
	<div class= "oc-banner7-container">
		<div class="flexslider oc-nivoslider">
			<div class="oc-loading"></div>
			<div id="oc-inivoslider" class="slides">

				<?php
					$slides = $ocslideshows;
					$config = $slide_setting[0];

					$i = 1;
					foreach($slides as $s) {

				?>
				<?php if ( $s['link'] ) { ?>
					<a href="<?php echo $s['link']?> " style="cursor:pointer;">
						<img style="display: none; cursor:pointer;" src="<?php echo $s['image']; ?>" alt="" title="#banner7-caption<?php echo $i; ?>"  />
					</a>
					<?php } else { ?>
					<img style="display: none;" src="<?php echo $s['image']; ?>" alt="" title="#banner7-caption<?php echo $i; ?>"  />
				<?php } ?>
				<?php
					$i ++;
			        }
				?>
			</div>

			<?php
	$i = 1;
	foreach($slides as $s) {
		if($s['type']==1){
	?>
		<div id="banner7-caption<?php echo $i; ?>" class="banner7-caption nivo-html-caption nivo-caption">
			<div class="timeloading timeloading1" style="animation: <?php echo $config['delay'].'ms';?> ease-in-out 0s normal none 1 running timeloading;"></div>
			<div class="banner7-content slider-1">
			<div class="container">
			<?php if($s['title']) { ?>
				<div class="text-content">
					<?php if($s['title']) { ?>
						<h1 class="title1"><span><?php echo $s['title']; ?></span></h1>
					<?php } ?>
					<?php if($s['sub_title']) { ?>
						<h2 class="sub-title"><span><?php echo $s['sub_title']; ?></span></h2>
					<?php } ?>
					<?php if($s['description']) { ?>
					<div class="banner7-des">
						<span><?php echo $s['description']; ?></span>
					</div>
					<?php } ?>
					<?php if( $s['link'] ) { ?>
						<div class="banner7-readmore">
							<a href="<?php echo $s['link']?>" title="<?php echo 'shopping now' ?>"><?php echo 'shopping now'; ?></a>	
						</div>
					<?php } ?>
				</div>
			<?php } ?>
				<!-- <?php if($s['small_image']) { ?>
					<img class="img1" src="<?php echo $s['small_image']; ?>" alt="" title="#banner7-caption<?php echo $i; ?>"  />
				<?php } ?> -->
			</div>
			</div>
			
		</div>
	<?php
		}
		if($s['type']==2){
	?>
		<div id="banner7-caption<?php echo $i; ?>" class="banner7-caption nivo-html-caption nivo-caption">
			<div class="timeloading timeloading2" style="animation: <?php echo $config['delay'].'ms';?> ease-in-out 0s normal none 1 running timeloading;"></div>
			<div class="banner7-content slider-2">
			<div class="container">
			<?php if($s['title']) { ?>
				<div class="text-content">
					<?php if($s['title']) { ?>
						<h1 class="title1"><span><?php echo $s['title']; ?></span></h1>
					<?php } ?>
					<?php if($s['sub_title']) { ?>
						<h2 class="sub-title"><span><?php echo $s['sub_title']; ?></span></h2>
					<?php } ?>
					<?php if($s['description']) { ?>
					<div class="banner7-des">
						<span><?php echo $s['description']; ?></span>
					</div>
					<?php } ?>
					<?php if( $s['link'] ) { ?>
						<div class="banner7-readmore">
							<a href="<?php echo $s['link']?>" title="<?php echo 'shopping now' ?>"><?php echo 'shopping now'; ?></a>	
						</div>
					<?php } ?>
				</div>
			<?php } ?>
			</div>
			</div>
			
		</div>
	<?php
		}
		if($s['type']==3){
	?>
		<div id="banner7-caption<?php echo $i; ?>" class="banner7-caption nivo-html-caption nivo-caption">
			<div class="timeloading timeloading3" style="animation: <?php echo $config['delay'].'ms';?> ease-in-out 0s normal none 1 running timeloading;"></div>
			<div class="banner7-content slider-3">
			<div class="container">
			<?php if($s['title']) { ?>
				<div class="text-content">
					<?php if($s['title']) { ?>
						<h1 class="title1"><span><?php echo $s['title']; ?></span></h1>
					<?php } ?>
					<?php if($s['sub_title']) { ?>
						<h2 class="sub-title"><span><?php echo $s['sub_title']; ?></span></h2>
					<?php } ?>
					<?php if($s['description']) { ?>
					<div class="banner7-des">
						<span><?php echo $s['description']; ?></span>
					</div>
					<?php } ?>
					<?php if( $s['link'] ) { ?>
						<div class="banner7-readmore">
							<a href="<?php echo $s['link']?>" title="<?php echo 'shopping now' ?>"><?php echo 'shopping now'; ?></a>	
						</div>
					<?php } ?>
					
				</div>
			<?php } ?>
			</div>
			</div>
		</div>
	<?php
		}
	$i++;
	}
	?>
<script type="text/javascript">
				$(window).load(function() {
					$('#oc-inivoslider').nivoSlider({
						effect: '<?php if($config['effect']) { echo $config['effect'];} else { echo 'random'; } ?>',
						slices: 15,
						boxCols: 8,
						boxRows: 4,
						manualAdvance: <?php  if(isset($config['auto'])&& $config['auto'] == 1) { echo 'false' ; } else { echo 'true';} ?>,
						animSpeed:500,
						pauseTime: '<?php  if($config['delay']) { echo $config['delay']; } else { echo 3000;} ?>',
						startSlide: 0,
						controlNav:  <?php  if(isset($config['contrl']) && $config['contrl'] == 1) { echo 'true' ; } else { echo 'false';} ?>,
					directionNav:  <?php  if(isset($config['nextback'])&& $config['nextback'] == 1) { echo 'true' ; } else { echo 'false';} ?>,
					controlNavThumbs: false,
							pauseOnHover:  <?php  if(isset($config['hover'])&& $config['hover'] == 1) { echo 'true' ; } else { echo 'false';} ?>,
							prevText: 'Prev',
							nextText: 'Next',
							beforeChange: function() {
						var nivo_image = $('#oc-inivoslider .nivo-caption .banner7-small_image img').attr('src');
						$('#oc-inivoslider .nivo-caption').hide();
						$('.move-slides-effect img').each(function() {
							var small_image = $(this).attr('src');
							if(nivo_image == small_image) {
								var move_class = $(this).closest('.move-slides-effect').data('class');
								$('#oc-inivoslider .nivo-caption').removeClass().addClass('nivo-caption').addClass(move_class);
							}
						});
					},
					afterLoad: function(){
						$('.oc-loading').css("display","none");
						var nivo_image = $('.nivo-caption .banner7-small_image img').attr('src');
						$('.move-slides-effect img').each(function() {
							var small_image = $(this).attr('src');
							if(nivo_image == small_image) {
								var move_class = $(this).closest('.move-slides-effect').data('class');
								$('#oc-inivoslider .nivo-caption').removeClass().addClass('nivo-caption').addClass(move_class);
							}
						});
					},

				});
				});

			</script>
		</div>
	</div>
</div>