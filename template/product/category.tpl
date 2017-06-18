<?php echo $header; ?>
<section class="main-content">
	<div class="container">
		<ul class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
			<?php } ?>
		</ul>

		<div class="row">
			<?php $class=$column_left ? 'col-md-9' : 'col-md-12' ?>
			<?php echo $column_left; ?>
			<div id="content" class="<?php echo $class; ?>">
				<?php echo $content_top; ?>
				<h1><?php echo $heading_title; ?></h1>
				<?php if ($thumb || $description): ?>
					<div class="row">
						<?php if ($thumb) : ?>
							<div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
						<?php endif ?>
						<?php if ($description) : ?>
							<div class="col-sm-10"><?php echo $description; ?></div>
						<?php endif ?>
					</div>
					<hr>
				<?php endif ?>

				<div class="row">
					<?php if ($products): ?>
						<div class="col-sm-2 hidden-xs">
							<div class="btn-group btn-group-sm">
								<button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="glyphicon glyphicon-th"></i></button>
								<button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="glyphicon glyphicon-th-list"></i></button>
							</div>
						</div>
					<?php endif; ?>

					<div class="col-sm-6 col-xs-7">
						<div class="form-group input-group input-group-sm">
							<label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
							<select id="input-sort" class="form-control" onchange="location = this.value;">
								<?php foreach ($sorts as $sorts) : ?>
									<?php if ($sorts['value'] == $sort . '-' . $order) : ?>
										<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
									<?php else : ?>
										<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
									<?php endif; ?>
								<?php endforeach; ?>
							</select>
						</div>
					</div>

					<div class="col-sm-4 col-xs-5">
						<div class="form-group input-group input-group-sm">
							<label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
							<select id="input-limit" class="form-control" onchange="location = this.value;">
								<?php foreach ($limits as $limits) : ?>
									<?php if ($limits['value'] == $limit) : ?>
										<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
									<?php else : ?>
										<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
									<?php endif; ?>
								<?php endforeach; ?>
							</select>
						</div>
					</div>
				</div> <!-- /.row -->

				<div class="row">
					<?php foreach ($products as $product) : ?>
						<div class="product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12">
							<div class="product-category">
								<div class="image">
									<a href="<?php echo $product['href']; ?>">
										<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
									</a>
								</div>
								<div class="caption">
									<h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
									<p><?php echo $product['description']; ?></p>			
									<?php if ($product['price']) : ?>
										<p class="-price">
											<?php if (!$product['special']) : ?>
												<?php echo $product['price']; ?>
											<?php else: ?>
												<span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
											<?php endif; ?>
										</p>
									<?php endif; ?>
								</div>
								<div class="button-group">
									<button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
									<button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="glyphicon glyphicon-heart"></i></button>
									<button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="glyphicon glyphicon-transfer"></i></button>
								</div>
							</div>
						</div>
					<?php endforeach; ?>
				</div> <!-- /.row -->

			</div> <!-- /.content -->
		</div> <!-- /.row -->

	</div> <!-- /.container -->
</section>

<?php echo $footer; ?>