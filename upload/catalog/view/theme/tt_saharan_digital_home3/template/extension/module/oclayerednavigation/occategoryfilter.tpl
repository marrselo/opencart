<?php if ($products) { ?>
<p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>
<div class="product-filter">
					<div class="btn-group">
						<div class="grid-list-parent"><button type="button" id="grid-view" class="btn btn-default"  title="<?php echo $button_grid; ?>"></button><span><?php echo $button_grid; ?></span></div>
						<div class="grid-list-parent"><button type="button" id="list-view" class="btn btn-default"  title="<?php echo $button_list; ?>"></button><span><?php echo $button_list; ?></span></div>
					</div>
					<div class="sort">
					  <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
					  <select id="input-sort" class="form-control col-sm-3" onchange="oclayerednavigationajax.filter(this.value)">
						<?php foreach ($sorts as $sorts) { ?>
						<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
						<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
						<?php } ?>
						<?php } ?>
					  </select>
					</div>
					<div class="limit">
					  <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
					  <select id="input-limit" class="form-control" onchange="oclayerednavigationajax.filter(this.value)">
						<?php foreach ($limits as $limits) { ?>
						<?php if ($limits['value'] == $limit) { ?>
						<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
						<?php } ?>
						<?php } ?>
					  </select>
					</div>
				</div>
		<div class="custom-products">
                    <div class="row">
                    <?php foreach ($products as $product) { ?>
                    <div class="product-layout product-list col-xs-12">
						<div class="product-container">
											<div class="item_product">
								<div class="item-inner">
									  <div class="left-block">
										<div class="product-image">
											<div class="image">
												<div class="image-product">
													<div class="box-label">
														<?php if ($product['special']) { ?>
															<div class="label-pro-sale"><?php echo $text_sale; ?></div>
														<?php } ?>
														<?php if ($product['is_new']){?>
															<div class="label-pro-new"><?php echo $text_new; ?></div>
														<?php } ?>
													</div>
													<div class="img-other">
														<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
													</div>
													<div class="actions">
														<div class="cart">
															<button type="button" title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
														</div>
														<div class="add-to-links">
															<div class="wishlist"><button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span></span></button></div>
															<div class="compare"><button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span></span></button></div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="right-block">
										  <div class="caption">
											<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
											<div class="description"><?php echo $product['description']; ?></div>
											<?php if (isset($product['rating'])) { ?>
												<div class="rating">
												<img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="" />
												</div>
											<?php } ?>
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
										  </div>
									</div>
								</div>
							</div>
						</div>
		</div>
                    <?php } ?>
                </div>
                </div>
<div class="row">
    <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
    <div class="col-sm-6 text-right"><?php echo $results; ?></div>
</div>
<?php } ?>
<?php if (!$categories && !$products) { ?>
<p><?php echo $text_empty; ?></p>
<div class="buttons">
    <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
</div>
<?php } ?>

<script type="text/javascript">
    // Product List
    $('#list-view').click(function() {
        $('#content .product-layout > .clearfix').remove();

        $('#content .product-layout').attr('class', 'product-layout product-list col-xs-12');

        localStorage.setItem('display', 'list');
    });

    // Product Grid
    $('#grid-view').click(function() {
        $('#content .product-layout > .clearfix').remove();

        // What a shame bootstrap does not take into account dynamically loaded columns
        cols = $('#column-right, #column-left').length;

        if (cols == 2) {
            $('#content .product-layout').attr('class', 'product-layout product-grid col-lg-6 col-md-6 col-sm-12 col-xs-12');
        } else if (cols == 1) {
            $('#content .product-layout').attr('class', 'product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12');
        } else {
            $('#content .product-layout').attr('class', 'product-layout product-grid col-lg-3 col-md-3 col-sm-6 col-xs-12');
        }

        localStorage.setItem('display', 'grid');
    });
</script>

