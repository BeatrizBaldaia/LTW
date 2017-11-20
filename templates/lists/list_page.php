<section id="list_unique">
    <article class="lists">
      <h1><?=$list['name']?></h1>
      <ul>
      <?php $items = getItems($list['id']);
        foreach( $items as $item) { ?>
          <li><?=$item['name']?> </li>
      <?}?>
      </ul>
    </article>
</section>
