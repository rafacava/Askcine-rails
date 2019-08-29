class RemoveLongFromCinemas < ActiveRecord::Migration[5.2]
  def change
    remove_column :cinemas, :long, :string
  end
end
