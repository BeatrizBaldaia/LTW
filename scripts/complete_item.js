'use strict';

let list = document.querySelector('#list_unique');

list.addEventListener('change', markComplete);
function markComplete(event){
  let item = event.srcElement;
  let request = new XMLHttpRequest();
  request.open('get', 'mark_complete.php?' + encodeForAjax({'id_item': item.value, 'complete': item.checked}), true);
  request.send();
}
//Funcao do professor
function encodeForAjax(data) {
  return Object.keys(data).map(function(k){
    return encodeURIComponent(k) + '=' + encodeURIComponent(data[k])
  }).join('&');
}
