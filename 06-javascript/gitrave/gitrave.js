var squares = document.getElementById('contributions-calendar').getElementsByTagName('rect');

var randomRGB = function () {
    return Math.floor(Math.random() * (255 - 0));
};

var gitRave = function () {
  setInterval( function () {
    for (var i = 0; i < squares.length; i++) {
      squares[i].style.fill = 'rgb(' + randomRGB() + ',' + randomRGB() + ',' + randomRGB() + ')';
    };
    document.getElementsByTagName('body')[0].style.backgroundColor = 'rgb(' + randomRGB() + ',' + randomRGB() + ',' + randomRGB() + ')';
  }, 10);
};

gitRave();