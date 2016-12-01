class Quiz < ApplicationRecord
  belongs_to :year_group
  has_many :user_quizzes
  has_many :users, through: :user_quizzes
  has_many :quiz_questions
  has_many :questions, through: :quiz_questions
end
