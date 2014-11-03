var simpsons = ['homer','lisa','maggie','bart','ned'];

var getSuffix = function(num) {
  var suffix = ['','st','nd','rd','th'];
  if (num > 3) {
    return 'th';
  } else {
    return suffix[num];
  }
};

for (var i = 0; i < simpsons.length; i++) {
  console.log('My #' + (i + 1) + getSuffix(i+1) + ' choice is ' + simpsons[i]);
}