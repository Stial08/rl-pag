Flive.Router = Backbone.Router.extend({
  routes: {
    'posts/:id' : 'showView'
  },

  showView: function(id){
    //this.postsView = new Flive.Views.postsView(); 
    var id_pag = id;
    if (isNaN(parseFloat(id))){
      console.log('Aqui NO esta permitido'); 
    }else{
      this.addListener(id_pag);
    }
  },

  addListener: function(id_pag){
     source = new EventSource("/posts/"+id_pag+"/events");
     source.addEventListener('post', function(e){
                                                  console.log("post"+id_pag+""+e.data+"");
                                                });
  }

});
