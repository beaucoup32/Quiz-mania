// Client facing scripts here

$(() => {

})
// A $( document ).ready() block.
$( document ).ready(function() {
  console.log( "ready!" );

  $('.answer').on('click', function(event) {
    console.log(event)
    $('.results').css("visibility", "visible");
  })
});


// $('#create-button').on('click', function (event) {}
