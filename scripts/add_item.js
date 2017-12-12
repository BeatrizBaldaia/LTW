'use strict';

let btn_addItem = document.querySelector('#setOfLists article #new_item input[value="Add"]');
if (btn_addItem != null) {
  btn_addItem.addEventListener('click', addItem);
}

let btn_popup_addItem = document.querySelector('#NewListName input[name="add_item"]');
if (btn_popup_addItem != null) {
  btn_popup_addItem.addEventListener('click', popup_AddItem);
}

/*
@brief Adiciona item a basa de dados
*/
function addItem(event){
  let itemName = document.querySelector('#setOfLists > article > #new_item > input[type="text"]').value;
  let itemPriority = document.querySelector('#setOfLists > article > #new_item > div > label > input[type="range"]').value;
  let listId = document.querySelector('#setOfLists > article > .id').innerHTML;
  let request = new XMLHttpRequest();
  request.open('get', 'action_add_new_item.php?' + encodeForAjax({'item': itemName, 'list': listId, 'priority': itemPriority}), true);
  request.addEventListener('load', allItems);
  request.send();
}
/*
@brief Adiciona item a lista do html
*/
function allItems(event){
  let itemInfo = JSON.parse(this.responseText);
  let listId = document.querySelector('#setOfLists > article > .id').innerHTML;
  let btn_csrf = document.querySelector('#setOfLists > article > ul > input').getAttribute('onclick');
  let regexS = "[\\?&]"+'csrf'+"=([^&#]*)";
  let regex = new RegExp( regexS );
  let results = regex.exec(btn_csrf);
  btn_csrf = results[1];
  let new_item_btn = document.createElement('input');
  new_item_btn.setAttribute('type', 'button');
  new_item_btn.setAttribute('class', 'delete_item_btn');
  new_item_btn.setAttribute('value', '-');
  new_item_btn.setAttribute('onclick', 'location.href=\'action_delete_item.php?item_id=' + htmlEntities(itemInfo.id) + '&csrf=' + btn_csrf + '&list_id=' + listId + ';');
  let new_item = document.createElement('li');
  new_item.setAttribute('class', 'priority' + itemInfo.priority);
  new_item.innerHTML ='<span>' + htmlEntities(itemInfo.name) + '<input type="checkbox" name="item_complete" value="' + htmlEntities(itemInfo.id) + '"></span>';
  let items = document.querySelector('#setOfLists > article > ul');
  items.append(new_item_btn);
  items.append(new_item);
  document.querySelector('#setOfLists > article > #new_item input[type="text"]').value = "";
}


//TODO PROFESSOR
function htmlEntities(str) {
    return String(str).replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');
}

function popup_AddItem(event) {
  event.preventDefault();
  let itemsContainer = document.querySelector('#div_popup .popup_new_items');
  let newItem = document.createElement('div');
  newItem.className = "popup_new_item";

  let itemNameLabel = '<label>Task:';
  itemNameLabel += '<input type="text" name="item_name[]" required="required">';
  itemNameLabel += '</label>';
  let priorityLabel = '<label>Priority:';
  priorityLabel += '<input type="range" name="priority[]" min="1" max="3">';
  priorityLabel += '</label>';

  newItem.innerHTML = itemNameLabel;
  newItem.innerHTML += priorityLabel;

  itemsContainer.insertBefore(newItem, itemsContainer.lastElementChild);
}
