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
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

$(document).ready(function () {
  $('.alert').delay(3000).fadeOut();

  $('.weekend').click(function () {
    if ($(this).hasClass('clicked')){
      $(this).removeClass('btn-danger clicked').addClass('btn-success');
      $(this).parents('tr').removeClass('danger').addClass('success');
      $(this).parents('tr').find('th:nth-child(2), th:nth-child(3)').each(function( index, element ) {
        var html = $(element).html().replace(/Вихідний/, ' : ');
        $(element).html(html)
      });
      $(this).parents('tr').find('select').val('00').show();
    }
    else {
      $(this).removeClass('btn-success').addClass('btn-danger clicked');
      $(this).parents('tr').removeClass('success').addClass('danger');
      $(this).parents('tr').find('th:nth-child(2), th:nth-child(3)').each(function( index, element ) {
        var html = $(element).html().replace(/ : /, 'Вихідний');
        $(element).html(html)
      });
      $(this).parents('tr').find('select').val(null).hide();
    }
  });
});