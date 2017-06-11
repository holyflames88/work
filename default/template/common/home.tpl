<?php echo $header; ?>
    <div class="slider">
        <div class="wrap">
            <div class="slider-panel">
                <div class="slider-title">Системы кондиционирования и вентиляции под ключ</div>
                <div class="slider-line"></div>
                <div class="slider-descr">Продажа, установка, сервисное обслуживание кондиционеров и вентиляционного оборудования ( бытового, полупромышленного и промышленного назначения )</div>
            </div>
        </div>
    </div>
<div class="wrap">
    <div class="benefits">
        <div class="benefits-item fll">
            <div class="benefits-i-icon fll"><img src="catalog/view/theme/default/images/icons/1.png" width="51" height="56" alt=""></div>
            <div class="benefits-i-txt">
                <div class="benefits-i-title">Качественный товар</div>
                <div class="benefits-i-descr">Мы ручаемся за качество продаваемого нами оборудования</div>
            </div>
        </div>
        <div class="benefits-item fll">
            <div class="benefits-i-icon fll"><img src="catalog/view/theme/default/images/icons/2.png" width="37" height="56" alt=""></div>
            <div class="benefits-i-txt">
                <div class="benefits-i-title">Работа под ключ</div>
                <div class="benefits-i-descr">Каждая выполененая нами работа уникальна. Мы делаем как себе</div>
            </div>
        </div>
        <div class="benefits-item fll">
            <div class="benefits-i-icon fll"><img src="catalog/view/theme/default/images/icons/3.png" width="61" height="61" alt=""></div>
            <div class="benefits-i-txt">
                <div class="benefits-i-title">Быстрая доставка</div>
                <div class="benefits-i-descr">Доставляем оборудования быстро и качественно. Задержек не бывает</div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <br>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
        <?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>