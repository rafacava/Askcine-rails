class RemoveLatFromCinemas < ActiveRecord::Migration[5.2]
  def change
    remove_column :cinemas, :lat, :string
  end
end
