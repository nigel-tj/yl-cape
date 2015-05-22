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
//= require scripts
//= require pongstagr.am
//= require jquery_ujs
//= require bootstrap-sprockets

$('#selector').pongstgrm({ show: 'recent' });
$(document).ready(function () {
 
  $('#selector').pongstgrm({
    accessId:     '2f60e1a62f3047bfb5c6361fa47600c1',
    accessToken:  '1052563623.1fb234f.99cb9eff244d48e8a71027ed63f6830f'
  });
 
});

//= require_tree .
