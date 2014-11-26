var App = App || {};

App.Collections.Quotes = Backbone.Collection.extend({
  model: App.Models.Quote,
  url: '/quotes'
});