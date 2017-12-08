<section id="lists">
  <?php
    $displayedLists = 0;
    for ($i = 0; $i < $numLists; $i++) {
        if ($displayedLists >= 3) {
            break;
        }
        $list = $lists[$i];
        if ($list['diff'] < 0) {
            continue;
        }
        $displayedLists++; ?>
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
<section id="projects">

</section>
<aside id="sidebar">
  <div>
    <label class="switch">
      <input type="checkbox" checked>
      <span class="slider">
        <span class="leftToggle">lists</span>
        <span class="rightToggle">projects</span>
      </span>
    </label>
  </div>
  <div id="addNewList">
    <div id="new_list_button" class="box_popup">
      <a class="button_popup" href="#div_popup">
        Add New List
      </a>
    </div>
    <div id="new_project_button" class="box_popup">
      <a class="button_popup" href="#div_popup">
        Add New Project
      </a>
    </div>
    <div id="div_popup" class="overlay_popup">
      <div class="popup">
        <a class="close" href="#">&times; </a>
        <div class="content">
          <form id="NewListName" action="action_add_new_list.php" method="post">
            <input type="hidden" name="csrf" value="<?=$_SESSION['csrf']?>">
            <label>List Name:
              <input type="text" name="list_name" required="required">
            </label>
            <label>List Category:
              <select name="list_category_id">
                <?php foreach($categories as $category) { ?>
                  <option value="<?= $category['id'] ?>"><?= $category['fullName'] ?></option>
                <?php } ?>
              </select>
            </label>
            <label>Deadline:
              <input type="date" name="deadline" required="required">
            </label>
            <div class="popup_new_items">
              <div class="popup_new_item">
                <label>Task:
                  <input type="text" name="item_name[]" required="required">
                </label>
                <label>Priority:
                  <input type="range" name="priority[]" min="1" max="3">
                </label>
              </div>
              <input type="submit" name="add_item" value="Add Item">
            </div>
            <input type="submit" name="New List" value="Save New List">
          </form>
          <form id="NewProjectPopup" action="action_add_new_project.php" method="post">
            <input type="hidden" name="csrf" value="<?=$_SESSION['csrf']?>">
            <label>Project Name:
              <input type="text" name="project_name" required="required">
            </label>
            <label>Deadline:
              <input type="date" name="proj_deadline" required="required">
            </label>
            <div class="popup_new_items">
              <div class="popup_new_item">
                <label>List:
                  <input type="text" name="list_name[]" required="required">
                </label>
                <label>List Category:
                  <select name="list_category_id[]">
                    <?php foreach($categories as $category) { ?>
                      <option value="<?= $category['id'] ?>"><?= $category['fullName'] ?></option>
                    <?php } ?>
                  </select>
                </label>
                <label>Deadline:
                  <input type="date" name="list_deadline[]" required="required">
                </label>
              </div>
              <input type="submit" name="add_list" value="Add List">
            </div>
            <input type="submit" name="new_project" value="Save New Project">
          </form>
        </div>
      </div>
    </div>
  </div>
  <ul id="listsListing">
    <?php foreach( $lists as $list) { ?>
        <li><a href="main_page_to-do_list.php?id_list=<?=urlencode($list['id'])?>"><?=htmlentities($list['name'])?></a></li>
    <?php } ?>
  </ul>
  <ul id="projectsListing">
    <?php foreach( $projects as $project) { ?>
        <li><a href="main_page_to-do_list.php?id_list=<?=urlencode($project['id'])?>"><?=htmlentities($project['name'])?></a></li>
    <?php } ?>
  </ul>
</aside>
