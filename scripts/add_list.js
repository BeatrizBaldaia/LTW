let btn_popup_addList = document.querySelector('#NewProjectPopup input[name=add_list]');
if (btn_popup_addList != null) {
  btn_popup_addList.addEventListener('click', popup_AddList);
}

function popup_AddList(event) {
  event.preventDefault();

  let requestCategories = new XMLHttpRequest();
  requestCategories.open('GET', 'action_get_categories.php', false);
  requestCategories.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  requestCategories.send();
  let categories = JSON.parse(requestCategories.responseText);

  let listsContainer = document.querySelector('#div_popup .popup_new_lists');
  let newList = document.createElement('div');
  newList.className = "popup_new_list";
  let projDeadline = document.querySelector('#NewProjectPopup input[name=proj_deadline]');

  let listNameLabel = document.createElement('label');
  listNameLabel.appendChild(document.createTextNode('List:'));
  let listNameInput = document.createElement('input');
  listNameInput.setAttribute('type', 'text');
  listNameInput.setAttribute('name', 'list_name[]');
  listNameInput.setAttribute('required', 'required');
  listNameLabel.appendChild(listNameInput);

  let categoryLabel = document.createElement('label'); //'<label>List Category:';
  categoryLabel.appendChild(document.createTextNode('List Category:'));
  let categoryInput = document.createElement('select');
  categoryInput.setAttribute('name', 'list_category_id[]');
  for (let i = 0; i < categories.length; i++) {
    let categoryOption = document.createElement('option');
    categoryOption.setAttribute('value', categories[i]['id']);
    categoryOption.appendChild(document.createTextNode(categories[i]['fullName']));
    categoryInput.appendChild(categoryOption);
  }
  categoryLabel.appendChild(categoryInput);

  let deadlineNameLabel = document.createElement('label');
  deadlineNameLabel.appendChild(document.createTextNode('Deadline:'));
  let deadlineInput = document.createElement('input');
  deadlineInput.setAttribute('type', 'date');
  deadlineInput.setAttribute('name', 'list_deadline[]');
  deadlineInput.setAttribute('max', projDeadline.value);
  deadlineInput.setAttribute('required', 'required');
  deadlineInput.valueAsDate = new Date();
  deadlineNameLabel.appendChild(deadlineInput);

  newList.appendChild(listNameLabel);
  newList.appendChild(categoryLabel);
  newList.appendChild(deadlineNameLabel);

  listsContainer.insertBefore(newList, listsContainer.lastElementChild);
}
