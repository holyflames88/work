<div class="filter-cont" id="ftab">
    <?php foreach ($filter_groups as $filter_group) { ?>
    <div class="filter-cont-item fll">

        <div class="filter-cont-i-title"><?php echo $filter_group['name']; ?></div>
        <select class="new-select">
            <?php foreach ($filter_group['filter'] as $filter) { ?>
                <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
                    <option name="filter[]" value="<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></option>
                <?php } else { ?>
                    <option name="filter[]" value="<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></option>
                <?php } ?>
            <?php } ?>
        </select>
    </div>
    <?php } ?>
</div>
<!-- //-->
<script type="text/javascript">
    $('select').on('change', function() {
    filter = [];

    $('option[name^=\'filter\']:selected').each(function(element) {
        filter.push(this.value);
    });
    location = '<?php echo $action; ?>&filter=' + filter.join(',');

});
</script>
