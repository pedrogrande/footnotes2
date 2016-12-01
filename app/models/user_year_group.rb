class UserYearGroup < ApplicationRecord
  belongs_to :user
  belongs_to :year_group
end
