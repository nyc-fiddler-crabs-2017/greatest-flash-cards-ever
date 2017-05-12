class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.string :category, :null => false, :unique => true

      t.timestamps(null: false)
    end
  end
end
