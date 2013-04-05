$(document).ready(function() {
  $('input').keyup(function() {
    delay(function(){
      $('#team_search').submit();
    }, 750 );
  });  
});



var delay = (function(){
  var timer = 0;
  return function(callback, ms){
    clearTimeout (timer);
    timer = setTimeout(callback, ms);
  };
})();

