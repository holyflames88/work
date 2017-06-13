<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<div class="rew-item">
    <div class="rew-i-txt">
        <div class="rew-i-name"><?php echo $review['author']; ?></div>
        <div class="rew-i-cont"><?php echo $review['text']; ?></div>
    </div>
<div class="clearfix"></div>
<?php } ?>
<div class="text-right"><?php echo $pagination; ?></div>
<?php } ?>
