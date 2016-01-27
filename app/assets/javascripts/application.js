// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
// require turbolinks


//FOR BOOTSTRAP-SASS
//= require bootstrap-sprockets

//DATEPICKER3
//= require bootstrap-datepicker
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es.js

//DATETIMEPICKER
//= require moment
//= require bootstrap-datetimepicker


//= require_tree .


$(document).ready(function() {
  // para number input, solo aceptar numero y teclas especiales
$("#quantity-input").keydown(function (e) {

        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
             // Allow: Ctrl+A
            (e.keyCode == 65 && e.ctrlKey === true) ||
             // Allow: Ctrl+C
            (e.keyCode == 67 && e.ctrlKey === true) ||
             // Allow: Ctrl+X
            (e.keyCode == 88 && e.ctrlKey === true) ||
             // Allow: home, end, left, right
            (e.keyCode >= 35 && e.keyCode <= 39)) {
                 // let it happen, don't do anything
                 return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }

    });
// para input number convertir a entero
$("#quantity-input").blur(function (e) {

      if($(this).val() == ""){
      $(this).val(1);
      }
      else{
        if($(this).val()<1){
        $(this).val(1);
        }
        else{
          var num = $(this).val();
          var num_f = parseInt(num);
          $(this).val(num_f);
        }

      }
        });

    });

    /*
    $(function() {
  initPage();
});
$(window).bind('page:change', function() {
  initPage();
});
function initPage() {
  // Page ready code...
}
*/
