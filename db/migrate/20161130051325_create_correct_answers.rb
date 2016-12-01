class CreateCorrectAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :correct_answers do |t|
      t.belongs_to :answer, foreign_key: true
      t.string :answer

      t.timestamps
    end
  end
end
