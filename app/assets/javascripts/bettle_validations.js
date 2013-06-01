// comon validation function -> returns true of validation passed

// check if field is empty
var notEmpty = function(value) {
  console.log("1");
  if (value !== "") 
  	return true

  return false
}


// check if only numbers -> integer/whole number
var containsOnlyNumbers = function(value) {
  console.log("2");
  reg = new RegExp('^\\d*$');
  if (reg.test(value))
  	return true 

  return false
}


// client side validation function go here

// only numeric values for: win, loose, day, minutes, hours
var isNumberKey = function(evt, id)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57)) {
           $(id).text('only numeric values');
           return false;
         } 
         else {
           $(id).text('');
           return true;
        }
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




// array of elements that must be checked
var fieldsToBeValidated = [

  ["#bettle_win_maker", [0,1], '#maker_win_error', "Only numbers allowed (no decimals)"]
  //["#bettle_maker_outcome_id", [0,1], []]
  // "#bettle_taker_outcome_id",
  // "#bettle_win_maker",
  // "#bettle_win_taker",
  // "#days",
  // "#minutes",
  // "#hours",
  // "#bettle_expiration_time"
]

var validFunctionArray = [
  notEmpty,
  containsOnlyNumbers
]


// function to loop though all the elements that ought to be checked

var callValidations = function() {
  $.each(fieldsToBeValidated, function(index, el) {
     var value = $(el[0]).val();
     console.log(el[0]);
     console.log($(el[0]));
     aaa = $(el[0]);
     console.log(value);
     $.each(el[1], function(index, func) {
       if (!validFunctionArray[func](value)) {
         $(el[2]).text(el[3]);
       } else {
         $(el[2]).text("");
       } 
     });
  });
}







