var transition_step = function(id, home_team, abroad_team){

  $('[id^="new_bettle_step_"]').css('display', 'none');
  $('#new_bettle_step_' + id).css('display', 'block');

  if (id == 2){

    $('#bettle_maker_outcome_id').children()[0].text = $('#home-team').text() + ' wins';
    $('#bettle_maker_outcome_id').children()[2].text = $('#abroad-team').text() + ' wins';
    $('#bettle_taker_outcome_id').children()[0].text = $('#home-team').text() + ' wins';
    $('#bettle_taker_outcome_id').children()[2].text = $('#abroad-team').text() + ' wins';
    $('#selected_fixture_step_2').append($('#selected_fixture_step_1').children());

  }

  if (id == 1){

    $('#selected_fixture_step_1').append($('#selected_fixture_step_2').children());
  }

} 
