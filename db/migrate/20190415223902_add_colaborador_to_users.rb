class AddColaboradorToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :colaborador, :boolean, default: false
  end
end
