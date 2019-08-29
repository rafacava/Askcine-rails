class AddLongitudeToCidades < ActiveRecord::Migration[5.2]
  def change
    add_column :cidades, :longitude, :float
  end
end
