'use strict';

let listsView = document.querySelector('#lists');
let listsInitialDisplay = (listsView != null ? listsView.style.display : null);

let listsListingView = document.querySelector('#listsListing');
let listsListingInitialDisplay = (listsListingView != null ? listsListingView.style.display : null);

let listsPopupButton = document.querySelector('#new_list_button');
let listsPopupButtonInitialDisplay = (listsPopupButton != null ? listsPopupButton.style.display : null);

let listsPopup = document.querySelector('#NewListName');
let listsPopupInitialDisplay = (listsPopup != null ? listsPopup.style.display : null);

let projectsView = document.querySelector('#projects');
let projectsInitialDisplay = (projectsView != null ? projectsView.style.display : null);

let projectsListingView = document.querySelector('#projectsListing');
let projectsListingInitialDisplay = (projectsListingView != null ? projectsListingView.style.display : null);

let projectsPopupButton = document.querySelector('#new_project_button');
let projectsPopupButtonInitialDisplay = (projectsPopupButton != null ? projectsPopupButton.style.display : null);

let projectsPopup = document.querySelector('#NewProjectPopup');
let projectsPopupInitialDisplay = (projectsPopup != null ? projectsPopup.style.display : null);

let checkbox = document.querySelector('#sidebar input[type=checkbox]');
if (checkbox != null) {
  checkbox.addEventListener('click', toggleViews);
}

// Only show one view at the beginning.
/*if (listsView != null) {
  setListsView();
}*/
if(sessionStorage.getItem("toggleState")==""){
  setProjectsView();
} else {
  setListsView();
}

function setProjectsView() {
  listsView.style.display = "none";
  listsListingView.style.display = "none";
  listsPopupButton.style.display = "none";
  listsPopup.style.display = "none";

  projectsView.style.display = projectsInitialDisplay;
  projectsListingView.style.display = projectsListingInitialDisplay;
  projectsPopupButton.style.display = projectsPopupButtonInitialDisplay;
  projectsPopup.style.display = projectsPopupInitialDisplay;

  sessionStorage.setItem("toggleState", "");
}

function setListsView() {
  listsView.style.display = listsInitialDisplay;
  listsListingView.style.display = listsListingInitialDisplay;
  listsPopupButton.style.display = listsPopupButtonInitialDisplay;
  listsPopup.style.display = listsPopupInitialDisplay;

  projectsView.style.display = "none";
  projectsListingView.style.display = "none";
  projectsPopupButton.style.display = "none";
  projectsPopup.style.display = "none";
  
  sessionStorage.setItem("toggleState", "checked");
}

function toggleViews(event) {
  console.log(event.target.checked);
  if (event.target.checked) {
    setListsView();
  } else {
    setProjectsView();
  }
}
