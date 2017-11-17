<section id="lists">
  <h2>Todo-Lists</h2>
    <?php foreach( $lists as $list) { ?>
    <article>
      <h1><?=$list['name']?></h1>
      <ul>
      <?php $items = getItems($list['id']);
        foreach( $items as $item) { ?>
          <li><?=$item['name']?> </li>
      <?}?>
      </ul>
    </article>
    <?}
</section>
