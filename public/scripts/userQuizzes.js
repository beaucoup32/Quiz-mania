const createQuizElement = (quizData) => {
  let $quizElement = $(`
  <article class="quiz-link">
  <p class="quiz-name">${quizData.quiz_name}</p>
  <div class="buttons">
    <label class="public-checkbox">Public
      <input type="checkbox" name="public-checkbox">
      <span class="checkmark"></span>
    </label>
    <button name='copy-link' type="button">Copy URL</button>
    <button name="delete-quiz" type="button">Delete</button>
  </article>
  `);

  return $quizElement;
};

const renderQuizzes = (quizArr) => {
  //clear quizzes section
  $(".user-quiz-container").empty;

  // add new quizzes to top
  for (let quiz of quizArr) {
    const $quizElement = createQuizElement(quiz);

    if (quiz.public) {
      $("input[name='public-checkbox']").prop("checked", true);
    }
    $(".user-quiz-container").prepend($quizElement);
  }
};

const loadQuizzes = () => {
  $.getJSON("/api/user-quizzes/", (data) => {
    console.log(data.quizzes);
    renderQuizzes(data.quizzes);
  });
};

$(() => {
  //check cookie for login
  if (!Cookies.get("user_id")) {

    return window.location.href = "/quiz";
  };

  loadQuizzes();

  $(".user-quiz-container").on(
    "click",
    "button[name='delete-quiz']",
    function (event) {
      event.preventDefault();

      // delete quiz element from container
      $(this).parent().parent().remove();
    }
  );

  $(":button[name='create-quiz']").on("click", function (event) {
    event.preventDefault();

    window.location.href = "/quiz/create";
  });

  $("nav").on("click", "button[name='home-button']", function (event) {
    event.preventDefault();

    window.location.href = "/quiz";
  });

  const $myQuizzes = $("<button name='MyQuizzes' class='nav-button my-quizzes'>My Quizzes</button>");

  $(".nav-options").prepend($myQuizzes);
  $(".login").html('Logout');

  $('.nav-options').on("click", ".login", function (event) {
    event.preventDefault();

    if (Cookies.get("user_id")) {

      Cookies.remove("user_id");
      window.location.href = "/quiz";
    };
  });

  $('.nav-options').on('click', "button[name='MyQuizzes']", function(event) {
    event.preventDefault();

    window.location.href = `/user/${Cookies.get('user_id')}/quizzes`;
  });
  
});
