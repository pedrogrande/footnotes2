class CreateQuizQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :quiz_questions do |t|
      t.belongs_to :quiz, foreign_key: true
      t.belongs_to :question, foreign_key: true

      t.timestamps
    end
  end
end
