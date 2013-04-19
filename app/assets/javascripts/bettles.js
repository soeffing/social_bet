$(document).ready(function() {
  




});


var transition_step = function(id, home_team, abroad_team){

  $('[id^="new_bettle_step_"]').css('display', 'none');
  $('#new_bettle_step_' + id).css('display', 'block');

  if (id == 2){
    // initialize clientside valiations
    $('form#new_bettle').enableClientSideValidations();
    // hide the exact date selection
    $('#exact_date').css('display', 'none');

    // modify the outcome option with the according teams
    $('#bettle_maker_outcome_id').children()[0].text = $('#home-team').text() + ' wins';
    $('#bettle_maker_outcome_id').children()[2].text = $('#abroad-team').text() + ' wins';

    // reverse order -> so index of children have to be opposite
    $('#bettle_taker_outcome_id').children()[2].text = $('#home-team').text() + ' wins';
    $('#bettle_taker_outcome_id').children()[0].text = $('#abroad-team').text() + ' wins';
   
    $('#selected_fixture_step_2').append($('#selected_fixture_step_1').children());

  }

  if (id == 1){

    $('#selected_fixture_step_1').append($('#selected_fixture_step_2').children());
  }

} 



var date_selection = function(val) {
   // hide/show time selection mode
    if (val == 0) {
      $('#time_span').css('display', 'block');
      $('#exact_date').css('display', 'none');
    } else {
      $('#time_span').css('display', 'none');
      $('#exact_date').css('display', 'block');
    }
   }


var cash_or_honor_bet = function(el){
  $('#cash_bet').toggle(); 
}


// checks if rivals dont bet on same outcome

var outcome_validation = function(el) {
  if ($('#bettle_maker_outcome_id').val() == $('#bettle_taker_outcome_id').val()) {
    // alert('You cannot bet on the same result as your rival. Duh!')
    $('#bettle_outcome_selection').prepend('<p id="outcome_warning"> You cannot bet on the same result as your rival. Duh! </p>');
    $("#new_bettle input[type='submit']").attr('disabled', 'disabled');
  } else {
     $('#outcome_warning').remove();
     $("#new_bettle input[type='submit']").removeAttr('disabled');
  }

}
