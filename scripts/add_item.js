'use strict';

let btn_addItem = document.querySelector('#setOfLists article #new_item input[value="Add"]');
if (btn_addItem != null) {
  btn_addItem.addEventListener('click', addItem);
}

let btn_popup_addItem = document.querySelector('#NewListName input[name="add_item"]');
if (btn_popup_addItem != null) {
  btn_popup_addItem.addEventListener('click', popup_AddItem);
}


function addItem(event){
  let itemName = document.querySelector('#setOfLists > article > #new_item input[type="text"]').value;
  let listId = document.querySelector('#setOfLists > article > .id').innerHTML;
  let request = new XMLHttpRequest();
  request.open('get', 'action_add_new_item.php?' + encodeForAjax({'item': itemName, 'list': listId}), true);
  request.addEventListener('load', allItems);
  request.send();
}
function allItems(event){
  let new_item = document.createElement('li');
  let itemInfo = JSON.parse(this.responseText);
  new_item.innerHTML = htmlEntities(itemInfo.name) + '<input type="checkbox" name="item_complete" value="' + htmlEntities(itemInfo.id) + '">';
  let items = document.querySelector('#setOfLists > article > ul');
  items.append(new_item);
  document.querySelector('#setOfLists > article > #new_item input[type="text"]').value = "";
}


//TODO PROFESSOR
function htmlEntities(str) {
    return String(str).replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;');
}


function popup_AddItem(event) {
  let itemsContainer = document.getElementById('popup_new_items');
  let newItem = itemsContainer.children[0];
  itemsContainer.innerHTML += newItem.outerHTML;
}