<section id="list_unique">
    <article class="lists">
      <h1><?=$list['name']?></h1>
      <span class="id"><?=$list['id']?></span>
      <span class="delete"><a href="action_delete_list.php?list_id=<?=$list['id']?>"></a></span>
      <ul>
      <?php $items = getItems($list['id']);
        foreach( $items as $item) { ?>
          <li><?=$item['name']?>
          <input type="checkbox" name="item_complete" value="<?=$item['id']?>" <?= ($item['complet'] ? 'checked' : '')?>>
          </li>
      <?}?>
      </ul>
      <div id="new_item">
        <input type="text" name="item_name">
        <input type="submit" value="Add">
      </div>
    </article>
</section>
