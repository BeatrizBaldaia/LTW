<section id="projectArea">
  <section class="project_header">
    <h1><?=htmlentities($project['name'])?></h1>
    <span class="id"><?=htmlentities($project['id'])?></span>
    <span class="project_deadline">Deadline: <?=htmlentities($project['deadline'])?></span>
    <input type="button" onclick="location.href='action_delete_project.php?project_id=<?=urlencode($project['id'])?>&csrf=<?= $_SESSION['csrf'] ?>';"/>
  </section>
  <section class="container">
  <section class="projectLists">
    <h1>Lists</h1>
    <section class="scroll_section">
    <ul>
    <?php $lists = getProjectLists($project['id']);
      foreach( $lists as $list) {
        $items = getItems($list['id']);
        ?>
        <a class="title_link" href="main_page_to-do_list.php?id_list=<?=urlencode($list['id'])?>"><h2><?=htmlentities($list['name'])?></h2></a>
        <ul>
        <?php
          foreach( $items as $item) { ?>
            <li>
              <span><?=htmlentities($item['name'])?></span>
              <?php
              if(!isItemAssigned($item['id'])) { ?>
                <form action="action_assign_item_to_user.php" method="post">
                  <input type="hidden" name="csrf" value="<?= $_SESSION['csrf'] ?>">
                  <input type="hidden" name="item" value="<?= $item['id'] ?>">
                  <input type="hidden" name="project" value="<?= $project['id'] ?>">
                  <label>
                    Assign User <input type="text" placeholder="username" name="username">
                  </label>
                  <button type="button" name="assign">Assign</button>
                </form>
              <?php } ?>
            </li>
        <?php } ?>
        </ul>
      <?php } ?>
    </ul>
  </section>
  </section>
  <section class="projectMembers">
    <h1>Members</h1>
    <section class="scroll_section">
      <ul>
      <?php $members = getMembers($project['id']);
      foreach ($members as $member) { ?>
        <li><?= htmlentities($member['user']); ?></li>
      <?php } ?>
     </ul>
     <form action="action_add_user_to_project.php" method="post">
       <input type="hidden" name="csrf" value="<?= $_SESSION['csrf'] ?>">
       <input type="hidden" name="item" value="<?= $item['id'] ?>">
       <input type="hidden" name="project" value="<?= $project['id'] ?>">
       <label>
         Invite User <input type="text" placeholder="username" name="username">
       </label>
       <button type="button" name="invite" value="Invite to Project">
     </form>
    </section>
  </section>
  <section class="projectAssignedTasks">
    <?php $tasks = getTasks($_SESSION['username'], $project['id']); ?>
    <h1>My Assigned Tasks</h1>
    <section class="scroll_section">
      <ul>
        <?php foreach ($tasks as $task) { ?>
          <li><?= $task['name']; ?></li>
        <?php } ?>
      </ul>
    </section>
  </section>
</section>
</section>
