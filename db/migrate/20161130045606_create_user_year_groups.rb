class CreateUserYearGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :user_year_groups do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :year_group, foreign_key: true

      t.timestamps
    end
  end
end
