class Code < ApplicationRecord
  has_many :answer_codes
  has_many :answers, through: :answer_codes
end
