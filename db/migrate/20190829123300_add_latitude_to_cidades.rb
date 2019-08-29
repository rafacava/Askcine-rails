class AddLatitudeToCidades < ActiveRecord::Migration[5.2]
  def change
    add_column :cidades, :latitude, :float
  end
end
