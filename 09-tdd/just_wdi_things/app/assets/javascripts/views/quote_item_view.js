var App = App || {};

App.QuoteItemView = Backbone.View.extend({

  tagName: 'li',
  events: {
    'click': 'selectQuote'
  },

  hey: function() {
    console.log('sdfsdf');
  },

  render: function() {
    var template = $('#quoteItemView').html();
    var quoteItemHTML = Handlebars.compile(template);

    this.$el.html(quoteItemHTML({ 
      'body': this.model.body,
      'author': this.model.author 
    }));
    return this;
  },

  selectQuote: function() {
    this.$el.parent().find('li').removeClass('highlight');
    this.$el.addClass('highlight');
    $('#quote').find('p').hide().html(this.model.body).fadeIn();
  }
});