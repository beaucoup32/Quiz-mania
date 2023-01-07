$(document).ready(function () {
  console.log("ready!");
  let count = 0
  let answers = []
  $('.button-answer').on('click', function (event) {
    const userChoice = $(this).text().trim()[0]
    console.log(userChoice)
    const answer = $(this).parent().next().next().first().text().trim()
    const correctAnswer = answer[answer.length - 1]
    console.log(correctAnswer)
    if (userChoice === correctAnswer) {
      count = parseInt($('#final-count').text())
      console.log('score:', count);
      count++

      $('#final-count').text(count)
      // console.log(count)

    }
    const selectAnswersContainers = $(this).closest('.answers-container')
    const id = selectAnswersContainers.attr('data-id')
    console.log("id", id)
    selectAnswersContainers.find('button').prop('disabled', true)

    $('.results').not(selectAnswersContainers.next().next()).css('visibility', 'hidden');
    selectAnswersContainers.next().next().css('visibility', 'visible');
    // $(this).parent().parent().next().next().css("visibility", "visible");
    // $('.results').css('visibility', 'visible');
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

  $(":button[name='create-quiz']").on("click", function (event) {
    event.preventDefault();

    window.location.href = "/quiz/create";
  });

  $("nav").on("click", "button[name='home-button']", function (event) {
    event.preventDefault();

    window.location.href = "/quiz";
  });

  const $myQuizzes = $("<button name='MyQuizzes' class='nav-button my-quizzes'>My Quizzes</button>");

  //check cookie for login
  if (Cookies.get("user_id")) {

    $(".login").html('Logout');

    $(".nav-options").prepend($myQuizzes);

  } else {

    $(".login").html('Login');
  }

  $('.nav-options').on('click', '.login', function (event) {
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

  $('.nav-options').on('click', "button[name='MyQuizzes']", function (event) {
    event.preventDefault();

    window.location.href = `/user/${Cookies.get('user_id')}/quizzes`;
  });

});


// $('#create-button').on('click', function (event) {}
