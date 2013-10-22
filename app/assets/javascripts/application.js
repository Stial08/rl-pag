// This is a manifest file that'll be compiled into application, which will include all the files
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
//= require turbolinks
//
//= require bootstrap
//
//= require lib/jquery-1.10.2
//= require lib/underscore-min
//= require lib/backbone-min
//
//require ./app/routers
//
//= require ./app/Flive
//= require ./app/router
//= require_tree ./app/views
//= require_tree ./app/collections
//= require_tree ./app/models

$(function(){
  Flive.init();
})
