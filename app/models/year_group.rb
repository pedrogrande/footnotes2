class YearGroup < ApplicationRecord
  has_many :quizzes
  has_many :user_year_groups
  has_many :users, through: :user_year_groups

  def self.highest
    order(name: :desc).first
  end
end
