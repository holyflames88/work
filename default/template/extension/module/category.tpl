<div class="sidebar fll">
<div class="sidebar-menu">
  <div class="sidebar-menu-title"><span>Каталог товаров</span></div>
  <?php foreach ($categories as $category) { ?>
  <ul class="sidebar-menu-list">
  <?php if ($category['category_id'] == $category_id) { ?>
  <li class="active"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
  <?php } else { ?>
  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
  <?php } ?>
  </ul>
  <?php } ?>
<a href="#" class="sidebar-banner"><img src="catalog/view/theme/default/images/banner.png" alt=""></a>
<div class="sidebar-def">
    <div class="sidebar-def-title"><span class="sidebar-def-icon-rew fll"></span>Оставить заявку</div>
    <div class="sidebar-def-content">
        <form action="?route=information/contact" method="post" enctype="multipart/form-data"" method="post" enctype="multipart/form-data" class="form-horizontal">
            <input type="text" name="name" class="form-input" placeholder="Имя">
            <input type="text" name="email" class="form-input" placeholder="Номер телефона">
            <button type="sumbit" class="btn btn-send">Отправить</button>
        </form>
    </div>
</div>

</div>
</div>