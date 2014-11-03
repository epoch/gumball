var age = 40;
var maxAge = 134;
var amountPerDay = 24;

var yearsRemaining = maxAge - age;
var daysRemaining = yearsRemaining * 365.25;
var lifetimeSupply = daysRemaining * amountPerDay;

var message = 'You will need ' + lifetimeSupply + ' to last you until the ripe old age of ' + maxAge;
console.log(message);

//============================================

function calculateSupply(age, amountPerDay) {
  var maxAge = 120;
  var yearsRemaining = maxAge - age;
  var daysRemaining = yearsRemaining * 365.25; // Including leap years.
  var supply = Math.round(amountPerDay * daysRemaining);

  console.log('You will need ' + supply + ' to last you until the ripe old age of ' + age);
};

calculateSupply(15, 100);
calculateSupply(100, 1.7);
calculateSupply(121, 7);