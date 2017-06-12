<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2><?php echo $heading_title; ?></h2>
      <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?>
      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php if ($products) { ?>

          <?php foreach ($breadcrumbs as $breadcrumb) { ?>
              <div class="breadcrumbs flr">
                  <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
              </div>
          <?php } ?>

          <div class="clearfix"></div>
          <a href="#" id="filter-but" class="filter-button">Подробный подбор</a>
          <div class="clearfix"></div>
       <!-- #myrow -->
        <?php foreach ($products as $product) { ?>
        <div class="content-catalog-line">
              <div class="content-catalog-item fll">
                  <div class="content-catalog-i-img"><img src="<?php echo $product['thumb']; ?>" width="155" height="60" alt="<?php echo $product['name']; ?>"></div>
                  <div class="content-catalog-i-line">
                      <div class="content-catalog-i-rating"><div class="content-catalog-i-rating-in" style="width:80%"></div></div>
                      <a href="#" class="content-catalog-i-rew">12 отзывов</a>
                  </div>
                  <a href="<?php echo $product['href']; ?>" class="content-catalog-i-title"><?php echo $product['name']; ?></a>
            <?php if ($product['price']) { ?>
                  <div class="content-catalog-i-price"><span><?php echo $product['price']; ?></span></div>
                <?php } ?>
                  <a href="#" onclick="cart.add('<?php echo $product['product_id']; ?>');" class="content-catalog-i-addtocart"><?php echo $button_cart; ?><span class="addtocart-icon flr"></span></a>
              </div>
        </div>
        <?php } ?>
       <!-- #Row2 -->
          <div class="clearfix"></div>
        <div class="pagination"><span><?php echo $pagination; ?></span></div>
          <div class="clearfix"></div>

    </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
<script type="text/javascript">
    $('#filter-but').on('click', function(e) {
        e.preventDefault();
        $('#filter-but').hide();
        $('#ftab').show("slow", 3000);
    });

    $('.content-catalog-i-addtocart').on('click', function(e) {
        e.preventDefault();
    });
</script>