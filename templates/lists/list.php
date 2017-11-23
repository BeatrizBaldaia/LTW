<?php   include_once('database/lists.php');?>
<section id=lists>
  <?php
    $lists = getLists($_SESSION['username']);
    foreach( $lists as $list) { ?>
    <article class="list">
      <a href="list_page.php?id_list=<?=$list['id']?>"><h1><?=$list['name']?></h1></a>
      <ul>
      <?php $items = getItems($list['id']);
        foreach( $items as $item) { ?>
          <li><?=$item['name']?>
          </li>
      <?}?>
      </ul>
    </article>
  <?}?>
</section>
<aside id="sidebar">
  <ul>
    <?php foreach( $lists as $list) { ?>
        <li><a href="list_page.php?id_list=<?=$list['id']?>"><?=$list['name']?></a></li>
    <?} ?>
  <ul>
</aside>
