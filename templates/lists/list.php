<?php   include_once('database/lists.php');?>
<section id="lists">
  <?php
    $lists = getLists($_SESSION['username']);
    $numLists = count($lists);
    for ($i = 0; $i < $numLists; $i++) {
        if ($i >= 3) {
            break;
        }
        $list = $lists[$i]; ?>
    <article class="list">
      <a class="title_link" href="list_page.php?id_list=<?=urlencode($list['id'])?>"><h3><?=htmlentities($list['name'])?></h3></a>
      <input type="button" onclick="location.href='action_delete_list.php?list_id=<?=urlencode($list['id'])?>';"/>
      <ul>
      <?php $items = getItems($list['id']);
        foreach( $items as $item) { ?>
          <li class="normal_text" ><?=htmlentities($item['name'])?></li>
      <?php } ?>
      </ul>
    </article>
  <?php } ?>
</section>
<aside id="sidebar">
  <div id="addNewList">
    <div class="box_popup">
      <a class="button_popup" href="#div_popup">
        Add New List
      </a>
    </div>
    <div id="div_popup" class="overlay_popup">
      <div class="popup">
      <a class="close" href="#">&times; </a>
      <div class="content">
        <form id="NewListName" action="action_new_list.php" method="get">
          <label>List Name:
            <input type="text" name="list_name">
          </label>
            <input type="submit" name="New List">
        </form>
      </div>
      </div>
    </div>
  </div>
  <ul>
    <?php foreach( $lists as $list) { ?>
        <li><a href="list_page.php?id_list=<?=urlencode($list['id'])?>"><?=htmlentities($list['name'])?></a></li>
    <?php } ?>
  <ul>
</aside>
