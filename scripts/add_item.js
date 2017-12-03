'use strict';

let btn_addItem = document.querySelector('#list_unique #new_item input[value="Add"]');
if (btn_addItem != null) {
  btn_addItem.addEventListener('click', addItem);
}

function addItem(event){
  let itemName = document.querySelector('#list_unique #new_item input[type="text"]').value;
  let listId = document.querySelector('#list_unique .id').innerHTML;
  let request = new XMLHttpRequest();
  request.open('get', 'action_add_item.php?' + encodeForAjax({'item': itemName, 'list': listId}), true);
  request.addEventListener('load', allItems);
  request.send();
}
function allItems(event){
  let new_item = document.createElement('li');
  let itemInfo = JSON.parse(this.responseText);
  new_item.innerHTML = htmlEntities(itemInfo.name) + '<input type="checkbox" name="item_complete" value="' + htmlEntities(itemInfo.id) + '">';
  let items = document.querySelector('#list_unique ul');
  items.append(new_item);
  document.querySelector('#list_unique #new_item input[type="text"]').value = "";
}

//TODO PROFESSOR
function htmlEntities(str) {
    return String(str).replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');
}
