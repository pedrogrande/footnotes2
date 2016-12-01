class Question < ApplicationRecord
  belongs_to :question_type
  has_many :answers
  has_many :quiz_questions
  has_many :quizzes, through: :quiz_questions
  has_many :user_quizzes
  has_many :users, through: :user_quizzes
end
