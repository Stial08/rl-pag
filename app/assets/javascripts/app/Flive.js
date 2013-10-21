var Flive = {
  Models: {},
  Collections: {},
  Views: {},
  init: function(){
    Flive.router = new Flive.Router();
    Backbone.history.start({pushState: "pushState" in window.history});
  }
};

