'use strict';

let btn_assignUser = document.querySelector('#projectArea .projectLists li button[name=assign]');
if (btn_assignUser != null) {
  btn_assignUser.addEventListener('click', assignUser);
}

/*
@brief Adiciona item a basa de dados
*/
function assignUser(event){
  let csrf = this.parentNode[0].value;
  let itemId = this.parentNode[1].value;
  let username = this.parentNode[2].value;
  let request = new XMLHttpRequest();
  request.open('POST', 'action_assign_item_to_user.php', true);
  request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  request.addEventListener('load', assignUser_updateHtml);
  request.send(encodeForAjax({'username': username, 'item': itemId, 'csrf': csrf}));
}

function assignUser_updateHtml() {
  
}
