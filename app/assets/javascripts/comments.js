if (window.location.href == "http://localhost:3000/posts/1"){
source = new EventSource('/posts/:id/events');

source.addEventListener('post',
  function(e){
    console.log(e.data);
  })
}else{
console.log("Holis");
}
