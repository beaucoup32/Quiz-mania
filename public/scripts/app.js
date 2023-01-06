$( document ).ready(function() {
  console.log( "ready!" );
  let count = 0
  let answers = []
  $('.button-answer').on('click', function(event) {
    const userChoice = $(this).text().trim()[0]
    console.log(userChoice)
    const answer = $(this).parent().next().next().first().text().trim()
    const correctAnswer = answer[answer.length - 1]
    console.log(correctAnswer)
    if (userChoice === correctAnswer) {
      count = parseInt($('#final-count').text())
      console.log(count)
      count ++

      $('#final-count').text(count)

    }
    const selectAnswersContainers = $(this).closest('.answers-container')
    const id = selectAnswersContainers.attr('data-id')
    console.log("id", id)
    selectAnswersContainers.find('button').prop('disabled', true)
    $(this).parent().parent().next().next().css("visibility", "visible");
    answers.push({
      id: id,
      answer: userChoice
    })
    console.log('answers', answers)
  })
  $('#submit').on('click', function (event) {
    console.log('answers', answers)
    // localStorage.setItem('score', count);
    document.cookie = `score = ${count} `
  })
});


// $('#create-button').on('click', function (event) {}
