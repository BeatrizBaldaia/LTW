'use strict';

// Set max value of list dates as project deadline at the beginning.
let firstProjDeadline = document.querySelector('#NewProjectPopup input[name=proj_deadline]');
if (firstProjDeadline != null) {
	updatePopupDateMax(firstProjDeadline);
}

// Update max value of list dates as project deadline when the latter changes.
function updatePopupDateMax(projDeadline) {
	console.log(projDeadline);
	let newListDates = document.querySelectorAll('#NewProjectPopup .popup_new_list input[name="list_deadline[]"]');
	for (let i = 0; i < newListDates.length; i++) {
		newListDates[i].setAttribute('max', projDeadline.value);
	}
}
