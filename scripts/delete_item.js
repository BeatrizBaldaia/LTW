'use strict';

function deleteItem(event){
  let li = event.nextElementSibling;
  let item_id = li.firstChild.nextElementSibling.firstChild.nextElementSibling.value;
  let csrf = li.parentNode.id;
  let list_id = document.querySelector('.id').innerHTML;
  let request = new XMLHttpRequest();
  request.item_id=item_id;
  request.addEventListener('load', takeItemFromDOM);
  request.open('get', 'action_delete_item.php?' + encodeForAjax({'item_id': item_id, 'csrf': csrf, 'list_id': list_id}), true);
  request.send();
}

function takeItemFromDOM(event) {
  let item_id = event.target.item_id;
  let li = document.querySelector('input[value="'+item_id+'"]').parentNode.parentNode;
  let btn = li.previousElementSibling;
  let parent = btn.parentNode;
  parent.removeChild(btn);
  parent.removeChild(li);
}
