// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$(function() {
  $('#search input').keypress(function(e){
    if(e.which == 13){
      var q = $('#q').val().replace(/\./g,'');
      var href = $(location).attr("href")
      if (href.indexOf('/search/') != -1)
        href = href.split('/search/')[0];
      else if (href.indexOf('?') != -1)
        href = href.split('?')[0];
      var req = href + '/search/' + q;
      window.location = req;
      return false;
    }
  });
});
