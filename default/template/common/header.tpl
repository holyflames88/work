<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js?v11" type="text/javascript"></script>
<link href="catalog/view/theme/default/css/bootstrap.min.css?v11" rel="stylesheet">
<link href="catalog/view/theme/default/css/bootstrap-theme.min.css?v11" rel="stylesheet">
<link href="catalog/view/theme/default/css/style.css?v11" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="catalog/view/theme/default/js/bootstrap.min.js?v11"></script>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,500italic,700,700italic,900,900italic&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400' rel='stylesheet' type='text/css'>
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
</head>
<body class="<?php echo $class; ?>">
<!-- seperat. -->

<div class="wrap">
    <header class="header">
        <div class="header-top">
            <div class="h-logo fll">
                <?php if ($logo) { ?>
                <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" width="225" height="54" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"></a>
                <?php } ?>
                <div class="h-logo-descr">Климатическое оборудование и системы<br>отопления с доставкой <span>по России</span></div>
            </div>
            <div class="h-info fll">
                <div class="h-info-icon fll"></div>
                <div class="h-info-txt">
                    <div class="h-info-tel">8-800-534-65-32</div>
                    <a href="#" class="feedback-link">Заказать обратный звонок</a>
                </div>
            </div>
            <div class="h-info fll">
                <div class="h-info-icon mail fll"></div>
                <div class="h-info-txt">
                    <div class="h-info-mail">info@proclimate5.ru</div>
                    <div class="h-info-time">Время работы : 9.00 - 21.00</div>
                </div>
            </div>
            <div class="h-basket flr">
                <a href="<?php echo $shopping_cart; ?>" class="h-basket-line">
                    <div class="h-basket-icon fll"></div>
                    <div class="h-basket-txt"><span><?php echo $text_shopping_cart; ?></span></div>
                    <div class="h-basket-drop"></div>
                </a>
                <div class="clearfix"></div>
                <div class="login-panel"><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="h-menu-all">
            <nav class="h-menu">
                <div class="h-menu-cont">
                    <ul class="fll">
                        <li><a href="<?php echo $base; ?>">Главная</a></li>
                        <li><a href="<?php echo $base; ?>/how2buy">Как купить</a></li>
                        <li><a href="<?php echo $base; ?>/articles">Статьи</a></li>
                        <li><a href="<?php echo $base; ?>/montazh">Монтаж</a></li>
                        <li><a href="<?php echo $base; ?>/dostavka">Доставка</a></li>
                        <li><a href="<?php echo $base; ?>/obslyzhivanie">Обсулживание</a></li>
                        <li><a href="<?php echo $base; ?>/kontaktu">Контакты</a></li>
                    </ul>
                    <div class="h-search flr">
                        <?php echo $search; ?>
                    </div>
                </div>
            </nav>
        </div>
    </header>
</div>



