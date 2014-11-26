var App = App || {};

App.Views.QuoteItemView = Backbone.View.extend({

  tagName: 'li',
  events: {
    'click': 'selectQuote',
    'click .del': 'deleteQuote'
  },

  initialize: function() {
    this.listenTo(this.model, 'change', this.render);
  },

  deleteQuote: function(event) {
    event.preventDefault();

    this.model.destroy();
    this.remove();
  },

  render: function() {
    var template = $('#quoteItemView').html();
    var quoteItemHTML = Handlebars.compile(template);

    this.$el.html(quoteItemHTML( this.model.toJSON() )); 
    return this;
  },

  selectQuote: function() {
    this.$el.parent().find('li').removeClass('highlight');
    this.$el.addClass('highlight');
    $('#quote').find('p').hide().html(this.model.get("body")).fadeIn();
  }
});