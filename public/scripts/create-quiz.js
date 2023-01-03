console.log($('#add-question-button'))
$('#add-question-button').on('click', function (event) {
  event.preventDefault();

  console.log(event.target);

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

})

// const addQuestionButton = document.getElementById('add-question-button');
// const questionTemplate = document.getElementById('question-template');

// addQuestionButton.addEventListener('click', function (event) {
//   // Prevent the default reload
//   event.preventDefault();
//   //limit to 10 questions per quiz
//   if (questionCounter >= 10) {
//     return;
//   }
//   questionCounter++;

//   // Clone the question template and append it to the form
//   const newQuestion = questionTemplate.content.cloneNode(true);
//   document.querySelector('.create-quiz-input').appendChild(newQuestion);
// });

