class CreateQuestionTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :question_types do |t|
      t.string :name
      t.text :description
      t.integer :num_of_answers_required

      t.timestamps
    end
  end
end
