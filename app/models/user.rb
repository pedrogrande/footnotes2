class User < ApplicationRecord
  has_one :profile
  has_many :user_quizzes
  has_many :quizzes, through: :user_quizzes
  has_many :user_year_groups
  has_many :year_groups, through: :user_year_groups

  # accepts_nested_attributes_for :profile
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
