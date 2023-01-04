// Client facing scripts here
<<<<<<< HEAD

$(() => {

})
=======
// A $( document ).ready() block.
$( document ).ready(function() {
  console.log( "ready!" );

  $('.answer').on('click', function(event) {
    console.log(event)
    $('.results').css("visibility", "visible");
  })
});


// $('#create-button').on('click', function (event) {}
>>>>>>> 7a89e8e7c772456129dc5ae46ae977a8cfa3e1ce
