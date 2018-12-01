//= require gentelella
//= require jqvmap/maps/jquery.vmap.world
//= require jqvmap/maps/jquery.vmap.usa
//= require jquery.vmap.sampledata
//= require gentelella-custom
//= require bootstrap-datepicker
//= require trix

//Carousel

$(document).ready(function() {    
    //Events that reset and restart the timer animation when the slides change
    $("#transition-timer-carousel").on("slide.bs.carousel", function(event) {
        //The animate class gets removed so that it jumps straight back to 0%
        $(".transition-timer-carousel-progress-bar", this)
            .removeClass("animate").css("width", "0%");
    }).on("slid.bs.carousel", function(event) {
        //The slide transition finished, so re-add the animate class so that
        //the timer bar takes time to fill up
        $(".transition-timer-carousel-progress-bar", this)
            .addClass("animate").css("width", "100%");
    });
    
    //Kick off the initial slide animation when the document is ready
    $(".transition-timer-carousel-progress-bar", "#transition-timer-carousel")
        .css("width", "100%");


});

//

//Carousel 2

$(document).ready(function(){
$('.carousel').carousel({
    pause: false,
    interval: 5000
});
});

$(document).ready(function(){
$(".col-md-3 ").mouseenter(function(){
    $(this).find(".col-img-responsive02").show(200);
}); 


$(".col-md-3").mouseleave(function(){
    $(this).find(".col-img-responsive02").hide();
}); 
}); 

//

$(document).ready(function()
      {
        var navItems = $('.admin-menu li > a');
        var navListItems = $('.admin-menu li');
        var allWells = $('.admin-content');
        var allWellsExceptFirst = $('.admin-content:not(:first)');
        allWellsExceptFirst.hide();
        navItems.click(function(e)
        {
            e.preventDefault();
            navListItems.removeClass('active');
            $(this).closest('li').addClass('active');
            allWells.hide();
            var target = $(this).attr('data-target-id');
            $('#' + target).show();
        });
        });

////////////////////mostrar y ocultar password

$(document).ready(function() 
      {
         $("#showhide").click(function() 
         {
            if ($(this).data('val') == "1") 
            {
               $("#pwd").prop('type','text');
               $("#eye").attr("class","fa fa-eye-slash");
               $(this).data('val','0');
            }
            else
            {
               $("#pwd").prop('type', 'password');
               $("#eye").attr("class","fa fa-eye");
               $(this).data('val','1');
            }
         });
      });

$(document).ready(function() 
      {
         $("#showhide2").click(function() 
         {
            if ($(this).data('val') == "1") 
            {
               $("#pwd2").prop('type','text');
               $("#eye2").attr("class","fa fa-eye-slash");
               $(this).data('val','0');
            }
            else
            {
               $("#pwd2").prop('type', 'password');
               $("#eye2").attr("class","fa fa-eye");
               $(this).data('val','1');
            }
         });
      });


jQuery(function() {
  var generations;
  $('#graduate_generation_id').parent().hide();
  generations = $('#graduate_generation_id').html();
  return $('#graduate_career_id').change(function() {
    var career, escaped_career, options;
    career = $('#graduate_career_id :selected').text();
    escaped_career = career.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(generations).filter("optgroup[label=" + escaped_career + "]").html();
    if (options) {
      $('#graduate_generation_id').html(options);
      return $('#graduate_generation_id').parent().show();
    } else {
      $('#graduate_generation_id').empty();
      return $('#graduate_generation_id').parent().hide();
    }
  });

  $('#datepicker').datepicker({
      format: 'mm/dd/yyyy',
      startDate: '-3d'
  });

});

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

///////////////////datepicker

$(document).ready(function(){

  $('#datepicker').datepicker();


});

///////////////////////botonirarriba

$(document).ready(function(){
 
  $('.ir-arriba').click(function(){
    $('body, html').animate({
      scrollTop: '0px'
    }, 300);
  });
 
  $(window).scroll(function(){
    if( $(this).scrollTop() > 0 ){
      $('.ir-arriba').slideDown(300);
    } else {
      $('.ir-arriba').slideUp(300);
    }
  });
 
});

//////////////////////paginacionAJAX

$(document).on("click", ".paginationxlr a", function(){
  $.get(this.href, null, null, "script");
    return false;
});

////////////////////busquedaAJAX

//busqueda por boton
$("#achievements_search").submit(function(){
  $.get(this.action, $(this).serialize(), null, "script");
  return false;
});

$("#articles_search").submit(function(){
  $.get(this.action, $(this).serialize(), null, "script");
  return false;
});

/* //busquedarapida mientras se escribe

$(function() {
  $("#achievements_search input").keyup(function() {
    $.get($("#achievements_search").attr("action"), $("#achievements_search").serialize(), null, "script");
    return false;
  });
});
*/




////////////////////////////////contadordeletras
$(document).ready(function() {
  var input = $("#comment_descripcion");
  var label = $(".textarea-counterxlr");
  var maxVal = 200;
  
  input.keyup(function() {
    var inputLength = input.val().length;
    var counter = $(".textarea-counterxlr");
    
    $(".textarea-counterxlr").html("");
    $(".textarea-counterxlr").html(inputLength + "/200");
    
    if ( inputLength >= maxVal ) {
      label.css("color", "red");
    } else {
      label.css("color", "#289DCC");
    }
  });
}); 

/////////////////////////Fixed modals


$(document).on("click", "#botonmodalxlr", function(){
  $('#mimodalxlr').modal()
});
