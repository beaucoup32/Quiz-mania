
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


  $("nav").on("click", "button[name='home-button']", function (event) {
    event.preventDefault();

    window.location.href = "/quiz";
  });

  $(":button[name='create-quiz']").on('click', function(event) {
    event.preventDefault();

    window.location.href = '/quiz/create';
  });


  const $myQuizzes = $("<button name='MyQuizzes' class='nav-button my-quizzes'>My Quizzes</button>");

  //check cookie for login
  if (Cookies.get("user_id")) {

    $(".login").html('Logout');

    $(".nav-options").prepend($myQuizzes);

  } else {

    $(".login").html('Login');
  }

  $('.nav-options').on('click','.login', function(event) {
    event.preventDefault();

    if (Cookies.get("user_id")) {

      $(".my-quizzes").remove();
      Cookies.remove('user_id');
      $(".login").html('Login');

    } else {

      // change user cookie here (quiz.js, create-quiz.js, app.js, )
      Cookies.set('user_id', 3);
      $(".login").html('Logout');
      $(".nav-options").prepend($myQuizzes);

    };
  });

  $('.nav-options').on('click', "button[name='MyQuizzes']", function(event) {
    event.preventDefault();

    window.location.href = `/user/${Cookies.get('user_id')}/quizzes`;
  });
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
