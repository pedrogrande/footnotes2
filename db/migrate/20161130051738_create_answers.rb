class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.belongs_to :question, foreign_key: true
      t.integer :order
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
