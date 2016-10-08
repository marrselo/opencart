<?php echo $header; ?>
<div class="container">
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><span></span></li>
        <?php } ?>
      </ul>
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
            <div class="page-title"><h2><?php echo $heading_title; ?></h2></div>
            <?php if ($products) { ?>
            <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>
            <div class="product-filter">
					<div class="btn-group">
						<div class="grid-list-parent"><button type="button" id="grid-view" class="btn btn-default"  title="<?php echo $button_grid; ?>"></button><span><?php echo $button_grid; ?></span></div>
						<div class="grid-list-parent"><button type="button" id="list-view" class="btn btn-default"  title="<?php echo $button_list; ?>"></button><span><?php echo $button_list; ?></span></div>
					</div>
					<div class="sort">
					  <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
					  <select id="input-sort" class="form-control col-sm-3" onchange="location = this.value;">
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
					  <select id="input-limit" class="form-control" onchange="location = this.value;">
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
            <div class="row products-category">
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
						<?php if (isset($product['rating'])) { ?>
							<div class="rating">
							<img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="" />
							</div>
						<?php } ?>
					  </div>
				</div>
			</div>
		</div>
					</div>
                </div><!-- product-layout -->
            <?php } ?>
            </div> <!-- products-category -->
            <div class="row">
                <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                <div class="col-sm-6 text-right"><?php echo $results; ?></div>
            </div>
            <?php } else { ?>
            <p><?php echo $text_empty; ?></p>
            <div class="buttons">
                <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
            </div>
            <?php } ?>
            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
