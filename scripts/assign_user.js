'use strict';

let form_assignUser = document.querySelector('#projectArea .projectLists form.assignForm');
if (form_assignUser != null) {
  form_assignUser.addEventListener('submit', assignUser);
}

/*
@brief Adiciona item a basa de dados
*/
function assignUser(event) {
  event.preventDefault();
  let csrf = this['csrf'].value;
  let itemId = this['item'].value;
  let projectId = this['project'].value;
  let username = this['username'].value;
  let request = new XMLHttpRequest();
  request.open('POST', 'action_assign_item_to_user.php', true);
  request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  request.addEventListener('load', assignUser_updateHtml);
  request.send(encodeForAjax({'username': username, 'item': itemId, 'project': projectId, 'csrf': csrf}));
}

function assignUser_updateHtml() {
  let itemInfo = JSON.parse(this.responseText);

  removeForm(itemInfo.id);

  addAssignedTask(itemInfo.name);
}

function removeForm(itemID) {
  let inputItemID = document.querySelector('#projectArea .projectLists form input[value="' + itemID + '"]');
  let formToDelete = inputItemID.parentNode;
  let liParent = formToDelete.parentNode;
  liParent.removeChild(formToDelete);
}

function addAssignedTask(itemName) {
  let new_task = document.createElement('li');
  new_task.innerHTML = htmlEntities(itemName);
  let tasks = document.querySelector('#projectArea .projectAssignedTasks ul');
  tasks.append(new_task );
}
