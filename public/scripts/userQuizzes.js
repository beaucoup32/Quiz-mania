const createQuizElement = (quizData) => {
  let $quizElement = $(`
  <article class="quiz-link">
  <p class="quiz-name">${quizData.quiz_name}</p>
  <div class="buttons">
    <label class="public-checkbox">Public
      <input type="checkbox" name="public-checkbox">
      <span class="checkmark"></span>
    </label>
    <button name='copy-link' type="button" value=localhost:8080/quiz/${quizData.quiz_url}>Copy URL</button>
    <button name="delete-quiz" type="button">Delete</button>
  </article>
  `);

  return $quizElement;
};

const renderQuizzes = (quizArr) => {
  //clear quizzes section
  $(".user-quiz-container").empty();

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
    return (window.location.href = "/quiz");
  }

  loadQuizzes();

  $(".user-quiz-container").on(
    "click",
    "button[name='delete-quiz']",
    function (event) {
      event.preventDefault();

      // delete quiz element from container
      $.ajax({
        url: "/user/quizzes",
        type: "POST",
        data: {
          user_id: Cookies.get("user_id"),
          quiz_name: $(this).parent().parent().children().html(),
        },

        success: function () {
          loadQuizzes();
        },
      });
  });

  // copy value in copylink button to clipboard
  $('.user-quiz-container').on("click", ":button[name='copy-link']", function(event) {
    event.preventDefault();

    const $this = $(this).val();
    const $temp = $("<input>");
    console.log($this);

    $("body").append($temp);
    $temp.val($this).select();
    document.execCommand("copy");
    $temp.remove();

  });

  // redirect quiz link to quiz
  $('.user-quiz-container').on("click", 'article.quiz-link', function(event) {
    event.preventDefault();


    const $this = $(this).find("button")[0].value;

    return window.location.href = `/quiz/${$this}`;
  });



  $(":button[name='create-quiz']").on("click", function (event) {
    event.preventDefault();

    return window.location.href = "/quiz/create";
  });

  $("nav").on("click", "button[name='home-button']", function (event) {
    event.preventDefault();

    return window.location.href = "/quiz";
  });

  const $myQuizzes = $(
    "<button name='MyQuizzes' class='nav-button my-quizzes'>My Quizzes</button>"
  );

  $(".nav-options").prepend($myQuizzes);
  $(".login").html("Logout");

  $(".nav-options").on("click", ".login", function (event) {
    event.preventDefault();

    if (Cookies.get("user_id")) {
      Cookies.remove("user_id");
      return window.location.href = "/quiz";
    }
  });

  $(".nav-options").on("click", "button[name='MyQuizzes']", function (event) {
    event.preventDefault();

    return window.location.href = `/user/${Cookies.get("user_id")}/quizzes`;
  });
});
