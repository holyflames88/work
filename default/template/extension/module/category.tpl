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
</div>

