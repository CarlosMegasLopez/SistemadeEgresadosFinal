# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery(function() {
  var generations;
  $('#user_generation_id').parent().hide();
  generations = $('#user_generation_id').html();
  return $('#user_career_id').change(function() {
    var career, escaped_career, options;
    career = $('#user_career_id :selected').text();
    escaped_career = career.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(generations).filter("optgroup[label=" + escaped_career + "]").html();
    if (options) {
      $('#user_generation_id').html(options);
      return $('#user_generation_id').parent().show();
    } else {
      $('#user_generation_id').empty();
      return $('#user_generation_id').parent().hide();
    }
  });
});