$(() => {
  $("#create-button").prop("disabled", true);

  $("#cancel-create-button").on("click", function (event) {
    window.location.href = "/quiz";
  });

  // console.log($('#add-question-button'))
  let questionCount = 0;

  $("#add-question-button").on("click", function (event) {
    //logs event when add-question is clicked
    // console.log(event.target);

    // get the user input
    const userInput = $(".question-input").val();
    // escape the user input to prevent any potentially malicious code from being executed
    const escapedInput = $("<div>").text(userInput).html();
    // set the value of the input field to the escaped input
    $(".question-input").val(escapedInput);

    if (questionCount < 10) {
      const $question = $(`
    <div class="question-input">
    <div class="question-input-field">
    <Label for="question">Question*</Label><i class="fa-regular fa-trash-can"></i>
    <input type="text" name="question" required="required">
    </div>
    <div>
    <Label for="choice-a">Choice A*</Label>
    <input type="text" name="choice_a" required="required">
    <Label for="choice-b">Choice B*</Label>
    <input type="text" name="choice_b" required="required">
    </div>
    <div>
    <Label for="choice-c">Choice C*</Label>
    <input type="text" name="choice_c" required="required">
    <Label for="choice-d">Choice D*</Label>
    <input type="text" name="choice_d" required="required">
    </div>

    <div class="answer-select">
    <select id="answer-select" name="answer" required="required">
    <option value="" disabled selected>Choose Answer*</option>
    <option value="answer-a">A</option>
    <option value="answer-b">B</option>
    <option value="answer-c">C</option>
    <option value="answer-d">D</option>
    </select>
    </div>
    </div>
    `);

      $("form.create-quiz-input").append($question);

      // if (questionCount >= 0) {
      // // if (inputField.value != null) {
      //   $('#create-button').prop('disabled', false);
      // }

      // // trash can delete question <i class="fa-regular fa-trash-can"></i>
      $question.find(".fa-trash-can").on("click", function (event) {
        $(event.target).closest(".question-input").remove();
        questionCount--;
        $("#add-question-button").toggle(questionCount < 10);
      });

      questionCount++;
      $("#add-question-button").toggle(questionCount < 10);
    }
  });

  //check for emtpy or null fields in question answer fields has bugs
  $("form.create-quiz-input").on("input", function () {
    let formValid = true;

    $("form.create-quiz-input input, form.create-quiz-input select").each(
      function () {
        if ($(this).val() === null || $(this).val() === "") {
          formValid = false;
          return false; // exit the loop
        }
      }
    );

    if (formValid) {
      // all fields are filled out
      $("#create-button").prop("disabled", false);
    } else {
      // one or more fields are empty
      $("#create-button").prop("disabled", true);
    }
  });

  //check for empty or null quiz fields has bugs
  const quizName = $('input[name="quizName"]').val();
  const difficulty = $("#difficulty-select").val();
  const category = $("#category-select").val();

  if (
    quizName !== "" &&
    difficulty !== "" &&
    category !== "" &&
    answer !== ""
  ) {
    $("#create-button").prop("disabled", true);
  }

  $("#create-button").on("click", function (event) {
    event.preventDefault(); // prevent the form from submitting normally

    // serialize the form data
    const quizData = $("form.create-quiz-input").serialize();

    // send the form data through an AJAX request
    $.ajax({
      url: "/quiz", // server endpoint
      type: "POST", // type of request
      data: quizData, // data to be sent with the request
      success: function (response) {
        console.log(response);
        // redirect to '/users/:id/quizzes'
        // window.location.href = `/user/${req.param.id}/quizzes`;
        // redirect to '/user/:id/quizzes'
        const userId = response.owner_id;

        //window.location.href = '/user/:id/quizzes'; undefined userId at the moment
        window.location.href = `/user/${userId}/quizzes`;
      },
      error: function (error) {
        console.log(error);
      },
    });
  });

  $("nav").on("click", "button[name='home-button']", function (event) {
    event.preventDefault();

    window.location.href = "/quiz";
  });

  $(":button[name='create-quiz']").on("click", function (event) {
    event.preventDefault();

    window.location.href = "/quiz/create";
  });

  const $myQuizzes = $(
    "<button name='MyQuizzes' class='nav-button my-quizzes'>My Quizzes</button>"
  );

  //check cookie for login
  if (Cookies.get("user_id")) {
    $(".login").html("Logout");

    $(".nav-options").prepend($myQuizzes);
  } else {
    $(".login").html("Login");
  }

  $(".nav-options").on("click", ".login", function (event) {
    event.preventDefault();

    if (Cookies.get("user_id")) {
      $(".my-quizzes").remove();
      Cookies.remove("user_id");
      $(".login").html("Login");
    } else {
      // change user cookie here (quiz.js, create-quiz.js, app.js, )
      Cookies.set("user_id", 3);
      $(".login").html("Logout");
      $(".nav-options").prepend($myQuizzes);
    }
  });

  $(".nav-options").on("click", "button[name='MyQuizzes']", function (event) {
    event.preventDefault();

    window.location.href = `/user/${Cookies.get("user_id")}/quizzes`;
  });
});
