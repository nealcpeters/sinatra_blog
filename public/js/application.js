$(document).ready(function() {
  $("#create").on("click", function(e){
    e.preventDefault();
    console.log("just stopped from refreshing");
    $.get('/posts/create/',function(data){
      console.log(data)

    })


  })
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
