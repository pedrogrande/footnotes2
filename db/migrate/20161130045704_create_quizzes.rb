class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.belongs_to :year_group, foreign_key: true
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
