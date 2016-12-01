rails g scaffold Profile user:belongs_to first_name last_name gender school
rails g scaffold YearGroup name code
rails g model UserYearGroup user:belongs_to year_group:belongs_to
rails g scaffold Quiz year_group:belongs_to name description:text image
rails g scaffold QuestionType name description:text num_of_answers_required:integer
rails g scaffold Question question_type:belongs_to order:integer title description:text
rails g model QuizQuestion quiz:belongs_to question:belongs_to
rails g scaffold Answer question:belongs_to order:integer title description:text image
rails g scaffold Code name description:text
rails g model AnswerCode answer:belongs_to code:belongs_to
rails g scaffold CorrectAnswer answer:belongs_to answer
rails g model UserQuiz user:belongs_to quiz:belongs_to
rails g model UserQuizAnswer user_quiz:belongs_to answer:belongs_to
