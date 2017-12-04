<?php   include_once('database/lists.php');
  $categories = getCategories();
?>

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
      <a class="title_link" href="main_page_to-do_list.php?id_list=<?=urlencode($list['id'])?>"><h3><?=htmlentities($list['name'])?></h3></a>
      <input type="button" onclick="location.href='action_delete_list.php?list_id=<?=urlencode($list['id'])?>&csrf=<?= $_SESSION['csrf'] ?>';"/>
      <span class="dateDue">Deadline: <?=htmlentities($list['dateDue'])?></span>
      <ul>
      <?php $items = getItems($list['id']);
        foreach( $items as $item) { ?>
            <div>
                <li class="normal_text <?=($item['complet'] ? ' strikeout' : '')?>"><?=htmlentities($item['name'])?></li>
            </div>
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
          <form id="NewListName" action="action_add_new_list.php" method="post">
            <input type="hidden" name="csrf" value="<?=$_SESSION['csrf']?>">
            <label>List Name:
              <input type="text" name="list_name">
            </label>
            <label>List Category:
              <select name="list_category_id">
                <?php foreach($categories as $category) { ?>
                  <option value=<?= $category['id'] ?>><?= $category['name'] ?></option>
                <?php } ?>
              </select>
            </label>
            <label>Deadline:
              <input type="date" name="deadline">
            </label>
            <div id="popup_new_items">
              <div class="popup_new_item">
                <label>Item:
                  <input type="text" name="item_name[]">
                </label>
                <label>Priority:
                  <input type="range" name="priority[]" min="1" max="3">
                </label>
              </div>
            </div>
            <input type="button" name="add_item" value="Add Item">
            <input type="submit" name="New List" value="Save New List">
          </form>
        </div>
      </div>
    </div>
  </div>
  <ul>
    <?php foreach( $lists as $list) { ?>
        <li><a href="main_page_to-do_list.php?id_list=<?=urlencode($list['id'])?>"><?=htmlentities($list['name'])?></a></li>
    <?php } ?>
  <ul>
</aside>
