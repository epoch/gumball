// ruby

// def method_name
//   x = 2
//   $y = 3
// end

// x => ERROR
// $y => 3

function blah() {
  x = 2;
  var y = 3;
}

blah();
x // returns 2
y // ERROR
