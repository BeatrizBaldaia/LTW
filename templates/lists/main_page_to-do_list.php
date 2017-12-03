<section id="setOfLists" class=<?= getCategory($list['category'])['cat'] ?>>
    <article>
      <h1><?=htmlentities($list['name'])?></h1>
      <span class="id"><?=htmlentities($list['id'])?></span>
      <span class="dateDue">Deadline: <?=htmlentities($list['dateDue'])?></span>
      <input type="button" onclick="location.href='action_delete_list.php?list_id=<?=urlencode($list['id'])?>&csrf=<?= $_SESSION['csrf'] ?>';"/>
      <ul>
      <?php $items = getItems($list['id']);
        foreach( $items as $item) { ?>
          <li><?=htmlentities($item['name'])?>
          <input type="checkbox" name="item_complete" value="<?=htmlentities($item['id'])?>" <?= ($item['complet'] ? 'checked' : '')?>>
          </li>
      <?php } ?>
      </ul>
      <div id="new_item">
        <input type="text" class=<?= getCategory($list['category'])['cat'] ?> name="item_name">
        <input type="submit" value="Add">
      </div>
    </article>
</section>
