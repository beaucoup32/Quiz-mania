$('#create-button').prop('disabled', true);

$('#cancel-create-button').on('click', function (event) {
  window.location.href = '/quiz';
});

// console.log($('#add-question-button'))
let questionCount = 0;

$('#add-question-button').on('click', function (event) {
  //logs event when add-question is clicked
  console.log(event.target);

  // get the user input
  const userInput = $('.question-input').val();
  // escape the user input to prevent any potentially malicious code from being executed
  const escapedInput = $('<div>').text(userInput).html();
  // set the value of the input field to the escaped input
  $('.question-input').val(escapedInput);

  if (questionCount < 10) {
    const $question = $(`
    <div class="question-input">
    <div class="question-input-field">
    <Label for="question">Question</Label>
    <input type="text" name="question">
    </div>
    <div>
    <Label for="choice-a">Choice A</Label>
    <input type="text" name="choice_a">
    <Label for="choice-b">Choice B</Label>
    <input type="text" name="choice_b">
    </div>
    <div>
    <Label for="choice-c">Choice C</Label>
    <input type="text" name="choice_c">
    <Label for="choice-d">Choice D</Label>
    <input type="text" name="choice_d">
    </div>
    </div>

    <div class="answer-select">
    <select id="answer-select" name="answer">
    <option value="" disabled selected>Correct Answer</option>
    <option value="answer-a">A</option>
    <option value="answer-b">B</option>
    <option value="answer-c">C</option>
    <option value="answer-d">D</option>
    </select>
    </div>
    `)

    $('form.create-quiz-input').append($question)
    questionCount++;

    if (questionCount >= 0) {
      $('#create-button').prop('disabled', false);
    }
    // // trash can delete question <i class="fa-regular fa-trash-can"></i>
    // $('.fa-trash-can').on('click', function (event) {
    //   $(event.target).closest('.question-input').next('.answer-select').remove();
    //   $(event.target).closest('.question-input').remove();
    //   questionCount--;
    // });
    $('#add-question-button').toggle(questionCount < 10);
  };
});

$('#create-button').on('click', function (event) {
  event.preventDefault(); // prevent the form from submitting normally

  // serialize the form data
  const quizData = $('form.create-quiz-input').serialize();

  // send the form data through an AJAX request
  $.ajax({
    url: '/quiz', // server endpoint
    type: 'POST', // type of request
    data: quizData, // data to be sent with the request
    success: function (response) {
      console.log(response);
      // redirect to '/users/:id/quizzes'
      window.location.href = '/users/:id/quizzes';
    },
    error: function (error) {
      console.log(error);
    }
  });
});



