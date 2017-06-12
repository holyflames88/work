<div class="content-block flr">
    <div role="tabpanel">
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#new" aria-controls="new" role="tab" data-toggle="tab">Новые товары</a></li>
            <li role="presentation"><a href="#action" aria-controls="action" role="tab" data-toggle="tab">Акции</a></li>
            <li role="presentation"><a href="#sell" aria-controls="sell" role="tab" data-toggle="tab">Распродажа</a></li>
            <li role="presentation"><a href="#popular" aria-controls="popular" role="tab" data-toggle="tab">Популярные</a></li>
        </ul>
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane fade active in" id="new">
<!-- --->
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
<!-- --->
            </div>
            <div role="tabpanel" class="tab-pane fade" id="action">
                Вторая вкладка
            </div>
            <div role="tabpanel" class="tab-pane fade" id="sell">
                Третья вкладка
            </div>
            <div role="tabpanel" class="tab-pane fade" id="popular">
                Четвертая вкладка
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
</div>



