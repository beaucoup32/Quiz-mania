
$( document ).ready(function() {
  console.log( "ready!" );

  $('.button-answer').on('click', function(event) {
    const userChoice = $(this).text().trim()[0]
    console.log(userChoice)
    const answer = $(this).parent().next().next().first().text().trim()
    const correctAnswer = answer[answer.length - 1]
    console.log(correctAnswer)
    if (userChoice === correctAnswer) {
      let count = parseInt($('#final-count').text())
      console.log(count)
      count ++
      $('#final-count').text(count)

    }
    const selectAnswersContainers = $(this).closest('.answers-container')
    console.log("hello", selectAnswersContainers)
    selectAnswersContainers.find('button').prop('disabled', true)
    $(this).parent().parent().next().next().css("visibility", "visible");
  })
});


// $('#create-button').on('click', function (event) {}


/////////
// const shareLink = document.getElementById('share-link');

// shareLink.addEventListener('click', () => {
//   // get user's score
//   const score = getUserScore();
//   // create a message to share
//   const message = `I scored ${score} on this quiz! Can you beat it?`;
//   // copy message to clipboard
//   navigator.clipboard.writeText(message);
//   // show a message that the score copied
//   alert('Score copied to clipboard! Paste it wherever you like to share it with your friends.');
// });
