// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

$(document).ready(function(){
  $(".nav-button").click(function () {
    $(".navig-slim,.nav-button,.primary-nav").toggleClass("open");
  });    
});

  $(document).ready(function()
{
  $('.mutual').popover(
  {
     trigger: 'hover',
     html: true,
     placement: 'bottom',
     content: 'add dobavlu'
  });
});

  $(document).ready(function()
{
  $('.others').popover(
  {
     trigger: 'hover',
     html: true,
     placement: 'bottom',
     content: 'GOOD'
  });
});

 $(document).ready(function()
{
  $('.btn_slayd').popover(
  {
     trigger: 'hover',
     html: true,
     placement: 'bottom',
     content: 'v razrabotke'
  });
});