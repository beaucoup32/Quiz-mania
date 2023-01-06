
const createElement = (data) => {

  let $element = $(`
    <div class="quiz-box">
      <button class="category-button" name="start-quiz" type="button">
          <i class="fa-regular fa-image fa-5x"></i>
          <h2 class="quiz-header">${data.category}</h2>
      </button>
      </div>
  `);

  return $element;
};

const renderElements = (elementArr) => {


  for (let element of elementArr) {
    const $element = createElement(element);

    $('.category').prepend($element);
  }
};

const loadElements = () => {
  $.getJSON('/api/quiz-categories/', (data) => {

    renderElements(data.categories);
  });
};

$(() => {

  loadElements();

  $('.category').on('click', "button[name='create-a-quiz']", function(event) {
    event.preventDefault();

    window.location.href = '/quiz/create';
  })

  $('.category').on('click', "button[name='start-quiz']", function(event) {
    event.preventDefault();

    const $this = $(this).children()[1].innerHTML;

    // console.log($this);

    window.location.href = `/${$this}`;
  });

  $(":button[name='random-quiz']").on('click', function(event) {
    event.preventDefault();

    window.location.href = '/qstart';
  });

  $(":button[name='create-quiz']").on('click', function(event) {
    event.preventDefault();

    window.location.href = '/quiz/create';
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
})
