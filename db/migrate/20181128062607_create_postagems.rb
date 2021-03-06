class CreatePostagems < ActiveRecord::Migration[5.2]
  def change
    create_table :postagems do |t|
      t.string :titulo
      t.text :conteudo
      t.string :imagem
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
