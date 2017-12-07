'use strict';

let notified = document.querySelector('div#notify_popup .popup .close');
if (notified != null) {
  notified.addEventListener('click', markNotified);
}

function markNotified(event){
  let request = new XMLHttpRequest();
  request.open('get', 'action_markNotified.php', true);
  request.send();
  let bell = document.querySelector('#notify');
  console.log(bell);
  bell.setAttribute("class", "invisible");
}
