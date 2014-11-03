var currentYear = 2014;
var birthYear = 1943;

var ageBirthday = currentYear - birthYear;
var ageBeforeBirthday = ageBirthday - 1;

var message = 'they are either ' + ageBirthday + ' or ' + ageBeforeBirthday;

console.log(message);

//===================================

function calculateAge(birthYear, currentYear) {
  if (currentYear === undefined) {
    currentYear = (new Date()).getFullYear();
  }

  var ageBirthday = currentYear - birthYear;
  var ageBeforeBirthday = ageBirthday - 1;

  console.log('You are either ' + ageBeforeBirthday + ' or ' + ageBirthday);
};

calculateAge(1970);
calculateAge(1970, 2020);
calculateAge(2013, 2014);