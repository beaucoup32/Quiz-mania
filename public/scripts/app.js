// Client facing scripts here
// A $( document ).ready() block.
$( document ).ready(function() {
  console.log( "ready!" );

  $('.answer').on('click', function(event) {
    const userChoice = $(this).text().trim()[0]
    console.log(userChoice)
    const answer = $(this).parent().parent().next().next().first().text().trim()
    const correctAnswer = answer[answer.length - 1]
    console.log(correctAnswer)
    if (userChoice === correctAnswer) {
    let count = parseInt($('#final-count').text())
    console.log(count)
    count ++
    $('#final-count').text(count)
    }
    $(this).parent().parent().next().next().css("visibility", "visible");
  })
});


// $('#create-button').on('click', function (event) {}


