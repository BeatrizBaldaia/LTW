'use strict';

let closeBtn = document.querySelector('#div_popup .close');
if (closeBtn != null) {
  closeBtn.addEventListener('click', removeExtraFields);
}

function removeExtraFields(event) {
  let extraFields = document.querySelectorAll('#div_popup .popup_new_items, .popup_new_lists');
  while (extraFields[0].children.length > 2) {
      extraFields[0].removeChild(extraFields[0].firstChild);
  }
  while (extraFields[1].children.length > 2) {
      extraFields[1].removeChild(extraFields[1].firstChild);
  }
}
