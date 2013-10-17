var Flive = {
  Models: {},
  Collections: {},
  Views: {},
  Router: {},
  init: function(){
    Flive.Router = new FliveRoutes();
    Backbone.history.start();
  }
};

var FliveRoutes = Backbone.Router.extend({

  routes: function(){
    'posts/:id' : 'show'
  },

  show: function(id){
    alert("hello post number"+ id +"");
  }

});

$(document).ready(Flive.init())
