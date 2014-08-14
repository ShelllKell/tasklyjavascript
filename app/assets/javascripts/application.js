//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery-ui

$(document).ready(function () {
  var button = $('button');

  button.on('click', function () {
    var button = $(this);
    var ul = button.parents('.task-list').find('ul');
    ul.toggle();
    button.siblings('task-list').hide

  });


  $("button").on("click", function () {
    var button = $(this);

    if (button.text() == button.data("text-swap")) {
      button.text(button.data("text-original"));
    } else {
      button.data("text-original", button.text());
      button.text(button.data("text-swap"));
    }
  });


  var flash = $('.flash');
  var flashButton = $('.flash-button');
  flash.fadeOut(5000);
  flashButton.on('click', function(){
    flash.remove();
  });


    $( "#task_due_date" ).datepicker();
  });






