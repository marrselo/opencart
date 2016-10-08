<?php $row_count = 0; ?>
<?php if($widgets): ?>
    <?php foreach ($widgets as $rows): ?>
    <div class="row-<?php echo $row_count; ?> <?php echo $rows['class']; ?>">
        <div class="container">
            <?php foreach($rows['cols'] as $cols): ?>
            <div class="col-md-<?php echo $cols['format']<>12 ? $cols['format'] : "full"; ?> col-sm-12 col-xs-12">
                <?php if(isset($cols['info'])): ?>
                    <?php foreach($cols['info'] as $modules): ?>
                        <?php echo $modules; ?>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
            <?php endforeach; ?>
            <?php $row_count++; ?>
        </div>
    </div>
    <?php endforeach; ?>
<?php endif; ?>