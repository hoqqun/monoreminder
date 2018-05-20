$(document).on 'turbolinks:load', ->
  $('.button-collapse').sideNav()
  $('.parallax').parallax();
  $('#item_image1').uploadThumbs({position: '#preview1'})
  $('#item_image2').uploadThumbs({position: '#preview2'})
  $('#item_image3').uploadThumbs({position: '#preview3'})
  $('#location_image').uploadThumbs({position: '#preview'})