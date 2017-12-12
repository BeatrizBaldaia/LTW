'use strict';

let currentDate = new Date();
let dates = document.querySelectorAll('input[type=date]');
for (let i = 0; i < dates.length; i++) {
	dates[i].valueAsDate = currentDate;
}
