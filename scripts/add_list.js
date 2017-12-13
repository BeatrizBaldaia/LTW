let btn_popup_addList = document.querySelector('#NewProjectPopup input[name=add_list]');
if (btn_popup_addList != null) {
  btn_popup_addList.addEventListener('click', popup_AddList);
}

function popup_AddList(event) {
  event.preventDefault();
  let listsContainer = document.querySelector('#div_popup .popup_new_lists');
  let newList = document.createElement('div');
  newList.className = "popup_new_list";
  let projDeadline = document.querySelector('#NewProjectPopup input[name=proj_deadline]');

  let listNameLabel = '<label>List:';
  listNameLabel += '<input type="text" name="list_name[]" required="required">';
  listNameLabel += '</label>';
  let categoryLabel = '<label>List Category:';
  categoryLabel += '<select name="list_category_id[]">';
  categoryLabel += '<?php foreach($categories as $category) { ?>';
  categoryLabel += '<option value="<?= $category[\'id\'] ?>"><?= $category[\'fullName\'] ?></option>';
  categoryLabel += '<?php } ?>';
  categoryLabel += '</select>';
  categoryLabel += '</label>';
  let deadlineNameLabel = document.createElement('label');
  deadlineNameLabel.appendChild(document.createTextNode('Deadline:'));
  let deadlineInput = document.createElement('input');
  deadlineInput.setAttribute('type', 'date');
  deadlineInput.setAttribute('name', 'list_deadline[]');
  deadlineInput.setAttribute('max', projDeadline.value);
  deadlineInput.setAttribute('required', 'required');
  deadlineInput.valueAsDate = new Date();
  deadlineNameLabel.appendChild(deadlineInput);

  newList.innerHTML = listNameLabel;
  newList.innerHTML += categoryLabel;
  newList.appendChild(deadlineNameLabel);

  listsContainer.insertBefore(newList, listsContainer.lastElementChild);
}
