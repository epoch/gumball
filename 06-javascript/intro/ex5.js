var celcius = 22;
var fahrenheit = 1.8 * celcius + 32;
console.log(celcius + ' degrees celcius ' + fahrenheit + ' fahrenheit');

fahrenheit = 71.6
celcius = (fahrenheit - 32) / 1.8;
console.log(fahrenheit + ' fahrenheit ' + celcius + ' degrees celcius');

//==========================================

function celsiusToFahrenheit(celsius) {
  var fahrenheit = celsius * 1.8 + 32;
  console.log(celsius + "°C is " + fahrenheit + "°F");
}

celsiusToFahrenheit(100);

function fahrenheitToCelsius(fahrenheit) {
  var celsius = (fahrenheit - 32) / 1.8;
  console.log(fahrenheit + "°F is " + celsius + "°C");
}

fahrenheitToCelsius(100);