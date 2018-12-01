# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery(function() {
  var generations;
  $('#graduate_generation_id').parent().hide();
  generations = $('#graduate_generation_id').html();
  console.log(generations);
  return $('#graduate_career_id').change(function() {
    var career, escaped_career, options;
    career = $('#graduate_career_id :selected').text();
    escaped_career = career.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(generations).filter("optgroup[label=" + escaped_career + "]").html();
    console.log(options);
    if (options) {
      $('#graduate_generation_id').html(options);
      return $('#graduate_generation_id').parent().show();
    } else {
      $('#graduate_generation_id').empty();
      return $('#graduate_generation_id').parent().hide();
    }
  });
});