<div class="content-catalog-line">
  <?php foreach ($products as $product) { ?>
  <div class="content-catalog-item fll">
    <div class="content-catalog-i-img"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></div>
    <div class="content-catalog-i-line"><div class="content-catalog-i-rating"><div class="content-catalog-i-rating-in" style="width:80%"></div></div><a href="#" class="content-catalog-i-rew">12 отзывов</a></div>
    <a href="<?php echo $product['href']; ?>" class="content-catalog-i-title"><?php echo $product['name']; ?></a>
    <?php if ($product['price']) { ?>
    <div class="content-catalog-i-price"><span><?php echo $product['price']; ?></span></div>
    <?php } ?>
    <a href="#" onclick="cart.add('<?php echo $product['product_id']; ?>');" class="content-catalog-i-addtocart"><?php echo $button_cart; ?><span class="addtocart-icon flr"></span></a>
  </div>
  <?php } ?>
</div>


