var assignGrade = function(score) {
  if (score > 90) {
    return 'A';
  } else if (score > 80) {
    return 'B';
  } else if (score > 70) {
    return 'C';
  } else if (score > 60) {
    return 'D';
  } else {
    return 'F'; // Loser.
  }
}

for (var testScore = 0; testScore <= 100; testScore++) {
  console.log('for ' + testScore + ', you got a ' + assignGrade(testScore));
}