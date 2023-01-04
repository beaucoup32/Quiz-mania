
const createQuizElement = (quizData) => {

  let $quizElement = $(`
  <article class="quiz-link">
  <p class="quiz-name">${quizData.quiz_name}</p>
  <div class="buttons">
    <label class="public-checkbox">Public
      <input type="checkbox">
      <span class="checkmark"></span>
    </label>
    <button>Copy URL</button>
    <button>Delete</button>
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
    $('.user-quiz-container').prepend($quizElement);
  }
};

const loadQuizzes = () => {

  $.getJSON('/api/user-quizzes/', (data) => {
    console.log(data);
    renderQuizzes(data.quizzes);
  });
};

$(() => {

  console.log('hello');
  loadQuizzes();

})
