'use strict';

let btn_inviteUser = document.querySelector('#projectArea .projectMembers form button[name=invite]');
if (btn_inviteUser != null) {
  btn_inviteUser.addEventListener('click', inviteUser);
}

/*
@brief Adiciona item a basa de dados
*/
function inviteUser(event){
  let csrf = this.parentNode['csrf'].value;
  let projectId = this.parentNode['project'].value;
  let username = this.parentNode['username'].value;
  let request = new XMLHttpRequest();
  request.open('POST', 'action_add_user_to_project.php', true);
  request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  request.addEventListener('load', inviteUser_updateHtml);
  request.send(encodeForAjax({'username': username, 'project': projectId, 'csrf': csrf}));
}

function inviteUser_updateHtml(event) {
  let username = JSON.parse(this.responseText);
  let new_member = document.createElement('li');
  new_member.innerHTML = htmlEntities(username);
  let members = document.querySelector('#projectArea .projectMembers ul');
  members.append(new_member);
  document.querySelector('#projectArea .projectMembers label > input[type="text"]').value = "";
}
