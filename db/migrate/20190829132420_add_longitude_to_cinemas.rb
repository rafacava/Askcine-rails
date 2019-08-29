class AddLongitudeToCinemas < ActiveRecord::Migration[5.2]
  def change
    add_column :cinemas, :longitude, :float
  end
end
