class CreateCinemas < ActiveRecord::Migration[5.2]
  def change
    create_table :cinemas do |t|
      t.string :nome
      t.string :endereco
      t.string :imagem
      t.string :fachada
      t.string :lat
      t.string :long
      t.references :cidade, foreign_key: true

      t.timestamps
    end
  end
end
