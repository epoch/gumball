App.quotes = [];

// App.quotes.push(new App.Models.Quote({ body: 'bundle', author: 'rob'}));
// App.quotes.push(new App.Models.Quote({ body: 'ji sub', author: 'ji'}));
// App.quotes.push(new App.Models.Quote({ body: 'productive', author: 'mike'}));
// App.quotes.push(new App.Models.Quote({ body: 'kissing', author: 'ji'}));

App.quotes = new App.Collections.Quotes(); // new collection
App.quotes.fetch().done(function() {
  // when done fetching from backend
  App.quotes.each(function(quote, index){
    var view = new App.Views.QuoteItemView({ model: quote });
    $('#sidebar ul').append(view.render().el);  
  });
  
}); 

$('#newQuote button').on('click', function() {

  var quoteVal = $('#newQuote input').val(); 
  console.log(quoteVal);

  // clear the input after grabbing the value
  $('#newQuote input').val('');

  // create an instance of quote model
  var quote = new App.Models.Quote({ body: quoteVal, author: 'blah'});

  App.quotes.create(quote);

  //quote.save();

  // pass the quote model instance to the view
  var view = new App.Views.QuoteItemView({ model: quote });
  $('#sidebar ul').append(view.render().el);

});


// App.quotes = new App.Quotes();

// App.quotes.fetch().done(function() {

//   App.quotes.each(function(quote, index) {
//     var view = new App.QuoteItemView({ model: quote });
//     $('#sidebar ul').append(view.render().el);
//   });  

// });











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
