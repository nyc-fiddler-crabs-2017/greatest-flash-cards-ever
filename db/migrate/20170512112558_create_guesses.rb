class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.string     :user_input, :null => false
      t.boolean    :first_try, :null => false
      t.references :card, :null => false
      t.references :round, :null => false

      t.timestamps(null: false)
    end
  end
end
