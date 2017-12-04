'use strict';

let text = document.querySelector("input[list=countries]");
if (text != null) {
	text.addEventListener("keyup", countryChanged);
}

// Handler for change event on text input
function countryChanged(event) {
  let text = event.target;

  let request = new XMLHttpRequest();
  request.addEventListener("load", countriesReceived);
  request.open("get", "database/getcountries.php?name=" + text.value, true);
  request.send();
}

// Handler for ajax response received
function countriesReceived() {
  let countries = JSON.parse(this.responseText);
  let list = document.querySelector("datalist[id=countries]");
  list.innerHTML = ""; // Clean current countries

  // Add new suggestions
  for (let country in countries) {
    let item = document.createElement("option");
		item.value = countries[country].name;
    list.appendChild(item);
  }
}
