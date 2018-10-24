class CreateFilmes < ActiveRecord::Migration[5.2]
  def change
    create_table :filmes do |t|
      t.integer :cd_filme
      t.string :nome
      t.integer :ano
      t.string :diretor
      t.string :categoria
      t.string :sinopse
      t.string :imagem

      t.timestamps
    end
  end
end
