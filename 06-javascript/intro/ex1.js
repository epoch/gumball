var numberOfChildren = 9;
var partnerName = 'Donald';
var geographicLocation = 'Sunshine';
var jobTitle = 'pet food taster';

var fortune = 'You will be a ' + jobTitle + ' in ' + geographicLocation + ', and married to ' + partnerName + ' with ' + numberOfChildren + ' children';

console.log(fortune);

//===============================================================

function tellFortune(kidCount, partner, geographicLocation, jobTitle) {
  var fortune = 'You will be a ' + jobTitle + ' in ' + geographicLocation + ', and married to ' + partner + ' with ' + kidCount + ' kids';
  console.log(fortune);
}

tellFortune(9, 'Donald', 'Sunshine', 'pet food taster');
tellFortune(0, 'James', 'Middle earth', 'unicorn');
tellFortune(Infinity, 'Mario', 'Shrooms', 'plumer');
