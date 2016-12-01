class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.belongs_to :question_type, foreign_key: true
      t.integer :order
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
