<?php   include_once('database/lists.php');
  if (isset($_SESSION['username'])){
    $notify = getNotify($_SESSION['username']); ?>
    <div id="notify" class=<?= (count($notify) > 0) ? 'visible' : 'invisible' ?>>
      <input type="checkbox" id="notify_input">
      <label for="notify_input"></label>
      <div id="notify_popup" class="overlay_popup">
        <div class="popup">
          <label class="close" for="notify_input">&times; </label>
          <div class="content">
            <h1>Reached The Deadline</h1>
            <ul>
              <?php foreach( $notify as $list) {?>
                <li><a href="main_page_to-do_list.php?id_list=<?=urlencode($list['id'])?>"><p><?=htmlentities($list['name'])?></p></a></li>
              <?php  } ?>
            </ul>
          </div>
        </div>
      </div>
    </div>
  <?php  }
?>
