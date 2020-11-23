class CreateRentalRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :rental_requests do |t|
      t.date :start_date
      t.date :end_date
      t.string :status
      t.float :total_price
      t.references :renter, foreign_key: { to_table: :users }
      t.references :instrument, foreign_key: true
      t.timestamps
    end
  end
end
