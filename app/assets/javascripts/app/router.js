Flive.Router = Backbone.Router.extend({
  routes: {
    'posts/:id' : 'showView'
  },

  showView: function(id){
    var id_pag = id;
    if (isNaN(parseFloat(id))){
      console.log('Aqui NO esta permitido'); 
    }else{
      this.addListener(id_pag);
      this.postsView = new Flive.Views.postsView(); 
    }
  },

  addListener: function(id_pag){
    source = new EventSource("/posts/"+id_pag+"/events");
    source.addEventListener('post', function(e){
      message = $.parseJSON(e.data)
      //$('.display-comments').append("<div class='comment' id='comment_"+message+">"+message+"</div>")
      console.log(message);
    });
  }

});
