'use strict';

let form_inviteUser = document.querySelector('#projectArea .projectMembers form.addMemberForm');
if (form_inviteUser != null) {
  form_inviteUser.addEventListener('submit', inviteUser);
}

/*
@brief Adiciona item a basa de dados
*/
function inviteUser(event){
  event.preventDefault();
  let csrf = this['csrf'].value;
  let projectId = this['project'].value;
  let username = this['username'].value;
  let request = new XMLHttpRequest();
  request.open('POST', 'action_add_user_to_project.php', true);
  request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  request.addEventListener('load', inviteUser_updateHtml);
  request.send(encodeForAjax({'username': username, 'project': projectId, 'csrf': csrf}));
}

function inviteUser_updateHtml(event) {
  if(this.responseText == "") {
    console.log("Invalid User");
    return;
  }
  let username = JSON.parse(this.responseText);
  let new_member = document.createElement('li');
  new_member.innerHTML = htmlEntities(username);
  let members = document.querySelector('#projectArea .projectMembers ul');
  members.append(new_member);
  document.querySelector('#projectArea .projectMembers label > input[type="text"]').value = "";
}
