<footer>
	<div class="footer-composition">
		<img src="catalog/view/theme/spm/img/composition.jpg" alt="">
	</div>
	<div class="content-footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-4 col-xs-6">
					<h2>Информация</h2>
					<ul>
						<li><a href="http://spm.baricada.ru/privacy-policy">Политика конфиденциальности</a></li>
					</ul>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-6">
					<h2>Служба поддержки</h2>
					<ul>
						<li><a href="http://spm.baricada.ru/index.php?route=information/contact">Связаться с нами</a></li>
						<li><a href="http://spm.baricada.ru/contacts">Контакты</a></li>
					</ul>
				</div>
				<div class="col-md-4 col-sm-4">
					<p>Токарев Виталий Викторович, ИП <br>
						ОГРНИП 312667624700038</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	
	<!-- Call tracking Callibri --> 
	<script src="http://cdn.callibri.ru/callibri.js"; type="text/javascript"></script>
<script type="text/javascript">
                        function sendYandexEcommerce(array, action) {
                            if(typeof dataLayer == 'undefined')
                                return false;

                            if(action=="remove") {
                                var product = [{
                                    "id": array['metrika_product_id'],
                                    "name": array['metrika_product_name'],
                                    "price": array['metrika_product_price']
                                }];
                            } else {
                                var product = [{
                                    "id": array['metrika_product_id'],
                                    "name": array['metrika_product_name'],
                                    "price": array['metrika_product_price'],
                                    "brand": array['metrika_product_manufacturer'],
                                    "category": array['metrika_product_category'],
                                    "quantity": array['metrika_product_quantity']
                                }];
                            }

                            if(action=="remove")
                                dataLayer.push({"ecommerce": {"remove": {"products": product}}});
                            else
                                dataLayer.push({"ecommerce": {"add": {"products": product}}});
                        }
                    </script>
</body>
</html>