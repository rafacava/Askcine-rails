class AddTrailerToFilmes < ActiveRecord::Migration[5.2]
  def change
    add_column :filmes, :trailer, :string
  end
end
