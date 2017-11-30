<section id="list_unique">
    <article class="lists <?= getCategory($list['category'])['cat'] ?>">
      <h1><?=htmlentities($list['name'])?></h1>
      <span class="id"><?=htmlentities($list['id'])?></span>
      <input type="button" onclick="location.href='action_delete_list.php?list_id=<?=urlencode($list['id'])?>';"/>
      <ul>
      <?php $items = getItems($list['id']);
        foreach( $items as $item) { ?>
          <li><?=htmlentities($item['name'])?>
          <input type="checkbox" name="item_complete" value="<?=htmlentities($item['id'])?>" <?= ($item['complet'] ? 'checked' : '')?>>
          </li>
      <?}?>
      </ul>
      <div id="new_item">
        <input type="text" name="item_name">
        <input type="submit" value="Add">
      </div>
    </article>
</section>
