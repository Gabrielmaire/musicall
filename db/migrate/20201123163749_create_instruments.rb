class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :category
      t.string :name
      t.text :description
      t.string :location
      t.integer :price_per_day
      t.references :owner, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
