'use strict';

let btn_assignUser = document.querySelector('#projectArea .projectLists li button[name=assign]');
if (btn_assignUser != null) {
  btn_assignUser.addEventListener('click', assignUser);
}

/*
@brief Adiciona item a basa de dados
*/
function assignUser(event){
  let csrf = this.parentNode['csrf'].value;
  let itemId = this.parentNode['item'].value;
  let projectId = this.parentNode['project'].value;
  let username = this.parentNode['username'].value;
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
