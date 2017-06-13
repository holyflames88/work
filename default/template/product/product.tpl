<?php echo $header; ?>
<div class="container">
    <div class="sidebar fll">
        <?php echo $column_left; ?>
    </div>
    <div class="content-block flr">
        <!-- begin//-->
        <?php echo $content_top; ?>
    <div class="block-title fll"><?php echo $heading_title; ?></div>
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <div class="breadcrumbs flr">
<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    </div>
        <?php } ?>
    <div class="clearfix"></div>
    <div class="product-left fll">
        <?php if ($thumb || $images) { ?>
        <div id="gallery">

            <div class="gallery-in">
                <div id="slides">
                    <?php if ($thumb) { ?>
                    <div class="slide"><img src="<?php echo $thumb; ?>" width="260" alt="<?php echo $heading_title; ?>" /></div>
                    <?php } ?>
                </div>
            </div>
            <div id="menu">
                <ul>
                    <?php if ($images) { ?>
                    <?php foreach ($images as $image) { ?>
                    <li class="menuItem"><a href="#"><img src="<?php echo $image['thumb']; ?>" alt="thumbnail" /></a></li>
                    <?php } ?>
                    <?php } ?>
                </ul>
            </div>

        </div>
        <?php } ?>
    </div>
    <div class="product-right" id="product">
        <?php if ($attribute_groups) { ?>
        <?php foreach ($attribute_groups as $attribute_group) { ?>
                <?php if($attribute_group['name'] == 'add_tabs') { continue; } else { ?>
        <div class="product-right-title"><?php echo $attribute_group['name']; ?></div>
        <table class="table-char" cellpadding="0" cellspacing="0">
            <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
            <tr>
                <td><?php echo $attribute['name']; ?></td>
                <td class="right"><?php echo $attribute['text']; ?></td>
            </tr>
                <?php } ?>
        </table>
                <?php } ?>
            <?php } ?>
        <?php } ?>
        <div class="product-descr">
            <div class="product-descr-name">Коротко о товаре:</div>
            <div class="product-descr-txt">            <?php if ($manufacturer) { ?>
                    <?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a>
                <?php } ?></div>
            <div class="product-descr-txt"> <?php echo $text_model; ?> <?php echo $model; ?></div>
        </div>
        <?php if ($price) { ?>
        <div class="product-offer">
            <div class="product-price fll"><span class="product-price-name">Цена: </span><?php echo $price; ?><span></span></div>
            <button class="content-catalog-i-addtocart flr" id="button-cart" data-loading-text="<?php echo $text_loading; ?>"><?php echo $button_cart; ?><span class="addtocart-icon flr"></span></button>
            <a href="#" class="product-consult flr">Консультация</a>
            <div class="clearfix"></div>
        </div>
        <?php } ?>
        <div class="product-range">
            <div class="product-range-name fll">Колличество:</div>
            <div class="product-range-rang fll"><input type="text" id="range_02" name="range_02" value="" /></div>
        </div>
    </div>
    <div class="clearfix"></div>

    <div role="tabpanel">
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#new" aria-controls="new" role="tab" data-toggle="tab">Описание</a></li>
            <li role="presentation"><a href="#action" aria-controls="action" role="tab" data-toggle="tab">Оплата</a></li>
            <li role="presentation"><a href="#sell" aria-controls="sell" role="tab" data-toggle="tab">Доставка</a></li>
            <li role="presentation"><a href="#popular" aria-controls="popular" role="tab" data-toggle="tab">Монтаж</a></li>
        </ul>
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane fade active in" id="new">
                <div class="tab-cont-prod">
                    <?php echo $description; ?>
                </div>
            </div>
            <?php if ($attribute_groups) { ?>
              <?php foreach ($attribute_groups as $attribute_group) { ?>
                <?php if($attribute_group['name'] == 'add_tabs') { ?>
                <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
            <div role="tabpanel" class="tab-pane fade" id="action">
                <?php
                if($attribute['name'] == 'Оплата') { echo $attribute['text']; }
                ?>
            </div>
            <div role="tabpanel" class="tab-pane fade" id="sell">
                <?php
                if($attribute['name'] == 'Доставка') { echo $attribute['text']; }
                ?>
            </div>
            <div role="tabpanel" class="tab-pane fade" id="popular">
                <?php
                if($attribute['name'] == 'Монтаж') { echo $attribute['text']; }
                ?>
            </div>
                  <?php } ?>
                <?php } ?>
              <?php } ?>
            <?php } ?>
        </div>
    </div>

       <!-- //end-->

    <div class="product-style-block">
      <?php echo $content_bottom; ?>
    </div>

    <div class="product-style-block">
        <br />
        <div class="product-style-block-cont" id="review-r">
            <div class="clearfix"></div>
        </div>
        <button type="sumbit" class="btn btn-send" id="form" align="center">ОСТАВИТЬ ОТЗЫВ О ТОВАРЕ</button>
        <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review" style="display: none;">
                <form class="form-horizontal" id="form-review">
                    <div id="review-1"></div>
                    <h2><?php echo $text_write; ?></h2>
                    <?php if ($review_guest) { ?>
                        <div class="form-group required">
                            <div class="col-sm-12">
                                <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group required">
                            <div class="col-sm-12">
                                <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                                <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                                <div class="help-block"><?php echo $text_note; ?></div>
                            </div>
                        </div>
                        <div class="form-group required">
                            <div class="col-sm-12">
                                <label class="control-label"><?php echo $entry_rating; ?></label>
                                &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                                <input type="radio" name="rating" value="1" />
                                &nbsp;
                                <input type="radio" name="rating" value="2" />
                                &nbsp;
                                <input type="radio" name="rating" value="3" />
                                &nbsp;
                                <input type="radio" name="rating" value="4" />
                                &nbsp;
                                <input type="radio" name="rating" value="5" />
                                &nbsp;<?php echo $entry_good; ?></div>
                        </div>
                        <?php echo $captcha; ?>
                        <div class="buttons clearfix">
                            <div class="pull-right">
                                <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                            </div>
                        </div>

                    <?php } else { ?>
                        <?php echo $text_login; ?>
                    <?php } ?>
                </form>
            </div>
        <?php } ?>
    </div>
    </div>



</div>
    <?php echo $column_right; ?>
<script type="text/javascript" src="catalog/view/theme/default/js/slider.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/js/ion.rangeSlider.min.js"></script>
<script>
  $("#range_02").ionRangeSlider({
     min: 1,
     max: 10,
     from: 4
   });
</script>
<script type="text/javascript">
$('#form').on('click', function(e) {
    e.preventDefault();
    $('#form').hide();
    $('#tab-review').show('slow');
});

$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review-r').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
</script>
<?php echo $footer; ?>
