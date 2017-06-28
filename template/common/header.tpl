<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="yandex-verification" content="6afafe82246b61fc" />

	<title><?php echo $title;  ?></title>
	<base href="<?php echo $base; ?>" />
	<meta name="description" content="<?php echo $description; ?>" />
	<meta name="keywords" content= "<?php echo $keywords; ?>" />
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic" rel="stylesheet">
	<link href="catalog/view/theme/spm/css/bootstrap.min.css" rel="stylesheet">
	<link href="catalog/view/theme/spm/css/style1.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="catalog/view/theme/spm/js/bootstrap.min.js"></script>	
	<?php foreach ($styles as $style) { ?>
	<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>
	<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
	<?php foreach ($scripts as $script) { ?>
	<script src="<?php echo $script; ?>" type="text/javascript"></script>
	<?php } ?>
	<?php foreach ($analytics as $analytic) { ?>
	<?php echo $analytic; ?>
	<?php } ?>

	<script type="text/javascript">window.dataLayer = window.dataLayer || [];</script>
</head>

<body>

<!-- Yandex.Metrika counter -->
<script type="text/javascript">
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter45098463 = new Ya.Metrika({
                    id:45098463,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true,
                    webvisor:true,
                    ecommerce:"dataLayer"
                });
            } catch(e) { }
        });

        var n = d.getElementsByTagName("script")[0],
            s = d.createElement("script"),
            f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/45098463" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

	<header>
		<div class="menu-top">
			<nav>
				<div class="container">
					<ul class="menu-top-left">
						<li><a href="#"><img src="catalog/view/theme/spm/img/nav-ico.gif">Березовский</a></li>
					</ul>
					<ul class="menu-top-right">
						<li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><img src="catalog/view/theme/spm/img/basket-top-ico.gif"><?php echo $text_shopping_cart; ?></a></li>
					</ul>
				</div>
			</nav>
		</div> <!-- /.menu-top -->

		<div class="menu-header">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-4 col-xs-6">
						<div>
							<img src="catalog/view/theme/spm/img/logo.gif" alt="logo">
							<h1>БАРРИКА<span>Д</span>А</h1>
							<h2>Производство садово-парковой мебели <br> для благоустройства территории парков и городов</h2>
						</div>
					</div>
					<div class="col-md-3 col-sm-4 col-xs-6">
						<p class="phone-header"><img src="catalog/view/theme/spm/img/phone-ico.jpg" alt="phone"><span class="callibri_phone"><?php echo $telephone; ?></span></p>
						<p class="clock-header"><img src="catalog/view/theme/spm/img/clock-ico.jpg" alt="clock">Ежедневно с 9:00 до 19:00 <br> г. Березовский</p>
						<p class="email-header">e-mail: zakaz@baricada.ru</p>
					</div>
					<div class="col-md-3 col-sm-4 hidden-xs">
						<?php echo $cart; ?>
					</div>
				</div>
			</div>
		</div> <!-- /.menu-header-->

		<div class="menu-main">	
			<div class="container">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#"><img src="catalog/view/theme/spm/img/home-ico.jpg"></a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<?php foreach ($categories as $category) { ?>
							<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
							<?php } ?>
							<!-- <li><a href="#">Каталог</a></li> -->
							<li><a href="http://spm.baricada.ru/production">Производство</a></li>
							<li><a href="#photogallery">Фотогалерея</a></li>
							<li><a href="http://spm.baricada.ru/delivery">Доставка</a></li>
							<li><a href="http://spm.baricada.ru/contacts">Контакты</a></li>
						</ul>
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container -->
			</nav>
		</div> <!-- /.menu-main-->

		<div class="menu-client">
			<div class="container">
				<ul>
					<li><img src="catalog/view/theme/spm/img/private-clients-ico.jpg" alt=""><a href="#">Частным клиентам</a></li>
					<li><img src="catalog/view/theme/spm/img/public-institutions-ico.jpg" alt=""><a href="#">Гос. учреждениям</a></li>
					<li><img src="catalog/view/theme/spm/img/public-company-ico.jpg" alt=""><a href="#">Гос. компаниям</a></li>
					<li><img src="catalog/view/theme/spm/img/park-ico.jpg" alt=""><a href="#">Паркам</a></li>
					<li><img src="catalog/view/theme/spm/img/developer-ico.jpg" alt=""><a href="#">Застройщикам</a></li>
				</ul>
			</div>
		</div> <!-- /.menu-client-->


	</header>