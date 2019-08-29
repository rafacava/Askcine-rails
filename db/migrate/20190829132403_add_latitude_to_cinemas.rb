class AddLatitudeToCinemas < ActiveRecord::Migration[5.2]
  def change
    add_column :cinemas, :latitude, :float
  end
end
