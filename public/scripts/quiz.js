
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
  $('.category').empty;

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

    window.location.href = '/qstart';
  });

  $(":button[name='create-quiz']").on('click', function(event) {
    event.preventDefault();

    window.location.href = '/quiz/create';
  });


  //check cookie for login
  if (Cookies.get("user_id")) {

    $(".login").html('Logout');

  } else {

    $(".login").html('Login');
  }

  $('.login').on('click', function(event) {
    if (Cookies.get("user_id")) {

      Cookies.remove('user_id');
      $(".login").html('Login');
    } else {

      Cookies.set('user_id', 3);
      $(".login").html('Logout');
    };
  });

})
