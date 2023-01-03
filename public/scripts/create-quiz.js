$('#create-button').prop('disabled', true);

// console.log($('#add-question-button'))
let questionCount = 0;

$('#add-question-button').on('click', function (event) {
  //logs event when add-question is clicked
  console.log(event.target);

  if (questionCount < 10) {
    const $question = $(`
  <div class="question-input">
    <div class="question-input-field">
      <Label for="question">Question</Label>
      <input type="text" name="question">
    </div>
    <div>
      <Label for="choice-a">Choice A</Label>
      <input type="text" name="choice-a">
      <Label for="choice-b">Choice B</Label>
      <input type="text" name="choice-b">
    </div>
  <div>
    <Label for="choice-c">Choice C</Label>
    <input type="text" name="choice-c">
    <Label for="choice-d">Choice D</Label>
    <input type="text" name="choice-d">
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
  }

  //trash can delete question
  // $('.fa-trash-can').on('click', function (event) {
  //   $(event.target).closest('.question-input').next('.answer-select').remove();
  //   $(event.target).closest('.question-input').remove();
  //   questionCount--;
  // })

  if (questionCount < 1) {
    $('#create-button').prop('disabled', true);
  } else {
    $('#create-button').prop('disabled', false);
  }

  if (questionCount === 10) {
    $('#add-question-button').prop('disabled', true);
  }
})

