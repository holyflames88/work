<?php echo $header; ?>
<div class="container">
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
        <div class="clearfix"></div><br /><br />
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <div class="breadcrumbs flr">
                <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            </div>
        <?php } ?>
      <h1><?php echo $heading_title; ?></h1>
        <?php foreach ($products as $product) { ?>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="cart-cont">
            <div class="cart-cont-line">
                <?php if ($product['thumb']) { ?>
                <div class="cart-cont-l-img fll">
                    <img src="<?php echo $product['thumb']; ?>" alt="">
                </div>
                <?php } ?>
                <div class="cart-cont-l-title fll">
                    <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                </div>
                <div class="cart-price fll"><?php echo $product['price']; ?><span></span></div>
                <div class="numbers-row fll">
                    <input type="text" name="french-hens3[<?php echo $product['cart_id']; ?>]" id="french-hens3" value="<?php echo $product['quantity']; ?>" class="numbers-row-input">
                </div>
                <div class="cart-price fll">=&nbsp;&nbsp;&nbsp;<?php echo $product['total']; ?><span></span></div>
                <a href="#" class="cart-delete flr" data-toggle="tooltip" title="<?php echo $button_remove; ?>" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"></a>
                <div class="clearfix"></div>
            </div>
        </div>
            <?php } ?>
        <div class="product-style-block">
            <div class="product-style-block-title">Оформление заказа</div>
            <div class="product-style-block-cont">
                <div class="order-left fll">
                    <div class="order-left-title">Как покупать у нас в магазине</div>
                    <div class="order-left-descr">
                        негативно отразилась на николаевском плавбассейне «Водолей», который, кроме развлекательного и оздоровительного комплекса, также является площадкой для тренировок олимпийцев.
                        Уже восемь масштабных соревнований были отменены с начала года, резко упала посещаемость – «Водолей» стоит перед угрозой закрытия прыжкового и спортивного блока из-за трудностей с оплатой электроэнергии и отопления. Руководство бассейна бьет в набат – приглашает всех провести время в своих стенах, ведь каждое посещение – это спасательный круг спортивного комплекса.
                        - Если мы отключаемся – по любому поводу, либо из-за
                    </div>
                </div>
                <div class="order-right flr">

                        <input type="text" class="order-input" placeholder="Имя">
                        <input type="text" class="order-input" placeholder="Номер телефона">
                        <input type="text" class="order-input" placeholder="Email">
                        <textarea class="order-textarea" placeholder="Адрес доставки"></textarea>
                        <button id="buy" type="sumbit" class="btn btn-order flr"><?php echo $button_checkout; ?></button>

                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        </form>



      <br />
        <br />
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript">
    <!--
    $('#buy').on('click', function(e) {
        e.preventDefault();
        window.location.href = '<?php echo $checkout; ?>';
    });
    //-->
</script>
<?php echo $footer; ?>

