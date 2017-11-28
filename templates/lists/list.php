<?php   include_once('database/lists.php');?>
<section id=lists>
  <?php
    $lists = getLists($_SESSION['username']);
    $numLists = count($lists);
    for ($i = 0; $i < $numLists; $i++) {
        if ($i >= 3) {
            break;
        }
        $list = $lists[$i]; ?>
    <article class="list">
      <a href="list_page.php?id_list=<?=urlencode($list['id'])?>"><h3><?=htmlentities($list['name'])?></h3></a>
<span class="delete"><a href="action_delete_list.php?list_id=<?=urlencode($list['id'])?>"></a></span>
      <ul>
      <?php $items = getItems($list['id']);
        foreach( $items as $item) { ?>
          <li><?=htmlentities($item['name'])?>
          </li>
      <?php } ?>
      </ul>
    </article>
  <?php } ?>
</section>
<aside id="sidebar">
  <div id="NewList">
    <input type="checkbox" id="CheckNewList">
    <label for="CheckNewList">Add New List</label>
    <form id="NewListName" action="action_new_list.php" method="get">
      <label>List Name:
        <input type="text" name="list_name">
      </label>
        <input type="submit" name="New List">
    </form>

  </div>
  <ul>
    <?php foreach( $lists as $list) { ?>
        <li><a href="list_page.php?id_list=<?=urlencode($list['id'])?>"><?=htmlentities($list['name'])?></a></li>
    <?php } ?>
  <ul>
</aside>
