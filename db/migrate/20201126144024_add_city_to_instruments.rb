class AddCityToInstruments < ActiveRecord::Migration[6.0]
  def change
    add_column :instruments, :city, :string
  end
end
