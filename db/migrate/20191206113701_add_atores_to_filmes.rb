class AddAtoresToFilmes < ActiveRecord::Migration[5.2]
  def change
    add_column :filmes, :atores, :string
  end
end
