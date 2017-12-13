<section id="setOfLists" class="<?= getCategory($list['category'])['cat'] ?>">
    <article>
      <h1><?=htmlentities($list['name'])?></h1>
      <span class="id"><?=htmlentities($list['id'])?></span>
      <span class="dateDue">Deadline: <?=htmlentities($list['dateDue'])?></span>
      <input type="button" onclick="location.href='action_delete_list.php?list_id=<?=urlencode($list['id'])?>&csrf=<?= $_SESSION['csrf'] ?>';">
      <ul id="<?= $_SESSION['csrf'] ?>">
      <?php $items = getItems($list['id']);
        foreach( $items as $item) { ?>
          <input type="button" class="delete_item_btn" onclick="deleteItem(this);" value="-">
          <li class="priority<?= getPriority($item['id'])['priority'] ?>">
            <span><?=htmlentities($item['name'])?>
              <input type="checkbox" name="item_complete" value="<?=htmlentities($item['id'])?>" <?= ($item['complet'] ? 'checked' : '')?>>
            </span>
          </li>
      <?php } ?>
      </ul>
      <form id="new_item">
        <input type="hidden" name="listId" value="<?= htmlentities($list['id']); ?>">
        <input type="text" class="<?= getCategory($list['category'])['cat'] ?>" name="item_name">
        <div>
          <label>Priority:
            <input type="range" name="priority" min="1" max="3">
          </label>
          <input type="submit" value="Add">
        </div>
      </form>
    </article>
</section>
