<section id="list_unique">
    <article class="lists">
      <h1><?=$list['name']?></h1>
      <ul>
      <?php $items = getItems($list['id']);
        foreach( $items as $item) { ?>
          <li><?=$item['name']?> 
          <input type="checkbox" name="item_complete" value="<?=$item['id']?>" <?= ($item['complet'] ? 'checked' : '')?>>
          </li>
      <?}?>
      </ul>
    </article>
</section>
