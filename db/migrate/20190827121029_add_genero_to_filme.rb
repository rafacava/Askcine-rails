class AddGeneroToFilme < ActiveRecord::Migration[5.2]
  def change
    add_reference :filmes, :genero, foreign_key: true
  end
end
