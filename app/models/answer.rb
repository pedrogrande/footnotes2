class Answer < ApplicationRecord
  belongs_to :question
  has_many :answer_codes
  has_many :codes, through: :answer_codes
  has_many :correct_answers
  has_many :user_quiz_answers
  has_many :user_quizzes, through: :user_quiz_answers
end
