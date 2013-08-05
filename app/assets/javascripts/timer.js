 $(document).ready(function () {

function delayedAlert() {
  timeoutID = window.setTimeout(slowAlert, 2000);
}

function slowAlert() {
  alert("That was really slow!");
}

 // $('#new_task').click(new_task);
 $('#timer').on('click', '.delayed_Alert_button', delayedAlert);

   });