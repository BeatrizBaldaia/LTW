let btn_popup_addList = document.querySelector('#NewProjectPopup input[name="add_list"]');
if (btn_popup_addList != null) {
  btn_popup_addItem.addEventListener('click', popup_AddList);
}

function popup_AddList(event) {
  event.preventDefault();
  let listsContainer = document.querySelector('#div_popup .popup_new_lists');
  let newList = document.createElement('div');
  newList.className = "popup_new_list";

  let listNameLabel = '<label>List:';
  itemNameLabel += '<input type="text" name="list_name[]" required="required">';
  itemNameLabel += '</label>';
  let categoryLabel = '<label>List Category:';
  categoryLabel += '<select name="list_category_id[]">';
  categoryLabel += '<?php foreach($categories as $category) { ?>';
  categoryLabel += '<option value="<?= $category[\'id\'] ?>"><?= $category[\'fullName\'] ?></option>';
  categoryLabel += '<?php } ?>';
  categoryLabel += '</select>';
  categoryLabel += '</label>';
  let deadlineNameLabel = '<label>Deadline:';
  deadlineNameLabel += '<input type="date" name="list_deadline[]" required="required">';
  deadlineNameLabel += '</label>';

  newList.innerHTML = listNameLabel;
  newList.innerHTML += categoryLabel;
  newList.innerHTML += deadlineNameLabel;

  listsContainer.insertBefore(newList, listsContainer.lastElementChild);
}
