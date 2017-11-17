<?php   include_once('database/lists.php');?>
<section id=lists>
  <?php 
    $lists = getLists($_SESSION['username']);
    foreach( $lists as $list) { ?>
    <article class="list">
      <h1><?=$list['name']?></h1>
      <ul>
      <?php $items = getItems($list['id']); 
        foreach( $items as $item) { ?>
          <li><?=$item['name']?> </li>      
      <?}?>
      </ul>
    </article>
  <?}?>
</section>
