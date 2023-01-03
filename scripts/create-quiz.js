const addQuestionButton = document.getElementById('add-question-button');
const questionTemplate = document.getElementById('question-template');

addQuestionButton.addEventListener('click', function (event) {
  // Prevent the default reload
  event.preventDefault();
  // Clone the question template and append it to the form
  const newQuestion = questionTemplate.content.cloneNode(true);
  document.querySelector('.create-quiz-input').appendChild(newQuestion);
});
