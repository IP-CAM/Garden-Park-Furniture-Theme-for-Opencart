<ul>
	<?php foreach($categories as $category): ?>
		<li>
			<a href="<?=$category['href'] ?>"><?=$category['name']?></a>
			<?php if($category['children']): ?>
				<?php foreach($category['children'] as $child): ?>
					<li><a href="<?=$child['href'] ?>"><?=$child['name'] ?></a></li>
				<?php endforeach; ?>
			<?php endif; ?>
		</li>
	<?php endforeach; ?>
</ul>
