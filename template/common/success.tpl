<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
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
      <h1><?php echo $heading_title; ?></h1>
      <?php echo $text_message; ?>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
 <?php if(isset($metrika_order_id) && $metrika_order_id) { ?>
                        <script type="text/javascript">
                            if(typeof dataLayer != 'undefined') {
                                dataLayer.push({
                                    "ecommerce": {
                                        "purchase": {
                                            "actionField": {
                                                "id" : "<?php echo $metrika_order_id; ?>"
                                            },
                                            "products": [
                                                <?php foreach($metrika_order_products as $product) { ?>
                                                {
                                                    "id": "<?php echo $product["metrika_product_id"]; ?>",
                                                    "name": "<?php echo $product["metrika_product_name"]; ?>",
                                                    "price": <?php echo $product["metrika_product_price"]; ?>,
                                                    "quantity": <?php echo $product["metrika_product_quantity"]; ?>,
                                                    "brand": "<?php echo $product["metrika_product_manufacturer"]; ?>",
                                                    "category": "<?php echo $product["metrika_product_category"];?>"
                                                },
                                                <?php } ?>
                                            ]
                                        }
                                    }
                                });
                            }
                        </script>
                    <?php } ?>
<?php echo $footer; ?>