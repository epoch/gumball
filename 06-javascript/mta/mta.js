function getTripin(startStation, stopStation) {

  var mta = {
    n: ['ts', '34th', '28th-n', '23rd-n', 'us'],
    l: ['8th', '6th', 'us', '3rd', '1st'],
    s: ['gc', '33rd', '28th-s', '23rd-s', 'us']
  }

  var startLine = 'n';
  var stopLine = 'n';
  // var startStation = 'ts';
  // var stopStation = '23rd-n';
  var trip = [];

  var startStationIndex = mta[startLine].indexOf(startStation);
  var stopStationIndex = mta[stopLine].indexOf(stopStation);

  if (startLine === stopLine) {
    // console.log('same line');

    if (startStationIndex < stopStationIndex) {
      trip = mta[startLine].slice(startStationIndex, stopStationIndex+1);
    } else {
      trip = mta[startLine].slice(stopStationIndex, startStationIndex+1).reverse();
    }
  }

  // } else {
  //   console.log('multi line');
  //   var transfer1Index = mta[startLine].indexOf('us');
  //   var transfer2Index = mta[stopLine].indexOf('us');

  //   if (transfer1Index < stopStationIndex) {
  //     tripA = mta[startLine].slice(transfer1Index, startStationIndex).reverse();
  //   } else {
  //     tripA = mta[startLine].slice(startStationIndex, transfer1Index+1);
  //   }

  //   if (transfer2Index < stopStationIndex) {
  //     tripB = mta[stopLine].slice(transfer2Index, stopStationIndex);
  //   } else {
  //     tripB = mta[stopLine].slice(stopStationIndex, transfer2Index+1).reverse();
  //   }
  //   console.log(tripA);
  //   console.log(tripB);
  //   trip = tripA.concat(tripB);
  // }

  return trip;
}


var shoutOut = function() {
  // get value of the input boxes
  var startStation = document.getElementById('start-station').value;
  var stopStation = document.getElementById('stop-station').value; 

  // calculate the trip
  var trip = getTripin(startStation, stopStation);

  console.log(trip);

  var output = document.getElementById('output');
  output.innerHTML = trip;
};


var button = document.getElementById('go');

button.addEventListener('click', shoutOut);
