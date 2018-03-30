$(document).ready(function(){
  setTimeout(function(){
    $('#flash_message').fadeOut("slow", function(){
      $(this).remove();
    });
  }, 3000);
});