'use strict';

/**
 * Add class="startedInput" to all inputs once anything is written to them.
 */

 let inputs = document.querySelectorAll('input');
 if (inputs != null) {
   for (let i = 0; i < inputs.length; i++) {
     inputs[i].onkeypress = setEdited;
   }
 }

 function setEdited(event) {
   if ( !this.classList.contains('startedInput'))
    this.className = "startedInput " + this.className;
 }
