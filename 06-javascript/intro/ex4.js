var radius = 142;
var circumference = 2 * Math.PI * radius;
console.log('The circumference is ' + circumference);

var area = Math.PI * radius * radius;
console.log('The area is ' + area);

//====================================

// function calcCircumference(radius) {
//   var circumference = 2 * Math.PI * radius;
//   console.log('The circumference is ' + circumference);
// }

var calcCircumference = function(radius) {
  var circumference = 2 * Math.PI * radius;
  console.log('The circumference is ' + circumference);
};

calcCircumference(50);

var calcArea = function(radius) {
  var area = Math.PI * radius * radius;
  console.log('The area is ' + area);
};

calcArea(5);