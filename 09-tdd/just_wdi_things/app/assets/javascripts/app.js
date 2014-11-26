App.quotes = [
  { body: 'bundle', author: 'rob' }, 
  { body: 'ji sub', author: 'ji'}, 
  { body: 'productive tuesday', author: 'mike' },
  { body: 'kissing symbols', author: 'ji' }
];

_.each(App.quotes, function(quote, index) {
  var view = new App.QuoteItemView({ model: quote });
  $('#sidebar ul').append(view.render().el);
});



$('#newQuote button').on('click', function() {

  var quoteVal = $('#newQuote input').val(); 
  console.log(quoteVal);

  // clear the input after grabbing the value
  $('#newQuote input').val('');

  var quoteObject = { body: quoteVal, author: 'blah' };
  var view = new App.QuoteItemView({ model: quoteObject });
  $('#sidebar ul').append(view.render().el);
});











// var tick = function() {

//   var count = 0;
//   setInterval(function() {
//     var $li = $('li');
//     console.log(count);
//     $li.eq(count).trigger('click');
//     count++;
//     if (count >= $li.length) { count = 0; }

//   }, 3000);
// }();
