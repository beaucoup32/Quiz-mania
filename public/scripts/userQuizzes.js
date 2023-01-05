
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
  $('.user-quiz-container').empty;

  // add new quizzes to top
  for (let quiz of quizArr) {
    const $quizElement = createQuizElement(quiz);

    if (quiz.public) {
      $("input[name='public-checkbox']").prop('checked', true);
    }
    $('.user-quiz-container').prepend($quizElement);
  }
};

const loadQuizzes = () => {

  $.getJSON('/api/user-quizzes/', (data) => {

    console.log(data.quizzes);
    renderQuizzes(data.quizzes);
  });
};

$(() => {

  loadQuizzes();

  $(".user-quiz-container").on('click', "button[name='delete-quiz']", function(event) {
    event.preventDefault();

    // delete quiz element from container
    $(this).parent().parent().remove();
  });

  $(":button[name='create-quiz']").on('click', function(event) {
    event.preventDefault();

    window.location.href = '/quiz/create';
  });

  $("nav").on('click', "button[name='home-button']", function(event) {
    event.preventDefault();

    window.location.href = '/quiz';
  });
})
