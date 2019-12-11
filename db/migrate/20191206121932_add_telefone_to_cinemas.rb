class AddTelefoneToCinemas < ActiveRecord::Migration[5.2]
  def change
    add_column :cinemas, :telefone, :int
  end
end
