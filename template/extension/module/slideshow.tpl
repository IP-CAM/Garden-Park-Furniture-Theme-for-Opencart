	<section class="menu-carousel">
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<?php for($i = 0; $i < count ($banners); $i++): ?>
					<li data-target="#carousel-example-generic" data-slide-to="<?=$i?>" <?php if($i==0) echo ' class="active"' ?>></li>
				<?php endfor; ?>
			</ol>
			<!-- Wrapper for slides -->
			<div class="container">
				<div class="carousel-inner" role="listbox">
					 <?php $i=0; foreach($banners as $banner): ?>
					 <div class="item<?php if($i==0) echo ' active' ?>">
							<div class="bgslide" style="background-image: url(<?=$banner['image']?>);"></div>
							<div class="carousel-caption">	
						</div>
					</div>
					<?php $i++; endforeach; ?>

				</div>
			</div>
		</div>
	</section>